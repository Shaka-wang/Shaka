//*************************************************************/
//
//   1、串口输入的数据为99_09_22三个信号作为工作状态选择条件,顺序为深度,频率,条件。
//	 2、采样条件：99=立即采样，09=电平采样，22=边沿采样
//	 3、采样深度：99=1K，09=5K，22=10K
//	 4、采样频率：99=500HZ，09=750HZ，22=1KHZ
//	 
// 
//*************************************************************/
module type_choice(
    
input	 wire   		clk	 , 
input	 wire   		reset_n ,
input	 wire			key,
input	 wire   		valid	,  
input	 wire  [7:0] 	uart_data,
output	 reg			adc_en,			//与start相关，的开始信号//（用）
output	 reg   [1:0]   	depth 			,	  
output	 reg   			adc_clk

  );

parameter	clk_number=24000000;		//24Mh的时钟的个数

reg			[7:0]		a;				//synthesis keep
reg			[7:0]		b;				//synthesis keep
reg			[7:0]		c;				//synthesis keep
reg						key_reg;
reg			[1:0]		state;			//串口接收状态
reg						state_a;
reg			[29:0]		clk_cnt;
reg						state_b;		//一次采样完成情况     


always@(negedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
    	a<=8'd0;
        b<=8'd0;
        c<=8'd0;
        state<=2'd0;
        state_b<=1'b0;
    end
    else 
    begin
    case(state_b)
   		 1'b0:begin
   		 if(valid)
   		 begin
			 case(state)
   		     2'd0:begin
                if((uart_data==8'h99)||(uart_data==8'h22)||(uart_data==8'h09))
                begin
   		     		c[7:0]<=uart_data[7:0];state<=2'd1;
   		        end
                else
                begin
                	state<=2'd0;
                end
             end
   		     2'd1:begin
                if((uart_data==8'h99)||(uart_data==8'h22)||(uart_data==8'h09))
                begin
   		     		b[7:0]<=uart_data[7:0];state<=2'd2;
   		        end
                else
                begin
                	state<=2'd0;
                end
   		         end
   		     2'd2:begin
                if((uart_data==8'h99)||(uart_data==8'h22)||(uart_data==8'h09))
                begin
   		     		a[7:0]<=uart_data[7:0];state<=2'd0;state_b<=1'b1;
   		        end
                else
                begin
                	state<=2'd0;
                end
   		     	end
		     endcase
   		 end
         end
         1'b1:begin
         			
         end
    endcase
    end
end		

always@(posedge clk or negedge reset_n)
begin
      if(!reset_n)
      begin
      	   adc_en<=1'b0;
           state_a<=1'b0;
	  end
      else 
      begin
      key_reg<=key;
      case(a)
          8'h99:begin		//立即采样
          	adc_en<=1'b1;
          end
          8'h09:begin		//电平
          	adc_en<=~key;
          end
          8'h22:begin		//
              	if(~key_reg&&key)
                  begin
                  	adc_en<=1'b1;
                    state_a<=1'b1;
                  end
                  else
                  begin
                  	adc_en<=adc_en;
                  end
              end
          default:adc_en<=1'b0;	
       endcase
       end
end     
            	
always@(posedge clk or negedge reset_n)
begin
	if(!reset_n)
    begin
    	depth<=2'd0;
    end
    else
    begin
    	case(b)
        8'h99:begin
        	depth<=2'd1;		 	//1k
            end
        8'h09:begin					//5k
        	depth<=2'd2;
            end
        8'h22:begin					//10k
        	depth<=2'd3;
            end
        default:begin
           	depth<=2'd0;
        end	
        endcase
    end
end

always@(posedge clk or negedge reset_n)   //50mhz   50000000周期 >> 500
begin
	if(!reset_n)
    begin
    	adc_clk<=1'b0;
        clk_cnt<=30'd0;
    end
    else
    begin   
    	case(c)
        8'h99:begin
        	if(clk_cnt==((clk_number/250000)-1))			//500
            begin
            	adc_clk<=!adc_clk;
                clk_cnt<=30'd0;
            end
            else
            begin
            	clk_cnt<=clk_cnt+1'b1;
         	end
        end
        8'h09:begin					//5k
        	if(clk_cnt==((clk_number/375000)-1))			//750
            begin
            	adc_clk<=!adc_clk;
                clk_cnt<=30'd0;
            end
            else
            begin
            	clk_cnt<=clk_cnt+1'b1;
         	end
        end
        8'h22:begin					//10k
        	if(clk_cnt==((clk_number/500000)-1))			//1000
            begin
            	adc_clk<=!adc_clk;
                clk_cnt<=30'd0;
            end
            else
            begin
            	clk_cnt<=clk_cnt+1'b1;
         	end
         end
         default:begin
           	clk_cnt<=1'b0;
         end	
        endcase
    end
end
    	



endmodule




