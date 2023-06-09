module ad_uart(

	input 	wire 					clk,
	input 	wire 					rst_n,
	
	input 	wire 					RXD,
	output 	wire 					TXD,
	
	input 	wire 		 			ad_data,
	output 	wire 					ad_clk,
	output 	wire 					ad_cs_n
);
	
	wire 		[7:0]			data;
	wire 		[7:0]			rx_data;
	wire 						data_valid;
	wire 		[7:0]			receive_time;
	wire 						set_done;
	wire 						fifo_wr_en;
	wire 						empty;
	wire 		[7:0]			fifo_data_out;
	wire 						fifo_rd_en;
	wire 						ad_done;
	
	ad ad_inst(
  
  .clk				(clk),
  .rst_n			(rst_n),
  
  .ad_clk			(ad_clk),
  .ad_cs_n			(ad_cs_n),
  .ad_data			(ad_data),
  
  .data				(data),
  .ad_done			(ad_done)
);
	
	uart_rx uart_rx_inst(
	
	.clk			(clk),
	.rst_n			(rst_n),
	.RXD			(RXD),
	
	.data			(rx_data),
	.data_valid		(data_valid)
);

	decoder decoder_inst(
	
	.clk			(clk),
	.rst_n			(rst_n),
	.data_valid		(data_valid),
	.data			(rx_data),
	
	.receive_time	(receive_time),			//��������
	.set_done		(set_done)				//��������
);
	
	fifo_wr_ctrl fifo_wr_ctrl_inst(
	
	.clk			(clk),
	.rst_n			(rst_n),
	.set_done		(set_done),
	.receive_time	(receive_time),
	.ad_done		(ad_done),
	
	.fifo_wr_en		(fifo_wr_en)
);

	uart_tx uart_tx_inst(
	
	.clk			(clk),
	.rst_n			(rst_n),
	
	.empty			(empty),
	.fifo_data_out	(fifo_data_out),
	.fifo_rd_en		(fifo_rd_en),
	
	.TXD			(TXD)	
);
/*
	my_fifo my_fifo_inst (
  .clk(clk),      // input wire clk
  .din(data),      // input wire [7 : 0] din
  .wr_en(fifo_wr_en),  // input wire wr_en
  .rd_en(fifo_rd_en),  // input wire rd_en
  .dout(fifo_data_out),    // output wire [7 : 0] dout
  .full(),    // output wire full
  .empty(empty)  // output wire empty
);
*/
	my_fifo	my_fifo_inst (
	.clock ( clk ),
	.data ( data ),
	.rdreq ( fifo_rd_en ),
	.wrreq ( fifo_wr_en ),
	.empty ( empty ),
	.full (  ),
	.q ( fifo_data_out )
	);
	
endmodule
