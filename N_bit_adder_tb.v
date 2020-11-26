// Code your testbench here
// or browse Examples
`define n 16
module N_full_adder_tb();
  reg [(`n-1):0]a,b;
  reg cin;
  wire [(`n-1):0]sum;
  wire cout;
  N_bit_adder DUT(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

  task inputs(input[(`n-1):0] x,y,
              input z);
begin
{a,b,cin} = {x,y,z};
#200;
end
endtask

initial begin
inputs(16'd12,16'd120,1'b1);
#10 $finish;
end
  initial $monitor("a = %0d, b = %0d, cin = %0d, sum = %0d, carry = %0d", a,b,cin,sum,cout);
endmodule