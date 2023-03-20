/************************************************************\
 **     Copyright (c) 2012-2023 Anlogic Inc.
 **  All Right Reserved.\
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	G:/wangjiaqi/Prj/al_ip/pll.v
 ** Date	:	2023 03 10
 ** TD version	:	5.6.69102
\************************************************************/

///////////////////////////////////////////////////////////////////////////////
//	Input frequency:             24.000MHz
//	Clock multiplication factor: 5
//	Clock division factor:       2
//	Clock information:
//		Clock name	| Frequency 	| Phase shift
//		C0        	| 60.000000 MHZ	| 0  DEG     
//		C2        	| 127.500000MHZ	| 0  DEG     
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 100 fs

module pll (
  refclk,
  reset,
  extlock,
  clk0_out,
  clk2_out 
);

  input refclk;
  input reset;
  output extlock;
  output clk0_out;
  output clk2_out;

  wire clk0_buf;

  EG_LOGIC_BUFG bufg_feedback (
    .i(clk0_buf),
    .o(clk0_out) 
  );

  EG_PHY_PLL #(
    .DPHASE_SOURCE("DISABLE"),
    .DYNCFG("DISABLE"),
    .FIN("24.000"),
    .FEEDBK_MODE("NORMAL"),
    .FEEDBK_PATH("CLKC0_EXT"),
    .STDBY_ENABLE("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .SYNC_ENABLE("DISABLE"),
    .GMC_GAIN(0),
    .ICP_CURRENT(9),
    .KVCO(2),
    .LPF_CAPACITOR(2),
    .LPF_RESISTOR(8),
    .REFCLK_DIV(2),
    .FBCLK_DIV(5),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_DIV(17),
    .CLKC0_CPHASE(16),
    .CLKC0_FPHASE(0),
    .CLKC2_ENABLE("ENABLE"),
    .CLKC2_DIV(8),
    .CLKC2_CPHASE(7),
    .CLKC2_FPHASE(0) 
  ) pll_inst (
    .refclk(refclk),
    .reset(reset),
    .stdby(1'b0),
    .extlock(extlock),
    .load_reg(1'b0),
    .psclk(1'b0),
    .psdown(1'b0),
    .psstep(1'b0),
    .psclksel(3'b000),
    .psdone(open),
    .dclk(1'b0),
    .dcs(1'b0),
    .dwe(1'b0),
    .di(8'b00000000),
    .daddr(6'b000000),
    .do({open, open, open, open, open, open, open, open}),
    .fbclk(clk0_out),
    .clkc({open, open, clk2_out, open, clk0_buf}) 
  );

endmodule

