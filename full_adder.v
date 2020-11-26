`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2020 11:23:27
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,b,cin,
    output reg sum,carry
    );
    always@*
    begin
    case({a,b,cin})
    3'b000:begin
    sum = 0;
    carry = 0;
    end
    3'b001:begin
        sum = 1;
        carry = 0;
        end
    3'b010:begin
            sum = 1;
            carry = 0;
            end
    3'b011:begin
               sum = 0;
               carry = 1;
               end
    3'b100:begin
               sum = 1;
               carry = 0;
               end
    3'b101:begin
               sum = 0;
               carry = 1;
               end
    3'b110:begin
               sum = 0;
               carry = 1;
               end
    3'b111:begin
               sum = 1;
               carry = 1;
               end
               endcase
               end                                                        
endmodule
