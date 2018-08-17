module gate_level_module (x1, x2, s, f);
    input x1, x2, s;
    output f;
    // wire k, g, h; // These three internal wire definitions can be present or missing, the compiler doesn't care.
    
    // When working with gate-level modelling, we need to instanciate all gates one by one.
    not (k, s);
    and (g, k, x1);
    and (h, s, x2);
    or (f, g, h);
endmodule


module simplified_logic_module (x1, x2, s, f);
    input x1, x2, s;
    output f;

    assign f = (~s & x1) | (s & x2); // assign keyword "plugs" the l-value to f.
endmodule


module behavioral_module (x1, x2, s, f);
    input x1, x2, s;
    output reg f; // Whenever assigned in an always block, outputs must be declared as regs.

    // always @ tells the compiler when f should change.
    always @(x1 or x2 or s) begin
        if (s == 0)
            f = x1;
        else
            f = x2;
    end
endmodule