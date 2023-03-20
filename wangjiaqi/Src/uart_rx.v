module uart_rx(
input					clk,		//输入时钟信号
input					reset_n		/*synthesis keep*/,
input					uart_rxd	/*synthesis keep*/,
output	reg	  [7:0]		data_rx		/*synthesis keep*/,
output	reg				data_valid	/*synthesis keep*/

);

parameter			clk_cnt=128000000;
parameter			bps=512000;
parameter			turn_cnt=clk_cnt/bps-1;


reg					reg0;				//将信号线打一拍
reg					reg1;				//将信号线打两拍
wire				rx_begin;
reg	  	[7:0]		uart_data;
reg					valid;

always@(negedge clk or negedge reset_n)		//捕捉下降沿
begin
	if(!reset_n)
	begin	
		reg0<=1'b0;
		reg1<=1'b0;
	end
	else
	begin
		reg0<=uart_rxd;
		reg1<=reg0;
	end
end
assign 		rx_begin=~reg0&&reg1; 				//下降沿

reg		[3:0]		data_rxen;			//接收数据使能信号
reg		[10:0]		cnt;				//时钟边沿计数
reg		[3:0]		state;
reg					rx_en;	


always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
	begin
		data_rxen<=4'd0;
		cnt<=11'd0;
	end
	else	
	begin
		case(state)
		4'd0:begin
			valid<=1'b0;
			if(rx_begin)
			begin	
				state<=4'd1;
			end
			else
			begin
				state<=4'd0;
			end
		end
		4'd1:begin
			if((data_rxen==9)&&(cnt==turn_cnt))
			begin	
				data_rxen<=4'd0;
				cnt<=11'd0;
				valid<=1'b1;
				state<=4'd0;
			end
			else
			begin
				state<=4'd1;
				if(cnt==turn_cnt)
				begin
					data_rxen<=data_rxen+1'b1;
					cnt<=11'd0;
				end
				else
				begin
					cnt<=cnt+1'b1;
				end
			end
		end
		endcase
	end
end

always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
	begin
		uart_data<=8'd0;
	end
	else if(cnt==turn_cnt/2)
	begin
		case(data_rxen)
		4'd1:begin
			uart_data[0]<=uart_rxd;
		end
		4'd2:begin
			uart_data[1]<=uart_rxd;
		end
		4'd3:begin
			uart_data[2]<=uart_rxd;	
		end			
		4'd4:begin
			uart_data[3]<=uart_rxd;
		end			
		4'd5:begin
			uart_data[4]<=uart_rxd;
		end
		4'd6:begin
			uart_data[5]<=uart_rxd;
		end
		4'd7:begin
			uart_data[6]<=uart_rxd;
		end
		4'd8:begin
			uart_data[7]<=uart_rxd;
		end
		endcase
	end
end

always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
		data_rx<=8'd0;
        rx_en<=1'b0;
    end
    else if(valid)
    begin
    	data_rx[7:0]<=uart_data[7:0];
        rx_en<=1'b1;
    end
    else
    begin
    	rx_en<=1'b0;
    end
end    

always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
        data_valid<=1'b0;
    end
    else 
    begin
		data_valid<=rx_en;
    end
end   





	
endmodule	


