`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 16:00:57
// Design Name: 
// Module Name: main_tb
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


module tb_main(
);
reg clk;
reg rst;
reg [1:0] money;
wire coffee;
wire [1:0] balance;

main dut( clk, rst, money, coffee, balance);
initial clk=1'b0;
always
begin
#200 clk = ~clk; 
end 

initial
begin
rst = 1'b1;
#100 rst = 1'b0;
money = 2'b00; // putting 25ps four times to get coffee
#400 money = 2'b01; //putting 50ps two times to get coffee
#200 money = 2'b10;// putting 75ps two times to get coffee
#200 money = 2'b11;// putting 1 rs single time to g
#100 money = 2'b01; // putting 1st 25ps and  50ps i n second clock cycle
#100 money = 2'b10;
#200
$finish;
end 
endmodule
