module register_file(clk, we3, a1, a2, a3, wd3, rd1, rd2);
  input clk, we3;
  input [4:0] a1, a2, a3;
  input [31:0] wd3;
  output [31:0] rd1, rd2;

  reg [31:0] mem[0:31];

  integer i;
  initial begin
    for (i = 0; i < 32; i = i + 1) begin
      mem[i] = 0;
   	end
  end

  assign rd1 = mem[a1];
  assign rd2 = mem[a2];

  always @ (posedge clk) begin
    if (we3) mem[a3] = wd3;
  end
endmodule
