module lab1a(a, b, c, d, R, U, K);
	input a, b, c, d;
	output R, U, K;
	part1 mod1(a, b, c, R);
	part2 mod2(a, b, c, d, U);
	part3 mod3(a, b, K);
endmodule

module part1(a, b, c, R);
	input a, b, c;
	output R;
	wire x;
	or or1(x, a, b);
	or or2(R, x, c);
endmodule

module part2(a, b, c, d, U);
	input a, b, c, d;
	output U;
	wire [1:0] x;
	and and1(x[0], a, b);
	and and2(x[1], c, d);
	assign U = ~&x;
endmodule

module part3(a, b, K);
	input a, b;
	output K;
	wire [1:0] x;
	and and1(x[0], a, b);
	and and2(x[1], ~a, ~b);
	assign K = |x;
endmodule


/*module lab1a(a, b, c, d, L, V, P, S, C);
	input a, b, c, d;
	output L, V, P, S, C;
	part5 mod1(a, b, L);
	part6 mod2(a, b, c, d, V);
	part7 mod3(a, b, c, P);
	part8 mod4(a, b, c, S, C);
endmodule

module part5(a, b, L);
	input a, b;
	output L;
	wire c;
	nand c1(c, a, b);
	assign L = ~(~(c & a) & ~(c & b));
endmodule

module part6(a, b, c, d, V);
	input a, b, c, d;
	output V;
	wire [1:0] o1, o2;
	assign o1 = {c & a, c & ~a};
	assign o2 = {~(d & b), ~(d & ~b)};
	assign V = |o1 & ~(&o2);
endmodule

module part7(a, b, c, P);
	input a, b, c;
	output P;
	assign P = ((a | c) & ~b) | (c & ~a | b & a);
endmodule

module part8(a, b, c, S, C);
	input a, b, c;
	output S, C;
	assign S = c ^ (a ^ b);
	assign C = ~(~(c & (a ^ b)) & ~(a & b));
endmodule
*/