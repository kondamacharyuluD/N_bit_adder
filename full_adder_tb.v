module full_adder_tb();
reg a,b,cin;
wire sum,carry;
full_adder DUT(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

task inputs(input x,y,z);
begin
{a,b,cin} = {x,y,z};
#20;
end
endtask

initial begin
inputs(0,0,0);
inputs(0,0,1);
inputs(0,1,1);
inputs(0,1,0);
inputs(1,1,1);
inputs(1,1,0);
inputs(1,0,0);
inputs(1,0,1);
#10 $finish;
end
initial $monitor("a = %0d, b = %0d, cin = %0d, sum = %0d, carry = %0d", a,b,cin,sum,carry);
endmodule