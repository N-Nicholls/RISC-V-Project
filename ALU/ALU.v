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
    wire [N:0] carry;  // N+1 wires: carry[0] = cin, carry[N] = cout
    assign carry[0] = cin;
    assign cout = carry[N];

    genvar i;
    generate
        for(i = 0;i < N; i = i+1) begin : fa_chain
            full_adder fa(.input_a(a[i]), // each full adder carries their related register in
            .input_b(b[i]), 
            .cin(carry[i]), 
            .sum(sum[i]), 
            .cout(carry[i+1])
            );
        end
    endgenerate

endmodule



module tb_ripple ();
    parameter N=8;
    reg [N-1:0] a;
    reg [N-1:0] b;
    reg cin;
    wire [N-1:0] sum;
    wire cout;

    ripple_carry_adder #(.N(N)) uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_ripple);

        a = 0; b = 0; cin = 0;
        #10;
        a = 8'h1A; b = 8'h2B; cin = 0;
        #10;
        a = 8'hFF; b = 8'h01; cin = 0;  // overflow case
        #10;


        $finish;
    end

endmodule