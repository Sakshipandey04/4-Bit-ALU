`timescale 1ns / 1ps

module tb_alu_4bit;
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] opcode;
    
    wire [3:0] results;
    wire zero_flag;
    wire carry_flag;
    
    alu_4bit uut(
    .A(A),
    .B(B),
    .opcode(opcode),
    .results(results),
    .zero_flag(zero_flag),
    .carry_flag(carry_flag)
  );
  
  initial begin 
  $dumpfile("simulation_results.vcd");
  $dumpvars(0, tb_alu_4bit);
  
  A = 4'b0010; B= 4'b0001; opcode= 3'b000; #10; //ADD
  A = 4'b0010; B= 4'b0011; opcode= 3'b001; #10; //SUB
  A = 4'b1100; B= 4'b1010; opcode= 3'b010; #10;  
  A = 4'b1100; B= 4'b1010; opcode= 3'b011; #10;
  A = 4'b1100; B= 4'b1010; opcode= 3'b100; #10;
  A = 4'b1100; opcode= 3'b101; #10;
  A = 4'b0100; B= 4'b0010; opcode= 3'b110; #10;
  A = 4'b0001; B= 4'b0010; opcode= 3'b110; #10;  
  
  $finish;
end
endmodule
