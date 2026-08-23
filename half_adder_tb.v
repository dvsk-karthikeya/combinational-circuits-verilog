module half_adder_tb;
reg a,b;
wire sum, carry;
half_adder dut(.a(a), .b(b), .sum(sum), .carry(carry));
initial begin
    // Test case 1: a=0, b=0
    a = 0; b = 0;
    #5; // Wait for 5 time units
    $display("Test case 1: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    
    // Test case 2: a=0, b=1
    a = 0; b = 1;
    #5; // Wait for 5 time units
    $display("Test case 2: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    
    // Test case 3: a=1, b=0
    a = 1; b = 0;
    #5; // Wait for 5 time units
    $display("Test case 3: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    
    // Test case 4: a=1, b=1
    a = 1; b = 1;
    #5; // Wait for 5 time units
    $display("Test case 4: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    
    $finish; // End simulation
end
endmodule