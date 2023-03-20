module uart_rx(
	
	input 	wire 					clk,
	input 	wire 					rst_n,
	input 	wire 					RXD,
	
	output 	reg 		[7:0]		data,
	output 	reg 					data_valid
);
	
	parameter 	f_clk = 50_000_000;
	parameter 	baud = 9600;
	parameter 	t = f_clk / baud / 16;
	parameter	N = 1;			//¼ÄĞ£Ñé
	
	reg 		[8:0]				baud_cnt;
	reg 		[11:0]				start_cnt;
	reg 							rxd_r, rxd_rr;
	reg 							rx_en;
	reg 							rx_done;
	reg 		[7:0]				cap_cnt;
	reg 		[151:0]				cap_buf;
	reg 		[8:0]				rx_data;
	reg 		[8:0]				rx_error;
	reg 							rx_done_r;
	
	always @ (posedge clk) rxd_r <= RXD;
	always @ (posedge clk) rxd_rr <= rxd_r;
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			start_cnt <= 12'd0;
		else if(rx_en == 1'b0 && rxd_rr == 1'b0)
			start_cnt <= start_cnt + 1'b1;
		else if(start_cnt == 8 * t - 1)
			start_cnt <= 12'd0;
		else
			start_cnt <= 12'd0;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			rx_en <= 1'b0;
		else if(start_cnt == 8 * t - 1)
			rx_en <= 1'b1;
		else if(rx_done)
			rx_en <= 1'b0;
		else
			rx_en <= rx_en;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			rx_done <= 1'b0;
		else if(cap_cnt == 8'd152)
			rx_done <= 1'b1;
		else
			rx_done <= 1'b0;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			cap_cnt <= 8'd0;
		else if(baud_cnt == t - 1)
			cap_cnt <= cap_cnt + 1'b1;
		else if(cap_cnt == 8'd152)
			cap_cnt <= 8'd0;
		else
			cap_cnt <= cap_cnt;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			baud_cnt <= 9'd0;
		else if(rx_en)
			begin
				if(baud_cnt == t - 1)
					baud_cnt <= 9'd0;
				else
					baud_cnt <= baud_cnt + 1'b1;
			end
		else
			baud_cnt <= 9'd0;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			cap_buf <= 152'd0;
		else if(baud_cnt == t - 1)
			cap_buf <= {cap_buf[150:0],rxd_rr};
		else
			cap_buf <= cap_buf;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			begin
				rx_data <= 9'd0;
				rx_error <= 9'd0;
			end
		else if(rx_done)
			begin
				{rx_data[8],rx_error[8]} <= decoder(cap_buf[10:5]);
				{rx_data[7],rx_error[7]} <= decoder(cap_buf[26:21]);
				{rx_data[6],rx_error[6]} <= decoder(cap_buf[42:37]);
				{rx_data[5],rx_error[5]} <= decoder(cap_buf[58:53]);
				{rx_data[4],rx_error[4]} <= decoder(cap_buf[74:69]);
				{rx_data[3],rx_error[3]} <= decoder(cap_buf[90:85]);
				{rx_data[2],rx_error[2]} <= decoder(cap_buf[106:101]);
				{rx_data[1],rx_error[1]} <= decoder(cap_buf[122:117]);
				{rx_data[0],rx_error[0]} <= decoder(cap_buf[138:133]);
			end
		else
			begin
				rx_data <= rx_data;
				rx_error <= rx_error;
			end
	end
	
	function 	[1:0] 	decoder;
	
		input 	wire 	[5:0]	cap_data;
		
		reg 	[3:0]		num;
		
		begin
			num = cap_data[5] + cap_data[4] + cap_data[3] + cap_data[2] + cap_data[1] + cap_data[0];
			decoder[1] = (num == 4'd6) ? 1'b1 : 1'b0;
			decoder[0] = (num == 4'd6 || num == 4'd0) ? 1'b0 : 1'b1;
		end
	endfunction
	
	always @ (posedge clk)	rx_done_r <= rx_done;
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			begin
				data <= 8'd0;
				data_valid <= 1'b0;
			end
		else if(rx_done_r && (&rx_error == 1'b0) && (^rx_data == N))
			begin
				data <= rx_data[7:0];
				data_valid <= 1'b1;
			end
		else
			begin
				data <= data;
				data_valid <= 1'b0;
			end
	end
	
endmodule
