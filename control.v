`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2023 15:47:38
// Design Name: 
// Module Name: control
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


module control(
    input [31:0] instr,
    output wrtsrc,
    output alusrc,
    output [2:0] aluop

    );
    
    assign wrtsrc = ~instr[31];
    assign alusrc = ~instr[5];
    assign aluop  = {instr[5],instr[2],instr[1] | instr[0]};
endmodule
