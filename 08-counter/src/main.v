`timescale 100us / 100us
module hello_world;

  // My signal definitions
  wire clk;
  clock_gen clk_gen(clk);
  reg reset = 0;

  wire[3:0] count;
  counter #(.WIDTH(4)) my_counter (count, clk, reset);

  initial begin

    #1
    reset = 1;
    #1
    reset = 0;
    #10;
    $finish;

  end






  // Additional documentation on $dumpfile and $dumpvars: http://referencedesigner.com/tutorials/verilog/verilog_62.php
  // Setup to allow us to pass an output path for $dumpfile
  reg dummy;
  reg[8*64:0] dumpfile_path = "output.vcd";

  initial begin
    dummy = $value$plusargs("VCD_PATH=%s", dumpfile_path);
    $dumpfile(dumpfile_path);
    $dumpvars(0,hello_world);
  end

endmodule // End of Module hello_world



