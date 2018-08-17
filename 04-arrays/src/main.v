module hello_world;

  // First of all, we define two inputs and an output.
  reg [3:0] in1, in2;
  wire [3:0] out1;

  assign out1 = in1 ^ in2;

  initial begin

    in1 = 'b1001;
    in2 = 'b1010;
    $display("Input values are: %b %b", in1, in2);
    #1;
    $display("Output value is: %b", out1);
    $finish;

  end

endmodule // End of Module hello_world

