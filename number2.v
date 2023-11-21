`timescale 1ns / 1ps

module priority_cd(in, out);  
    parameter IN_WIDTH = 4;
    localparam OUT_WIDTH = $clog2(IN_WIDTH);
    input [IN_WIDTH-1:0] in;
    output [OUT_WIDTH-1:0] out; 
    wire [OUT_WIDTH-1:0] inter [IN_WIDTH:0];
    assign inter[0] = {OUT_WIDTH{1'bX}};
    genvar i, j;
    generate
        for (i = 0; i < IN_WIDTH;i = i + 1) begin 
            assign inter[i + 1] = (in[i]) ? i : inter[i]; 
        end
    endgenerate
    assign out = inter[IN_WIDTH];
endmodule
