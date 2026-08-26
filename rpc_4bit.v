module full_adder (
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);
    assign sum = a ^ b ^ cin; // Sum is the XOR of a, b, and cin
    assign cout = (a & b) | (cin & a) | (cin & b); // Carry out is generated if any two inputs are high
endmodule

module rpc_4bit (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire [4:0] carry; // Carry wires for each bit
    assign carry[0] = cin; // Initial carry-in
    full_adder fa0 (a[0], b[0], carry[0], sum[0], carry[1]);
    full_adder fa1 (a[1], b[1], carry[1], sum[1], carry[2]);
    full_adder fa2 (a[2], b[2], carry[2], sum[2], carry[3]);
    full_adder fa3 (a[3], b[3], carry[3], sum[3], carry[4]);
    assign cout = carry[4]; // Final carry-out
endmodule
