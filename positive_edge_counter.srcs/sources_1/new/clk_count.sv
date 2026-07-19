`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2026 12:09:46 AM
// Design Name: 
// Module Name: clk_count
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


module clk_count(
input logic clk, reset,
output integer count
    );
    
    always@(posedge clk or negedge reset) begin
    if (!reset)
    count<=0;
    else
    count<=count+1;
    end
endmodule
