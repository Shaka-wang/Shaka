module fifo_wr_ctrl(
	
	input 	wire 					clk,
	input 	wire 					rst_n,
	input 	wire 					set_done,
	input 	wire 		[7:0]		receive_time,
	input 	wire 					ad_done,
	
	output 	reg  					fifo_wr_en
);

	reg 		[7:0]			cnt;
	reg 						state;
	reg 		[7:0]			times;

	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			begin
				fifo_wr_en <= 1'b0;
				cnt <= 8'd0;
				state <= 1'd0;
				times <= 8'd0;
			end
		else
			case(state)
				1'd0	:	begin
								if(set_done)
									begin
										state <= 1'd1;
										times <= receive_time;
									end
								else
									state <= 1'd0;
							end
				1'd1	:	begin
								if(cnt == times)
									begin
										fifo_wr_en <= 1'b0;
										state <= 1'd0;
										cnt <= 8'd0;
									end
								else if(ad_done)
									begin
										fifo_wr_en <= 1'b1;
										state <= 1'd1;
										cnt <= cnt + 1'b1;
									end
								else
									begin
										fifo_wr_en <= 1'b0;
										state <= 1'b1;
										cnt <= cnt;
									end
							end
			endcase
	end

endmodule
