`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 15:55:07
// Design Name: 
// Module Name: main
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


module main(
input clk,
input rst,
input [1:0] money,
output coffee,
output [1:0] balance
);    

reg coff;
reg  [1:0] bal;
reg  [2:0] pr_st;
reg  [2:0] nx_st;
parameter [2:0] A=3'b000;
parameter [2:0] B=3'b001;
parameter [2:0] C=3'b010;
parameter [2:0] D=3'b011;
parameter [2:0] E=3'b100;
parameter [2:0] F=3'b101;
parameter [2:0] G=3'b110;
parameter [2:0] H=3'b111;

always @ (posedge clk or posedge rst)
begin
if(rst)
pr_st <= A;
else 
pr_st <= nx_st;
end

always @(posedge clk)         
begin
case(pr_st)
A : if(money == 2'b00) // input money is 25ps
begin
nx_st <= B; 
end
else if(money == 2'b01)  // input money is 50ps
begin
nx_st <= C;                       
end
else if(money == 2'b10)  // input money is 75ps
begin
nx_st <= D;                        
end
else if(money == 2'b11)
begin
nx_st <= E;                   
end
B : if(money == 2'b00)    
begin
nx_st <= C;                         
end 
else if(money == 2'b01) 
begin
nx_st <= D; 
end
else if(money == 2'b10)
begin
nx_st <= E;                       
end  
else if(money == 2'b11)
begin 
nx_st <= F;                        
end  
C : if(money == 2'b00)         
begin
nx_st <= D;                      
end 
else if(money == 2'b01)
begin 
nx_st <= E;                        
end 
else if(money == 2'b10)
begin 
nx_st <= F;                      
end
else if(money == 2'b11)
begin  
nx_st <= G;                      
end       
D : if(money == 2'b00)
begin           
nx_st <= E;                          
end
else if(money == 2'b01)  
begin
nx_st <= F;                        
end
else if(money == 2'b10)  
begin
nx_st <= G; 
end
else if(money == 2'b11)
begin
nx_st <= H;                      
end
E :   nx_st <= A;
F :   nx_st <= A;
G :   nx_st <= A;
H :   nx_st <= A;
default : nx_st <= A;           
endcase
end 
//output logic
always @( posedge clk or pr_st)
begin
case(pr_st)
A: begin
coff <= 1'b0;
bal <= 2'b00; 
end 
B: begin
coff <= 1'b0;
bal <= 2'b00; 
end 
C: begin
coff <= 1'b0;
bal <= 2'b00; 
end 
D: begin
coff <= 1'b0; 
bal <= 2'b00; 
end 
E: begin
coff <= 1'b1;
bal<= 2'b00;        
end
F: begin
coff <= 1'b1;
bal <= 2'b01;       
end
G: begin
coff <= 1'b1;
bal <= 2'b10;
end
H: begin 
coff <= 1'b1;
bal <= 2'b11;       
end
default : begin
coff <=1'b0;
bal <= 2'b00;
end  
endcase                       
end 

assign coffee = coff;
assign balance = bal;

endmodule
