module Main (
    input clk,
    output LED1,
    output LED2
);
    reg [(23)-1:0] index = 0;
    always @(posedge clk) begin
        if ((index == (6000000 - 1))) begin
            LED1 <= ~(LED1);
            LED2 <= ~(LED2);
            index <= 0;
        end
        else begin
            index <= (index + 1);
        end
    end
endmodule
