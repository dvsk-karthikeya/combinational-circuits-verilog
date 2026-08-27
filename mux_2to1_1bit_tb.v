`timescale 1ns / 1ps
module mux_2to1_1bit_tb;
reg a;
reg b;
reg sel;
wire y;

// Instantiate the mux_2to1_1bit module
mux_2to1_1bit dut (a, b, sel, y);
initial begin
    // Test case 1: sel = 0, expect y = a
    a = 1'b0; b = 1'b0; sel = 1'b0;
    #10;
    $display("Test case 1: a=%b, b=%b, sel=%b, y=%b", a, b, sel, y);

    // Test case 2: sel = 1, expect y = b
    a = 1'b1; b = 1'b1; sel = 1'b1;
    #10;
    $display("Test case 2: a=%b, b=%b, sel=%b, y=%b", a, b, sel, y);

    // Test case 3: sel = x (undefined), expect y = x
    a = 1'b0; b = 1'b1; sel = 1'bx;
    #10;
    $display("Test case 3: a=%b, b=%b, sel=%b, y=%b", a, b, sel, y);

    // Finish simulation
    $finish;
end
endmodule