module lab3();
endmodule

// Part 1: 2-4 decoder
module decoder24(d, Y);
    input  [1:0] d;
    output [3:0] Y;
endmodule

// Part 2: Decodes BCD to 7seg
module decoder7seg(i, O);
    input  [3:0] i;
    output [7:0] O;
endmodule

// Part 3: Multiplexer
module mux(s, d, Y);
    input [1:0] s;
    input [3:0] d;
    output Y;
endmodule
