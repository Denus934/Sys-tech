`timescale 1ns / 1ps

module priority_cd_tb();
    parameter IN_WIDTH = 8;
    localparam OUT_WIDTH = $clog2(IN_WIDTH);
    reg [IN_WIDTH-1:0] in;
    wire [OUT_WIDTH-1:0] out;

    priority_cd #(.IN_WIDTH(IN_WIDTH)) uut (
        .in(in),
        .out(out)
    );
    initial $dumpvars;
    initial #800 $finish;
    initial in = 0;
    always #1 in = in + 1;
endmodule
