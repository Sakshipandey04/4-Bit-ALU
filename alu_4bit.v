`timescale 1ns / 1ps

// Module Name: alu_4bit
// Project Name: 4-Bit ALU

module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,
    output reg [3:0] results,
    output reg zero_flag,
    output reg carry_flag
 );
always@(*)begin
      carry_flag =0;
      zero_flag = 0;
      case(opcode)
           3'b000:begin
             {carry_flag, results} = A+B; //ADD
            end
           3'b001:begin
             {carry_flag, results} = A-B; //SUB
           end
           3'b010: results = A&B; //AND
           3'b011: results = A | B; // OR
           3'b100: results = A^B; //XOR
           3'b101: results = ~A; //NOT A
        3'b110: results = (A>B)? 4'b0001: 4'b0000; //Compare
           default: results = 4'b0000;
      endcase
        
        if(results== 4'b0000)
          zero_flag =1;
       
end

endmodule 
