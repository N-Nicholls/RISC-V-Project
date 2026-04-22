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

module tb_full_adder;
    reg a;
    reg b;
    reg cin;
    wire cout;
    wire sum;


    full_adder uut(.input_a(a), // unit under test
        .input_b(b), // assigns inputs by port. Can also do positionally but is unclear
        .cin(cin),   
        .sum(sum), 
        .cout(cout)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_full_adder);

        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end
endmodule
