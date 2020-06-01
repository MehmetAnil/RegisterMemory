`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2020 17:08:09
// Design Name: 
// Module Name: testbenchreg
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


module testbenchreg();
    reg clk;
    reg we3;
    reg [3:0] a3; //Write Data Adress
    reg [31:0] wd3; //Write Data
    reg [3:0] a1; //Read 1 adress
    reg [3:0] a2; //Read 2 adress
    reg [31:0] rd1; //Read 1 data
    reg [31:0] rd2; //Read 2 data
    
    reg [31:0] regfile [15:0];
    
    register test(.clk(clk),.we3(we3),.a3(a3),.wd3(wd3),.a1(a1),.a2(a2),.rd1(rd1),.rd2(rd2),.regfile(regfile));
    initial
     begin
        clk = 0;
        forever #10 clk = !clk; // 10 ns'de bir clock sinyali veriyor
     end
     
     initial 
     begin
     clk=1;
     we3=0;
     a1=4'b0;
     a2=4'b0;
     a3=4'b0;
     wd3=32'b0;
     rd1=4'b0;
         
     a3 = 4'b0001; we3 = 0; wd3=32'b010;  #20;
     a1 = 4'b0100; a3 = 4'b1001; we3 = 1; wd3=32'b110;  #20;
     a1 = 4'b1001; a3=4'b1110; we3=1; wd3=32'b1001; #20;
     a2 = 4'b1110; 
     end
    
    
endmodule
