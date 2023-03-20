//*************************************************************/
//   Author: Shaka
//	 FPGA：EG4S20NG88
//	 ADC：ADC0809CCN
//	 IDE：TD_5.6.1_53426
//	 CLK：24Mhz
//   UART_BPS：512000
//
//*************************************************************/

module top(
input				clk_in			/*synthesis keep*/,
input				reset_n,
input				key_in		/*synthesis keep*/,
input				uart_rxd	/*synthesis keep*/,
output				uart_txd	/*synthesis keep*/,

input	wire [7:0]	data_in		/*synthesis keep*/,
input				eoc			/*synthesis keep*/,
output				oe			/*synthesis keep*/,
output				adc_clk		/*synthesis keep*/,
output				start		/*synthesis keep*/,	
output				ale			//器件上暂时没有用到该信号		

 );

wire			[7:0]				uart_data;
wire			[7:0]				fifo_out;
wire			[7:0]				data;
wire								over;
wire								out_en;
wire			[1:0]				depth_data;
reg									type_reset_n;//synthesis keep
reg				[3:0]				cnt;//synthesis keep


always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
   		type_reset_n<=1'b0;
    end
    else if(over)
    begin
   		type_reset_n<=1'b0;
    end
    else
    begin
    	type_reset_n<=1'b1;
    end
end 

pll  pll_list(
.refclk			(clk_in),  
.reset			(!reset_n),    
.extlock		(), 
.clk0_out		(),
.clk2_out		(clk)    
    
    
    );



uart_rx  rx(
.clk			(clk),       
.reset_n		(reset_n),   
.uart_rxd		(uart_rxd),  
.data_rx		(uart_data), 
.data_valid 	(valid) 
        
    );

  
    
uart_tx  tx(
.clk			(clk),       
.reset_n		(reset_n),   
.uart_txd		(uart_txd),  
.uart_data		(fifo_out), 
.data_vld		(data_vld),
.tx_en 			(out_en)     
    
    );

    
adc_ctrl adc(
.clk			(clk),
.adc_clk		(adc_clk),
.rst_n			(reset_n), 
.adc_en			(adc_en),	
.data_in		(data_in),
.start			(start),	
.ale			(ale),	
.eoc			(eoc),	
.oe				(oe),		
.data			(data),	
.data_en		(data_en) 
    
    );
 
 
 
fifo_ctrl fifo_list(
.clk			(clk),
.reset_n		(reset_n),
.data			(data),
.data_en		(data_en),
.fifo_out		(fifo_out),
.tx_en			(out_en),
.depth_data		(depth_data),
.adc_en			(adc_en),
.data_vld		(data_vld),
.over			(over),
.fifo_working	(fifo_working)
    
    );
 

    
type_choice type(
.clk			(clk),
.reset_n		(type_reset_n),
.valid			(valid),
.key			(key),
.uart_data		(uart_data),
.depth			(depth_data),
.adc_clk		(adc_clk),
//.condition		(condition),
.adc_en			(adc_en)
//.fifo_working	(fifo_working)
    
    );

anjian  anjian_list(
    	
.Clk			(clk_in), 		
.nRst			(reset_n),	
.nSWIN			(key_in),	
.nSWOUT			(key)

);    
 
endmodule
