module hello_world;

  // First of all, we define two inputs and an output.
  reg in1, in2, in3;
  wire out1, out2, out3;

  gate_level_module dut_module1(in1, in2, in3, out1);
  simplified_logic_module dut_module2(in1, in2, in3, out2);
  behavioral_module dut_module3(in1, in2, in3, out3);

  integer i, j, k;

  initial begin
    for (i = 0; i < 2; i = i + 1) begin
      for (j = 0; j < 2; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          in1= i; in2 = j; in3 = k;
          $display("Input values are: %b %b %b", in1, in2, in3);
          #1;
        end
      end
    end
    $finish;
  end

  initial begin
    // monitor only executes when one of the input variable changes.
    $monitor("Outs have changed! New values are: %b %b %b", out1, out2, out3) ;
  end
endmodule // End of Module hello_world

