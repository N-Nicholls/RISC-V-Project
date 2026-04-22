module tb;
    reg clk = 0;

    shift_reg uut (.i_clock(clk));

    // Generate clock — toggles every 5 units, period = 10
    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
        #100;
        $finish;
    end
endmodule