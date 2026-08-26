module full_adder_tb;
reg a,b,cin;
wire sum,cout;

full_adder dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
initial begin
    // Test case 1: 0 + 0 + 0
    a = 0; b = 0; cin = 0;
    #5; // Wait for 5 time units
    $display("Test case 1: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    // Test case 2: 0 + 0 + 1
    a = 0; b = 0; cin = 1;
    #5; // Wait for 5 time units
    $display("Test case 2: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);


    // Test case 3: 0 + 1 + 0
    a = 0; b = 1; cin = 0;
    #5; // Wait for 5 time units
    $display("Test case 3: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    // Test case 4: 0 + 1 + 1
    a = 0; b = 1; cin = 1;
    #5; 
    $display("Test case 4: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    // Test case 5: 1 + 0 + 0
    a = 1; b = 0; cin = 0;
    #5; // Wait for 5 time units
    $display("Test case 5: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    // Test case 6: 1 + 0 + 1
    a = 1; b = 0; cin = 1;
    #5; // Wait for 5 time units
    $display("Test case 6: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    // Test case 7: 1 + 1 + 0
    a = 1; b = 1; cin = 0;
    #5; // Wait for 5 time units
    $display("Test case 7: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    // Test case 8: 1 + 1 + 1
    a = 1; b = 1; cin = 1;
    #5; // Wait for 5 time units
    $display("Test case 8: a=%b, b=%b, cin=%b => sum=%b, cout=%b", a, b, cin, sum, cout);

    $finish;
end

endmodule