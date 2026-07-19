`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2026 12:10:15 AM
// Design Name: 
// Module Name: clk_counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_counter_tb();
logic clk, reset;
integer count;

clk_count dut(
 .clk(clk), .reset(reset),
.count(count)
    );
    
    always  #5 clk=~clk;
    
    initial begin
    
    clk=0; reset=0; #5;
    reset=1; #100;  
   reset=0; #5;
  reset=1; #100;
              $finish;
              
              end
    initial begin
      $monitor("Time=%0t | clk=%b | reset=%b | Pos clk cycles =%d",
                                       $time, clk,reset, count);
      $dumpfile("clk_counter.vcd");
      $dumpvars(0, clk_counter_tb);
    end
endmodule
