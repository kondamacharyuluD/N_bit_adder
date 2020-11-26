`define n 16
module N_bit_adder( input [(`n-1):0]a,b,
input cin,
output [(`n-1):0]sum,
output cout);

wire [(`n-1):0]w;
//wire k;
//assign k = cin;
genvar i;

full_adder fa0(a[0],b[0],cin,sum[0],w[0]);
generate
 for(i = 1; i < `n-1; i= i+1)
begin:adder
full_adder fa1(a[i],b[i],w[i-1],sum[i],w[i]);
end
endgenerate
full_adder fa2(a[(`n-1)],b[(`n-1)],w[(`n-2)],sum[(`n-1)],w[(`n-1)]);
endmodule