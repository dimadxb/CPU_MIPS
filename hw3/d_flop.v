module d_flop(d, clk, q);
  input [31:0] d;
  input clk;

  output reg [31:0] q;

  initial begin
    q <= 32'b0;
  end

  always @ (posedge clk)
    q <= d;
endmodule
