`timescale 1ns / 1ps
module rpc_4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    // Instantiate the rpc_4bit module
    rpc_4bit dut (a, b, cin, sum, cout);

    initial begin
        // Test case 1
        a = 4'b0001; b = 4'b0010; cin = 1'b0; #10;
        #5; //Wait for 5 time units to allow the outputs to stabilize
        $display("Test case 1: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

        // Test case 2
        a = 4'b1111; b = 4'b0001; cin = 1'b0; #10;
        #5; //Wait for 5 time units to allow the outputs to stabilize
        $display("Test case 2: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

        // Test case 3
        a = 4'b1010; b = 4'b0101; cin = 1'b1; #10;
        #5; //Wait for 5 time units to allow the outputs to stabilize
        $display("Test case 3: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

        // Test case 4
        a = 4'b1111; b = 4'b1111; cin = 1'b1; #10;
        #5; //Wait for 5 time units to allow the outputs to stabilize
        $display("Test case 4: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

        $finish;
    end    
endmodule