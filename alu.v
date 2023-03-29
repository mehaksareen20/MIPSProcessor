`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2023 15:41:06
// Design Name: 
// Module Name: alu
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


module alu(

    input [31:0] i1,
    input [31:0] i2,
    input [2:0] aluop,
    input clk,
    output reg [31:0] o

    );
    
    always @(clk) begin
        case(aluop)
            3'b100 : o = i1 + i2;
            3'b101 : o = i1 - i2;
            3'b110 : o = i1 & i2;
            3'b111 : o = i1 | i2;
            3'b000 : o = i1 << i2;
            3'b001 : o = i1 >> i2;
        endcase
     end 
            
    
endmodule
