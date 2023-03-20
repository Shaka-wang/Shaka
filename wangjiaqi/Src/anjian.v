`timescale 1ns / 1ps
module anjian(
input							Clk, 			//为了保持滤波的可靠性，请选择50MHz的时钟
input							nRst,			//复位信号
input							nSWIN,			//按键输入
output	reg						nSWOUT			//按键输出
);

reg				[19:0]			Cnt;			//计数器
reg 							SW_MidR1;
reg 							SW_MidR2;
reg 							SW_Valid;

always@(posedge Clk or negedge nRst)
begin
	if(!nRst) 
	begin
		SW_MidR1 <= 1; 	// synchronize 1 clock 
		SW_MidR2 <= 1; 	// delay 1 clock
		SW_Valid <= 0; 	// gen negedge
	end
	else
	begin
		SW_MidR1 <= nSWIN;
		SW_MidR2 <= SW_MidR1;
		SW_Valid  <= SW_MidR2 & (~SW_MidR1);     //检测上升沿，上升沿检测信号
	end
end



always@(posedge Clk or negedge nRst) 
begin
	if(!nRst) 
	begin
		Cnt <= 0;
	end
	else if(SW_Valid)
	begin
		Cnt <= 0;
	end
	else
	begin
		Cnt <= Cnt + 1; //20ms
	end
end

always@(posedge Clk or negedge nRst)
begin
	if(!nRst) 
	begin
		nSWOUT <= 1;
	end
	else if(Cnt == 20'hfffff)
	begin
		nSWOUT <= nSWIN;
	end
end

endmodule