module uart_tx(
	
	input 	wire 						clk,
	input 	wire 						rst_n,
	
	input 	wire 						empty,
	input 	wire 		[7:0]			fifo_data_out,
	output 	wire 						fifo_rd_en,
	
	output 	reg 						TXD
);

	parameter 	f_clk = 50_000_000;
	parameter 	baud = 9600;
	parameter 	t = f_clk / baud;
	parameter	N = 1;			//¼ÄĞ£Ñé
	
	reg 	[12:0]		cnt;
	reg 				flag;
	reg 	[3:0]		num;
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			cnt <= 13'd0;
		else if(flag)
			begin
				if(cnt == t - 1)
					cnt <= 13'd0;
				else
					cnt <= cnt + 1'b1;
			end
		else
			cnt <= 13'd0;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			flag <= 1'b0;
		else if(empty == 1'b0)
			flag <= 1'b1;
		else if(num == 4'd11)
			flag <= 1'b0;
		else
			flag <= flag;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			num <= 4'd0;
		else if(cnt == t / 2 - 1)
			num <= num + 1'b1;
		else if(num == 4'd11)
			num <= 4'd0;
		else
			num <= num;
	end
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			TXD <= 1'd1;
		else if(cnt == t / 2 - 1)
			case(num)
				4'd0	:	TXD <= 1'b1;
				4'd1	:	TXD <= fifo_data_out[0];
				4'd2	:	TXD <= fifo_data_out[1];
				4'd3	:	TXD <= fifo_data_out[2];
				4'd4	:	TXD <= fifo_data_out[3];
				4'd5	:	TXD <= fifo_data_out[4];
				4'd6	:	TXD <= fifo_data_out[5];
				4'd7	:	TXD <= fifo_data_out[6];
				4'd8	:	TXD <= fifo_data_out[7];
				4'd9	:	TXD <= (^fifo_data_out) & N;
				4'd10	:	TXD <= 1'b1;
				default	:	TXD <= 1'b1;
			endcase
		else
			TXD <= TXD;
	end
	
	assign fifo_rd_en = (num == 4'd11) ? 1'b1 : 1'b0;
	
endmodule
