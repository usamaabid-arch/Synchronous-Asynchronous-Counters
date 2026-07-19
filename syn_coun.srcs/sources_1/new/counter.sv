`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 05:15:39 PM
// Design Name: 
// Module Name: counter
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


//module counter(
//input logic j, clk, rest,
//output  logic q0,q1,q2,q3
//    );

//    always_ff @(posedge clk or negedge rest) begin
//            if (!rest) begin
//                q0 <= 0;  q1 <= 0;  q2 <= 0;  q3 <= 0;  
//                end
//             else begin
//                       q0 <= ~q0;   //toggle on each clock
//                       q1 <= q1 ^ q0;   //toggle on q0 toggle
//                       q2 <= q2 ^ (q0 & q1);    //toggle on q0 and q1 will be 1
//                       q3 <= q3 ^ (q0 & q1 & q2);   //toggle on q0 and q1 and q2  will be 1
//                   end
//end
//endmodule

//          //Asysnchronous counter


//module counter(
//input logic j, clk, rest,
//output logic q0,q1,q2,q3
//    );
    
//   always_ff @(posedge clk or negedge rest) begin
//        if (!rest)
//            q0 <= j;
//        else
//            q0 <= ~q0;
//    end
    
//    always_ff @(posedge q0 or negedge rest) begin  //F=50MHZ   20ns
//        if (!rest)
//            q1 <= 0;
//        else
//            q1 <= ~q1;
//    end
    
//    always_ff @(posedge q1 or negedge rest) begin //   f=25 MHz (40 ns period)
//        if (!rest)
//            q2 <= 0;
//        else
//            q2 <= ~q2;
//    end
    
//    always_ff @(posedge q2 or negedge rest) begin  //F=12.5MHZ   MEANS repeat after 
//        if (!rest)
//            q3 <= 0;
//        else
//            q3 <= ~q3;
//    end
    
//    endmodule




///     counter Given sequence counts 0, 2, 4, 6, 1, 3, 5, 7…. Repeat 


 
 
module counter(
input logic j, clk, rest,
output logic q0,q1,q2,q3
    );
     
 always_ff @(posedge clk or negedge  rest) begin
        if (!rest)
            {q3,q2,q1,q0} <= 4'b0000;
        else begin
                   q0 <= ~q0;
        q1 <= q1 ^ q0;
        q2 <= q2 ^ (q1 & q0);
        q3 <= 1'b0;
        end
    end
    
    
    endmodule
    