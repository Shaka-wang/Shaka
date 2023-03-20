module fifo_ctrl(
    
input	wire    		clk	,	 		//时钟信号
input	wire    		reset_n	, 		//复位信号
input	wire [7:0]   	data ,			//ADC_采样数据	 
input	wire    		data_en ,		//ADC数据有效信号
input	wire			data_vld ,		//串口发送工作信号	 
output	wire  [7:0]		fifo_out , 		//串口发送数据 
output	reg				tx_en ,			//发送数据使能	 
input	wire [1:0]		depth_data ,    //采样深度
input	wire			adc_en,			//ADC工作使能
output	reg				over,			//当前采样完成信号 
output	reg				fifo_working	//fifo工作信号

 );

wire		[14:0]		wrusedw;	/*synthesis keep*/
reg			[1:0]		state_a;
reg			[1:0]		state_b;
reg						re;			/*synthesis keep*/
reg						we;			/*synthesis keep*/
reg						adc_finish;
reg			[1:0]		adc_state;
reg			[3:0]		depth;		/*synthesis keep*/

always@(posedge clk or negedge reset_n)
if(!reset_n)
begin
	depth<=4'd0;
end
else
begin
	case(depth_data)
    2'd1:begin
    	depth<=4'd1;
    end
    2'd2:begin
    	depth<=4'd5;
    end
    2'd3:begin
    	depth<=4'd10;
    end
    endcase
end


always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
    	we<=1'b0;
        state_a<=2'd0;
        state_b<=2'd0;
        re<=1'b0;
        tx_en<=1'b0;     
    end
    else
    begin
    case(state_a)
    2'd0:begin
    	if(!adc_finish)
        begin
		case(state_b)
				2'd0:begin
					if(data_en)
				    begin
				    	we<=1'b1;
				        state_b<=2'd1;
				    end
				    else
				    begin
				    	we<=1'b0;
				        state_b<=2'd0;
				    end
				end
				2'd1:begin
				 	if(!data_en)
				    begin
				    	we<=1'b0;
				        state_b<=2'd0;
				    end
				    else
				    begin
				    	we<=1'b0;
				        state_b<=2'd1;
				    end
				end 
        endcase
        end
        else
        begin
        	state_a<=2'd1;
        end
     end
     2'd1:begin
        if(data_vld&&(!empty_flag))
        begin
        	tx_en<=1'b1;
            re<=1'b1;
        end
        else if(empty_flag)
        begin	
            re<=1'b0;
            tx_en<=1'b0;
        	state_a<=2'd0;
        end
        else
        begin
        	re<=1'b0;
        	tx_en<=1'b0;
        end
    end	
    endcase 	
    end
end      

always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
    	adc_finish<=1'b0;
        adc_state<=2'd0;
        over<=1'b0;
    end
    else
    begin
    	case(adc_state)
        2'd0:begin
        	over<=1'b0;
        	adc_finish<=1'b0;
        	if(wrusedw>0)
            begin	
            	adc_state<=2'd1;
            end
            else
            begin
            	adc_state<=2'd0;
            end
        end
        2'd1:begin
        	if(wrusedw[14:11]==depth[3:0])
            begin
            	adc_finish<=1'b1;
                adc_state<=2'd2;
            end
            else
            begin
            	adc_finish<=1'b0;
                adc_state<=2'd1;
            end
        end
        2'd2:begin
        	if(empty_flag)
            begin
            	adc_state<=2'd0;
                over<=1'b1;
            end
            else
            begin
            	adc_state<=2'd2;
            end
        end
        endcase
   end
end
            
         


fifo  fifo_list(
.clk			(clk),
.rst			(!reset_n),
.di				(data),
.dout			(fifo_out),
.we				(we),
.re				(re),
.full_flag		(),
.empty_flag		(empty_flag),
.wrusedw		(wrusedw)
    
    );




endmodule
