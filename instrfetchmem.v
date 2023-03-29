`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2023 14:53:13
// Design Name: 
// Module Name: instrfetchmem
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


module instrfetchmem(
    input clk,
    input rst,
    output [31:0] instr

    );
    
    reg [31:0] pc;
    initial pc=0;
    
    instrmem im0(pc,rst,instr);
    
    always @(posedge clk,posedge rst) begin
        if (rst==1)
            pc=0;
        else
            pc=pc+4;
   end
    
endmodule
