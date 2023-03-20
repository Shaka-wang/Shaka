module decoder(
	
	input 	wire 						clk,
	input 	wire 						rst_n,
	input 	wire 						data_valid,
	input 	wire 		[7:0]			data,
	
	output 	reg 		[7:0]			receive_time,			//采样次数
	output 	reg 						set_done				//设置完成
);
	
	parameter 	START	=	8'b1010_1010;
	parameter 	M		=	8'd77;
	parameter 	C		= 	8'd67;
	parameter 	D		= 	8'd68;
	parameter 	T		= 	8'd84;
	parameter 	STOP	= 	8'b0101_0101;
	
	reg 		[2:0]		state;
	reg 		[7:0]		sum;
	reg 					flag;
	
	always @ (posedge clk, negedge rst_n)
	begin
		if(rst_n == 1'b0)
			begin
				state <= 3'd0;
				sum <= START + STOP;
				set_done <= 1'b0;
				receive_time <= 8'd0;
				flag <= 1'b0;
			end
		else
			case(state)
				3'd0	:	begin
								set_done <= 1'b0;
								if(data_valid && (data == START))
									state <= 3'd1;
								else
									state <= 3'd0;
							end
				3'd1	:	begin
								if(data_valid && (data == M))
									begin
										state <= 3'd2;
										sum <= sum + M;
									end
								else
									begin
										state <= 3'd1;
										sum <= sum;
									end
							end
				3'd2	:	begin
								if(data_valid && (data == C))
									begin
										state <= 3'd3;
										sum <= sum + C;
									end
								else if(data == D)
									begin
										state <= 3'd4;
										sum <= sum + D;
									end	
								else
									begin
										state <= 3'd2;
										sum <= sum;
									end
							end
				3'd3	:	begin
								if(data_valid && (data == T))
									begin
										state <= 3'd5;
										sum <= sum + T;
									end
								else
									begin
										state <= 3'd3;
										sum <= sum;
									end
							end
				3'd4	:	begin
								if(data_valid)	
									begin
										state <= 3'd5;
										sum <= sum + data;
										receive_time <= data;
										flag <= 1'b1;
									end
								else
									begin
										state <= 3'd4;
										sum <= sum;
										receive_time <= receive_time;
										flag <= flag;
									end
							end
				3'd5	:	begin
								if(data_valid && (data == sum))
									state <= 3'd6;
								else
									begin
										state <= 3'd5;
										sum <= sum;
									end
							end
				3'd6	:	begin
								if(data_valid && (data == STOP))
									begin
										if(data == STOP)
											begin
												state <= 3'd0;
												sum <= START + STOP;
												flag <= 1'b0;
												if(flag)
													set_done <= 1'b1;
												else
													set_done <= 1'b0;
											end
										else
											begin
												set_done <= 1'b0;
												state <= 3'd0;
												flag <= 1'b0;
												sum <= START + STOP;
											end
									end
								else
									begin
										state <= 3'd6;
										sum <= sum;
										flag <= flag;
										set_done <= 1'b0;
									end
							end
			endcase
	end
	
endmodule
