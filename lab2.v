/*module lab2(a, b, c, d, X, sel);
    input a, b, c, d, sel;
    output X;
	 wire p2, p3;
    part2 mod2(a, b, c, d, p2);
    part3 mod3({d, c, b, a}, p3);
	 assign X = sel ? p3 : p2; 
endmodule*/

module lab2(a, b, c, d, X, Y, P);
    input a, b, c, d;
    output X, Y, P;
    part1 mod1(a, b, c, d, X);
    part2 mod2(a, b, c, d, Y);
    part3 mod3({d, c, b, a}, P);    
endmodule

module part1(a, b, c, d, X);
    input a, b, c, d;
    output X;
    supply1 X;
endmodule

// Y = (a ⊼ ¬b) ⊼ (a ⊼ c ⊼ ¬d) ⊼ (¬b ⊼ ¬d)
module part2(a, b, c, d, Y);
    input a, b, c, d;
    output Y;
    wire x1, x2, x3;
    nand n1(x1, a, ~b);
    nand n2(x2, a, c, ~d);
    nand n3(x3, ~b, ~d);
    nand n4(Y, x1, x2, x3);
endmodule

// P = (¬a ⊼ ¬b ⊼ c) ⊼ (¬a ⊼ c ⊼ d) ⊼ (b ⊼ ¬c ⊼ d) ⊼ (¬b ⊼ c ⊼ d)
module part3(a, P);
    input [3:0] a;
    output P;
    wire [3:0] x;
    nand n1(x[0],~a[0],~a[1], a[2]);    
    nand n2(x[1],~a[0], a[2], a[3]);    
    nand n3(x[2], a[1],~a[2], a[3]);
	 nand n4(x[3],~a[1], a[2], a[3]);
    assign P = ~&x;
endmodule
