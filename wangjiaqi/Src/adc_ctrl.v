//*************************************************************/
//
//   ADC:ADC0809CCN
//	 VREF:5V
//	 通道选择：IN3
//	 数据输出:[D7~D0]
//	 信号介绍：start:采样开始信号
//			  clk:工作时钟信号
//			  ale：信号所存使能
//			  eoc：数据转换完成
//			  oe：输出允许
//  		  ABC=000   第一通道
//			  
//
//*************************************************************/

module adc_ctrl(
input    wire			clk,			//128Mhz
input	 wire   		adc_clk, 		//adc驱动时钟 
input	 wire   		rst_n ,			//复位  

input	 wire			adc_en,			//采样开始信号
input	 wire  [7:0]	data_in,		//ADC采样数据
output	 reg			start,			//采样开始信号
output	 reg			ale,			//信号所存使能
input	 wire			eoc,			//数据转换完成信号
output   reg			oe,				//输出允许
output	 reg   [7:0]	data,			//adc的数据
output   reg			data_en			//输出数据有效
);

parameter    	IDLE         	= 3'd0,
           		ALE             = 3'd1,
           		START_P    	 	= 3'd2,
           		START_N     	= 3'd3,
           		CHECK_EOC_P 	= 3'd4,
           		CHECK_EOC_N 	= 3'd5,
           		OE             	= 3'd6,
           		SEND_DATA   	= 3'd7;
 



reg 			[2:0] 		state;//synthesis keep
reg							clk_adc;

always@(posedge  clk or negedge rst_n)
begin
	if(!rst_n)
   begin
   	clk_adc<=1'b0;
   end
   else if(adc_en)
   begin
   	clk_adc<=adc_clk;
   end
   else
   begin
   	clk_adc<=1'b0;
   end
end
 
 
 
always @(posedge clk_adc or negedge rst_n)
if(!rst_n) begin
    start <= 1'b0;
    oe <= 1'b0;
    state <= IDLE;
end
else 
    case(state)
    IDLE: begin
        start <= 1'b0;
        oe <= 1'b0;
        state <= ALE;
    end
    
    ALE: begin
        ale <= 1'b1;
        start <= 1'b0;
        state <= START_P;
    end
    
    START_P: begin
        ale <= 1'b0;//1
        start <= 1'b1;
        state <= START_N;
    end
    
    START_N: begin
        ale <= 1'b0;
        start <= 1'b0;
        state <= CHECK_EOC_P;
    end
    
    CHECK_EOC_P: begin
        if(eoc == 1'b1)
            state = CHECK_EOC_P;
        else
            state = CHECK_EOC_N;//检测到了低电平，说明开始转换
    end

    CHECK_EOC_N: begin
        if(eoc == 1'b0)
            state <= CHECK_EOC_N;//等待转换的结束
        else
            state <= OE;
    end
    
    OE: begin
        oe <= 1'b1;
        state <= SEND_DATA;
    end
    
    SEND_DATA: begin
        state <= IDLE;
    end
    
    default: begin
        ale <= 1'b0;
        start <= 1'b0;
        oe <= 1'b0;
        state <= IDLE;
    end
endcase

	
reg		[9:0]		en_cnt;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
    begin
        data_en<=1'b0;
        en_cnt<=9'd0;
    end
    else  
    begin
    	data[7:0]<=data_in[7:0];
    	if((oe==1)&&(en_cnt==9'd60))
        begin
        	data_en<=1'b1;
            en_cnt<=9'd0;
        end
      	else if(!oe)
        begin
        	data_en<=1'b0;
            en_cnt<=3'd0;
        end
        else
        begin
        	en_cnt<=en_cnt+1'b1;
            data_en<=1'b0;
        end
    end
end


    
endmodule