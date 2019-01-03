`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/07/06 23:12:15
// Design Name: 
// Module Name: counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input wire pclk,
    output wire p_out,
    output wire [12:0] cnt_out
    );
    

    reg [14:0] counter = 13'h0;
    reg tmp = 1'b0;
    assign p_out = pclk;
    assign cnt_out = counter[12:0];
    
    always @(posedge pclk) begin
        if(counter == 13'd_8191) begin
            counter <= 13'h0;
            tmp <= ~tmp;
        end else begin
            counter <= counter + 13'h1;
        end
    end
endmodule
