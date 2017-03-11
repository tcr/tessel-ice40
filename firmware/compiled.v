module Main (
    input [0:0] clk,
    output LED1,
    output LED2
);
    reg [(15)-1:0] index = 0;
    always @(posedge clk) begin
        if ((index == (25000 - 1))) begin
            LED2 <= ~(LED2);
            index <= 0;
        end
        else begin
            index <= (index + 1);
        end
    end

    assign LED1 = 1;
endmodule
