module mux2_1(d0, d1, a, out);
  input d0, d1;
  input a;
  output out;
  assign out = a ? d1 : d0;
endmodule

module sign_extend(in, out);
  input [15:0] in;
  output [31:0] out;

  assign out = {{16{in[15]}}, in};
endmodule

module shl_2(in, out);
  input [31:0] in;
  output [31:0] out;

  assign out = {in[29:0], 2'b00};
endmodule

module adder(a, b, out);
  input [31:0] a, b;
  output [31:0] out;

  assign out = a + b;
endmodule

module mux2_32(d0, d1, a, out);
  input [31:0] d0, d1;
  input a;
  output [31:0] out;
  assign out = a ? d1 : d0;
endmodule

module mux2_5(d0, d1, a, out);
  input [4:0] d0, d1;
  input a;
  output [4:0] out;
  assign out = a ? d1 : d0;
endmodule