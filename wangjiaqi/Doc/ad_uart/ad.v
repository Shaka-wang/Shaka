`timescale 1ns / 1ps

module ad(
  
  input   wire          clk,
  input   wire          rst_n,
  
  output  reg           ad_clk,
  output  reg           ad_cs_n,
  input   wire          ad_data,
  
  output  reg    [7:0]  data,
  output  wire 			ad_done
);

  parameter   t = 1300;

  reg     [10:0]    cnt;
  reg     [7:0]     data_temp;
  
  always @ (posedge clk, negedge rst_n)
  begin
    if(rst_n == 1'b0)
      cnt <= 11'd0;
    else if(cnt == t - 1)
      cnt <= 11'd0;
    else
      cnt <= cnt + 1'b1;
  end
  
  always @ (posedge clk, negedge rst_n)
  begin
    if(rst_n == 1'b0)
      begin
        ad_clk <= 1'b0;
        ad_cs_n <= 1'b1;
        data_temp <= 8'd0;
        data <= 8'd0;
      end
    else
      case(cnt)
        0   : begin ad_cs_n <= 1'b0; ad_clk <= 1'b0; end
        74  : begin ad_clk <= 1'b1; data_temp[7] <= ad_data; end
        99  : begin ad_clk <= 1'b0; end
        124 : begin ad_clk <= 1'b1; data_temp[6] <= ad_data; end
        149 : begin ad_clk <= 1'b0; end
        174 : begin ad_clk <= 1'b1; data_temp[5] <= ad_data; end
        199 : begin ad_clk <= 1'b0; end
        224 : begin ad_clk <= 1'b1; data_temp[4] <= ad_data; end
        249 : begin ad_clk <= 1'b0; end
        274 : begin ad_clk <= 1'b1; data_temp[3] <= ad_data; end
        299 : begin ad_clk <= 1'b0; end
        324 : begin ad_clk <= 1'b1; data_temp[2] <= ad_data; end
        349 : begin ad_clk <= 1'b0; end
        374 : begin ad_clk <= 1'b1; data_temp[1] <= ad_data; end
        399 : begin ad_clk <= 1'b0; end
        424 : begin ad_clk <= 1'b1; data_temp[0] <= ad_data; end
        449 : begin ad_clk <= 1'b0; ad_cs_n <= 1'b1; end
        1299: begin data <= data_temp; end
        default : ;
      endcase
  end
  
  assign ad_done = (cnt == t - 1) ? 1'b1 : 1'b0;
  
endmodule
