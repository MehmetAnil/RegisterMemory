`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2020 17:07:38
// Design Name: 
// Module Name: register
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


module register(
    input clk,
    input we3,
    input [3:0] a3, //Write Data Adress
    input [31:0] wd3, //Write Data
    input [3:0] a1, //Read 1 adress
    input [3:0] a2, //Read 2 adress
    output [31:0] rd1, //Read 1 data
    output [31:0] rd2, //Read 2 data
    output reg [31:0] regfile [15:0]
    );
    
    assign rd1= regfile[a1];
    assign rd2= regfile[a2];
  
    always@(posedge clk)  begin
    if(we3)
    regfile[a3] <= wd3;
    end
   
    
endmodule
