`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2023 16:11:12
// Design Name: 
// Module Name: proc_tb
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


module proc_tb();
reg rst;
reg clk;
proc uut(rst, clk);
initial begin  
           clk = 0;
           rst=0;
           forever #10 clk = ~clk;  
      end  
      initial begin  
           // Initialize Inputs  
           //$monitor ("register 3=%d, register 4=%d", reg3,reg4); 
           #20 
           rst = 1;  
           // Wait 100 ns for global reset to finish  
           #20;  
     rst = 0; 
     
      
           // Add stimulus here  
      end 
endmodule
