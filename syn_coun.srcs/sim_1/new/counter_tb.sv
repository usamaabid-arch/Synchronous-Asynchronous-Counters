`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 05:16:06 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();


logic j, clk, rest,q0,q1,q2,q3;
counter dut(.j(j), .clk(clk), .rest(rest), .q0(q0), .q1(q1), .q2(q2), .q3(q3)
    );
    
    
      // initial begin
        
         always #5 clk = ~clk; //100MHZ CLK   (10 ns period)
         
         initial begin
          clk=0; rest=0; #5;
         rest=1; #1000;  
           rest=0; #5;
          rest=1; #1000;
          $finish;
          end
          
initial begin
                $monitor("Time=%0t | clk=%b | rest=%b | q3 q2 q1 q0 =%b%b%b%b",
                         $time, clk,rest, q3, q2, q1, q0);
                //  $dumpfile("counter.vcd");
                //  $dumpvars(0, counter_tb);
              end

endmodule