// One bit Adder. Takes a, b, cin, and outputs the sum and carry
module full_adder(
    input  input_a,
    input  input_b,
    input  cin,
    output sum,
    output cout
);
    assign sum  = input_a ^ input_b ^ cin;
    assign cout = (input_a & input_b) | ((input_a ^ input_b) & cin);
endmodule

// a ripple carry of N bits.
// N directly relates to # of FA's.
module ripple_carry_adder #(parameter N=8)( // # says that this is a parameter. A compile time thing. N=8 Says it's 8 by default
    input [N-1:0] a,
    input [N-1:0] b,
    input cin,
    output [N-1:0] sum,
    output cout

);

    assign sum 
endmodule

rippe_carry_adder

alu