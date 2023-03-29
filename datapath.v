`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2023 15:26:04
// Design Name: 
// Module Name: datapath
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


module datapath(
    input [4:0] regsrc1,
    input [4:0] regsrc2,
    input [4:0] regdst,
    input [31:0] wrtdata,
    input clk,
    input rst,
    output [31:0] regdat1,
    output [31:0] regdat2

    );
    
    reg [31:0] regmem [31:0];
    
    assign regdat1 = regmem[regsrc1];
    assign regdat2 = regmem[regsrc2];
    
    always @(posedge clk) begin
        regmem[regdst]=wrtdata;
    end
    
endmodule
