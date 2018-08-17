module hello_world ;

/*
Note that the $value$plusargs system task has two parameters: the first is like a
format specifier that enables vvp to parse the command line and extracts the desired
argument. The second specifies the variable to be initialized. Hence, a=%b instructs
vvp to look for a= followed by a single bit. This specifier can also be %h or %d to indicate
that the entered value is in hex or decimal.
*/

reg a, b, c;
reg dummy;
parameter MAX_STRING_SIZE = 20*8;
reg[(MAX_STRING_SIZE):0] message; // Some magic to be able to store a tring, to be seen later.
integer number;

initial begin

  c = 1; // We initialize C with a default value.

  dummy = $value$plusargs("a=%b", a);
  dummy = $value$plusargs("b=%b", b);
  dummy = $value$plusargs("c=%b", c);
  dummy = $value$plusargs("message=%s", message);
  dummy = $value$plusargs("num=%d", number);

  $display ("%b %b %b %s %d", a, b ,c, message, number);
  $finish;
end

endmodule // End of Module hello_world