module uart_tx(
    
input	wire		clk,				//时钟信号24Mhz		
input	wire		reset_n,			//复位信号
output	reg		    uart_txd,			//串口发送数据
input	wire  [7:0]	uart_data,			//串口发送数据	
input	wire		tx_en,				//发送使能信号
output	reg  		data_vld			//发送空闲信号 		1:free   0:busy

 );

parameter  				    clk_num=128000000;		//24MHZ的时钟频率
parameter				    bps=512000;			//串口发送波特率
parameter	   				clk_max=clk_num/bps-1;
	
reg				[3:0]     	state_a;
reg				[3:0]     	state_b;
reg				[29:0]		clk_cnt;
reg							tx_state;


always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
    	state_a<=4'd0;
        state_b<=4'd0;
        clk_cnt<=30'd0;
    end
    else
    begin
    	case(state_a)
        4'd0:begin
        	if(tx_en)
            begin
            	state_a<=4'd1;
            end
            else
            begin	
            	state_a<=4'd0;
            end
        end
        4'd1:begin
        	if(state_b<4'hf)
            begin
            	if(clk_cnt==clk_max)
                begin
                	state_b<=state_b+1'b1;
                    clk_cnt<=30'd0;
                end
                else
                begin
                	clk_cnt<=clk_cnt+1'b1;
                end
            end
            else
            begin
            	state_b<=4'd0;
                state_a<=4'd0;
            end
            end
        endcase
    end
end
        	
always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin	
    	data_vld<=1'b1;
        tx_state<=1'b0;
        uart_txd<=1'bz;
    end
    else
    begin
    case(tx_state)
    1'b0:begin
    	data_vld<=1'b1;
    	if(tx_en)
        begin
        	tx_state<=1'b1;
            data_vld<=1'b0;
        end
        else
        begin
        	tx_state<=1'b0;
        end
    end
    1'b1:begin
    	case(state_b)
        4'd0:begin	uart_txd<=1'b0;  end
		4'd1:begin	uart_txd<=uart_data[0]; end 
		4'd2:begin	uart_txd<=uart_data[1]; end
		4'd3:begin	uart_txd<=uart_data[2]; end
		4'd4:begin	uart_txd<=uart_data[3]; end
		4'd5:begin	uart_txd<=uart_data[4]; end
		4'd6:begin	uart_txd<=uart_data[5]; end
		4'd7:begin	uart_txd<=uart_data[6]; end
		4'd8:begin	uart_txd<=uart_data[7]; end
        4'd9:begin  uart_txd<=1'b1; end
        4'hf:begin	tx_state<=1'b0;end
        default:;
    	endcase
    end
    endcase
	end
end



endmodule
