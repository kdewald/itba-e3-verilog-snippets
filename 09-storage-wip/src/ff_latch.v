module dff_async_reset (data, clk, reset, q);
    //-----------Input Ports---------------
        input data, clk, reset ; 
    //-----------Output Ports---------------
        output q;
    //------------Internal Variables--------
        reg q;
    //-------------Code Starts Here---------
        always @ ( posedge clk or negedge reset)
            if (~reset) begin
                q <= 1'b0;
            end else begin
                q <= data;
            end
endmodule

module dlatch_reset (data, en, reset, q);
    //-----------Input Ports---------------
        input data, en, reset ; 
    //-----------Output Ports---------------
        output q;
    //------------Internal Variables--------
        reg q;
    //-------------Code Starts Here---------
        always @ ( en or reset or data)
            if (~reset) begin
                q <= 1'b0;
            end else if (en) begin
                q <= data;
            end
endmodule

module tff_async_reset (data, clk, reset, q);
    //-----------Input Ports---------------
        input data, clk, reset ; 
    //-----------Output Ports---------------
        output q;
    //------------Internal Variables--------
        reg q;
    //-------------Code Starts Here---------
        always @ ( posedge clk or negedge reset)
            if (~reset) begin
                q <= 1'b0;
            end else if (data) begin
                q <= !q;
            end
endmodule