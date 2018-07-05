`timescale 1ns / 1ps
// memory size 30*30

module mem30x30#(parameter WIDTH = 9)
(
    input clk,
    input rst_n,

    input [WIDTH-1:0] data_in,

    output [WIDTH-1:0] data_out
);

// memory
reg [WIDTH-1:0] a00 [29:0];
reg [WIDTH-1:0] a01 [29:0];
reg [WIDTH-1:0] a02 [29:0];
reg [WIDTH-1:0] a03 [29:0];
reg [WIDTH-1:0] a04 [29:0];
reg [WIDTH-1:0] a05 [29:0];
reg [WIDTH-1:0] a06 [29:0];
reg [WIDTH-1:0] a07 [29:0];
reg [WIDTH-1:0] a08 [29:0];
reg [WIDTH-1:0] a09 [29:0];
reg [WIDTH-1:0] a10 [29:0];
reg [WIDTH-1:0] a11 [29:0];
reg [WIDTH-1:0] a12 [29:0];
reg [WIDTH-1:0] a13 [29:0];
reg [WIDTH-1:0] a14 [29:0];
reg [WIDTH-1:0] a15 [29:0];
reg [WIDTH-1:0] a16 [29:0];
reg [WIDTH-1:0] a17 [29:0];
reg [WIDTH-1:0] a18 [29:0];
reg [WIDTH-1:0] a19 [29:0];
reg [WIDTH-1:0] a20 [29:0];
reg [WIDTH-1:0] a21 [29:0];
reg [WIDTH-1:0] a22 [29:0];
reg [WIDTH-1:0] a23 [29:0];
reg [WIDTH-1:0] a24 [29:0];
reg [WIDTH-1:0] a25 [29:0];
reg [WIDTH-1:0] a26 [29:0];
reg [WIDTH-1:0] a27 [29:0];
reg [WIDTH-1:0] a28 [29:0];
reg [WIDTH-1:0] a29 [29:0];
// clock counter
reg [:0] clk_counter;

// initial
initial
begin
    a00[0] <= 0;a00[1] <= 0;a00[2] <= 0;a00[3] <= 0;a00[4] <= 0;a00[5] <= 0;a00[6] <= 0;a00[7] <= 0;a00[8] <= 0;a00[9] <= 0;
    a00[10] <= 0;a00[11] <= 0;a00[12] <= 0;a00[13] <= 0;a00[14] <= 0;a00[15] <= 0;a00[16] <= 0;a00[17] <= 0;a00[18] <= 0;a00[19] <= 0;
    a00[20] <= 0;a00[21] <= 0;a00[22] <= 0;a00[23] <= 0;a00[24] <= 0;a00[25] <= 0;a00[26] <= 0;a00[27] <= 0;a00[28] <= 0;a00[29] <= 0;

    a01[0] <= 0;a01[1] <= 0;a01[2] <= 0;a01[3] <= 0;a01[4] <= 0;a01[5] <= 0;a01[6] <= 0;a01[7] <= 0;a01[8] <= 0;a01[9] <= 0;
    a01[10] <= 0;a01[11] <= 0;a01[12] <= 0;a01[13] <= 0;a01[14] <= 0;a01[15] <= 0;a01[16] <= 0;a01[17] <= 0;a01[18] <= 0;a01[19] <= 0;
    a01[20] <= 0;a01[21] <= 0;a01[22] <= 0;a01[23] <= 0;a01[24] <= 0;a01[25] <= 0;a01[26] <= 0;a01[27] <= 0;a01[28] <= 0;a01[29] <= 0;

    a02[0] <= 0;a02[1] <= 0;a02[2] <= 0;a02[3] <= 0;a02[4] <= 0;a02[5] <= 0;a02[6] <= 0;a02[7] <= 0;a02[8] <= 0;a02[9] <= 0;
    a02[10] <= 0;a02[11] <= 0;a02[12] <= 0;a02[13] <= 0;a02[14] <= 0;a02[15] <= 0;a02[16] <= 0;a02[17] <= 0;a02[18] <= 0;a02[19] <= 0;
    a02[20] <= 0;a02[21] <= 0;a02[22] <= 0;a02[23] <= 0;a02[24] <= 0;a02[25] <= 0;a02[26] <= 0;a02[27] <= 0;a02[28] <= 0;a02[29] <= 0;

	a03[0] <= 0;a03[1] <= 0;a03[2] <= 0;a03[3] <= 0;a03[4] <= 0;a03[5] <= 0;a03[6] <= 0;a03[7] <= 0;a03[8] <= 0;a03[9] <= 0;
    a03[10] <= 0;a03[11] <= 0;a03[12] <= 0;a03[13] <= 0;a03[14] <= 0;a03[15] <= 0;a03[16] <= 0;a03[17] <= 0;a03[18] <= 0;a03[19] <= 0;
    a03[20] <= 0;a03[21] <= 0;a03[22] <= 0;a03[23] <= 0;a03[24] <= 0;a03[25] <= 0;a03[26] <= 0;a03[27] <= 0;a03[28] <= 0;a03[29] <= 0;

	a04[0] <= 0;a04[1] <= 0;a04[2] <= 0;a04[3] <= 0;a04[4] <= 0;a04[5] <= 0;a04[6] <= 0;a04[7] <= 0;a04[8] <= 0;a04[9] <= 0;
    a04[10] <= 0;a04[11] <= 0;a04[12] <= 0;a04[13] <= 0;a04[14] <= 0;a04[15] <= 0;a04[16] <= 0;a04[17] <= 0;a04[18] <= 0;a04[19] <= 0;
    a04[20] <= 0;a04[21] <= 0;a04[22] <= 0;a04[23] <= 0;a04[24] <= 0;a04[25] <= 0;a04[26] <= 0;a04[27] <= 0;a04[28] <= 0;a04[29] <= 0;

	a05[0] <= 0;a05[1] <= 0;a05[2] <= 0;a05[3] <= 0;a05[4] <= 0;a05[5] <= 0;a05[6] <= 0;a05[7] <= 0;a05[8] <= 0;a05[9] <= 0;
    a05[10] <= 0;a05[11] <= 0;a05[12] <= 0;a05[13] <= 0;a05[14] <= 0;a05[15] <= 0;a05[16] <= 0;a05[17] <= 0;a05[18] <= 0;a05[19] <= 0;
    a05[20] <= 0;a05[21] <= 0;a05[22] <= 0;a05[23] <= 0;a05[24] <= 0;a05[25] <= 0;a05[26] <= 0;a05[27] <= 0;a05[28] <= 0;a05[29] <= 0;

	a06[0] <= 0;a06[1] <= 0;a06[2] <= 0;a06[3] <= 0;a06[4] <= 0;a06[5] <= 0;a06[6] <= 0;a06[7] <= 0;a06[8] <= 0;a06[9] <= 0;
    a06[10] <= 0;a06[11] <= 0;a06[12] <= 0;a06[13] <= 0;a06[14] <= 0;a06[15] <= 0;a06[16] <= 0;a06[17] <= 0;a06[18] <= 0;a06[19] <= 0;
    a06[20] <= 0;a06[21] <= 0;a06[22] <= 0;a06[23] <= 0;a06[24] <= 0;a06[25] <= 0;a06[26] <= 0;a06[27] <= 0;a06[28] <= 0;a06[29] <= 0;

    a07[0] <= 0;a07[1] <= 0;a07[2] <= 0;a07[3] <= 0;a07[4] <= 0;a07[5] <= 0;a07[6] <= 0;a07[7] <= 0;a07[8] <= 0;a07[9] <= 0;
    a07[10] <= 0;a07[11] <= 0;a07[12] <= 0;a07[13] <= 0;a07[14] <= 0;a07[15] <= 0;a07[16] <= 0;a07[17] <= 0;a07[18] <= 0;a07[19] <= 0;
    a07[20] <= 0;a07[21] <= 0;a07[22] <= 0;a07[23] <= 0;a07[24] <= 0;a07[25] <= 0;a07[26] <= 0;a07[27] <= 0;a07[28] <= 0;a07[29] <= 0;

    a08[0] <= 0;a08[1] <= 0;a08[2] <= 0;a08[3] <= 0;a08[4] <= 0;a08[5] <= 0;a08[6] <= 0;a08[7] <= 0;a08[8] <= 0;a08[9] <= 0;
    a08[10] <= 0;a08[11] <= 0;a08[12] <= 0;a08[13] <= 0;a08[14] <= 0;a08[15] <= 0;a08[16] <= 0;a08[17] <= 0;a08[18] <= 0;a08[19] <= 0;
    a08[20] <= 0;a08[21] <= 0;a08[22] <= 0;a08[23] <= 0;a08[24] <= 0;a08[25] <= 0;a08[26] <= 0;a08[27] <= 0;a08[28] <= 0;a08[29] <= 0;

    a09[0] <= 0;a09[1] <= 0;a09[2] <= 0;a09[3] <= 0;a09[4] <= 0;a09[5] <= 0;a09[6] <= 0;a09[7] <= 0;a09[8] <= 0;a09[9] <= 0;
    a09[10] <= 0;a09[11] <= 0;a09[12] <= 0;a09[13] <= 0;a09[14] <= 0;a09[15] <= 0;a09[16] <= 0;a09[17] <= 0;a09[18] <= 0;a09[19] <= 0;
    a09[20] <= 0;a09[21] <= 0;a09[22] <= 0;a09[23] <= 0;a09[24] <= 0;a09[25] <= 0;a09[26] <= 0;a09[27] <= 0;a09[28] <= 0;a09[29] <= 0;

    a10[0] <= 0;a10[1] <= 0;a10[2] <= 0;a10[3] <= 0;a10[4] <= 0;a10[5] <= 0;a10[6] <= 0;a10[7] <= 0;a10[8] <= 0;a10[9] <= 0;
    a10[10] <= 0;a10[11] <= 0;a10[12] <= 0;a10[13] <= 0;a10[14] <= 0;a10[15] <= 0;a10[16] <= 0;a10[17] <= 0;a10[18] <= 0;a10[19] <= 0;
    a10[20] <= 0;a10[21] <= 0;a10[22] <= 0;a10[23] <= 0;a10[24] <= 0;a10[25] <= 0;a10[26] <= 0;a10[27] <= 0;a10[28] <= 0;a10[29] <= 0;

    a11[0] <= 0;a11[1] <= 0;a11[2] <= 0;a11[3] <= 0;a11[4] <= 0;a11[5] <= 0;a11[6] <= 0;a11[7] <= 0;a11[8] <= 0;a11[9] <= 0;
    a11[10] <= 0;a11[11] <= 0;a11[12] <= 0;a11[13] <= 0;a11[14] <= 0;a11[15] <= 0;a11[16] <= 0;a11[17] <= 0;a11[18] <= 0;a11[19] <= 0;
    a11[20] <= 0;a11[21] <= 0;a11[22] <= 0;a11[23] <= 0;a11[24] <= 0;a11[25] <= 0;a11[26] <= 0;a11[27] <= 0;a11[28] <= 0;a11[29] <= 0;

    a12[0] <= 0;a12[1] <= 0;a12[2] <= 0;a12[3] <= 0;a12[4] <= 0;a12[5] <= 0;a12[6] <= 0;a12[7] <= 0;a12[8] <= 0;a12[9] <= 0;
    a12[10] <= 0;a12[11] <= 0;a12[12] <= 0;a12[13] <= 0;a12[14] <= 0;a12[15] <= 0;a12[16] <= 0;a12[17] <= 0;a12[18] <= 0;a12[19] <= 0;
    a12[20] <= 0;a12[21] <= 0;a12[22] <= 0;a12[23] <= 0;a12[24] <= 0;a12[25] <= 0;a12[26] <= 0;a12[27] <= 0;a12[28] <= 0;a12[29] <= 0;

    a13[0] <= 0;a13[1] <= 0;a13[2] <= 0;a13[3] <= 0;a13[4] <= 0;a13[5] <= 0;a13[6] <= 0;a13[7] <= 0;a13[8] <= 0;a13[9] <= 0;
    a13[10] <= 0;a13[11] <= 0;a13[12] <= 0;a13[13] <= 0;a13[14] <= 0;a13[15] <= 0;a13[16] <= 0;a13[17] <= 0;a13[18] <= 0;a13[19] <= 0;
    a13[20] <= 0;a13[21] <= 0;a13[22] <= 0;a13[23] <= 0;a13[24] <= 0;a13[25] <= 0;a13[26] <= 0;a13[27] <= 0;a13[28] <= 0;a13[29] <= 0;

    a14[0] <= 0;a14[1] <= 0;a14[2] <= 0;a14[3] <= 0;a14[4] <= 0;a14[5] <= 0;a14[6] <= 0;a14[7] <= 0;a14[8] <= 0;a14[9] <= 0;
    a14[10] <= 0;a14[11] <= 0;a14[12] <= 0;a14[13] <= 0;a14[14] <= 0;a14[15] <= 0;a14[16] <= 0;a14[17] <= 0;a14[18] <= 0;a14[19] <= 0;
    a14[20] <= 0;a14[21] <= 0;a14[22] <= 0;a14[23] <= 0;a14[24] <= 0;a14[25] <= 0;a14[26] <= 0;a14[27] <= 0;a14[28] <= 0;a14[29] <= 0;

    a15[0] <= 0;a15[1] <= 0;a15[2] <= 0;a15[3] <= 0;a15[4] <= 0;a15[5] <= 0;a15[6] <= 0;a15[7] <= 0;a15[8] <= 0;a15[9] <= 0;
    a15[10] <= 0;a15[11] <= 0;a15[12] <= 0;a15[13] <= 0;a15[14] <= 0;a15[15] <= 0;a15[16] <= 0;a15[17] <= 0;a15[18] <= 0;a15[19] <= 0;
    a15[20] <= 0;a15[21] <= 0;a15[22] <= 0;a15[23] <= 0;a15[24] <= 0;a15[25] <= 0;a15[26] <= 0;a15[27] <= 0;a15[28] <= 0;a15[29] <= 0;

    a16[0] <= 0;a16[1] <= 0;a16[2] <= 0;a16[3] <= 0;a16[4] <= 0;a16[5] <= 0;a16[6] <= 0;a16[7] <= 0;a16[8] <= 0;a16[9] <= 0;
    a16[10] <= 0;a16[11] <= 0;a16[12] <= 0;a16[13] <= 0;a16[14] <= 0;a16[15] <= 0;a16[16] <= 0;a16[17] <= 0;a16[18] <= 0;a16[19] <= 0;
    a16[20] <= 0;a16[21] <= 0;a16[22] <= 0;a16[23] <= 0;a16[24] <= 0;a16[25] <= 0;a16[26] <= 0;a16[27] <= 0;a16[28] <= 0;a16[29] <= 0;

    a17[0] <= 0;a17[1] <= 0;a17[2] <= 0;a17[3] <= 0;a17[4] <= 0;a17[5] <= 0;a17[6] <= 0;a17[7] <= 0;a17[8] <= 0;a17[9] <= 0;
    a17[10] <= 0;a17[11] <= 0;a17[12] <= 0;a17[13] <= 0;a17[14] <= 0;a17[15] <= 0;a17[16] <= 0;a17[17] <= 0;a17[18] <= 0;a17[19] <= 0;
    a17[20] <= 0;a17[21] <= 0;a17[22] <= 0;a17[23] <= 0;a17[24] <= 0;a17[25] <= 0;a17[26] <= 0;a17[27] <= 0;a17[28] <= 0;a17[29] <= 0;

    a18[0] <= 0;a18[1] <= 0;a18[2] <= 0;a18[3] <= 0;a18[4] <= 0;a18[5] <= 0;a18[6] <= 0;a18[7] <= 0;a18[8] <= 0;a18[9] <= 0;
    a18[10] <= 0;a18[11] <= 0;a18[12] <= 0;a18[13] <= 0;a18[14] <= 0;a18[15] <= 0;a18[16] <= 0;a18[17] <= 0;a18[18] <= 0;a18[19] <= 0;
    a18[20] <= 0;a18[21] <= 0;a18[22] <= 0;a18[23] <= 0;a18[24] <= 0;a18[25] <= 0;a18[26] <= 0;a18[27] <= 0;a18[28] <= 0;a18[29] <= 0;

    a19[0] <= 0;a19[1] <= 0;a19[2] <= 0;a19[3] <= 0;a19[4] <= 0;a19[5] <= 0;a19[6] <= 0;a19[7] <= 0;a19[8] <= 0;a19[9] <= 0;
    a19[10] <= 0;a19[11] <= 0;a19[12] <= 0;a19[13] <= 0;a19[14] <= 0;a19[15] <= 0;a19[16] <= 0;a19[17] <= 0;a19[18] <= 0;a19[19] <= 0;
    a19[20] <= 0;a19[21] <= 0;a19[22] <= 0;a19[23] <= 0;a19[24] <= 0;a19[25] <= 0;a19[26] <= 0;a19[27] <= 0;a19[28] <= 0;a19[29] <= 0;

    a20[0] <= 0;a20[1] <= 0;a20[2] <= 0;a20[3] <= 0;a20[4] <= 0;a20[5] <= 0;a20[6] <= 0;a20[7] <= 0;a20[8] <= 0;a20[9] <= 0;
    a20[10] <= 0;a20[11] <= 0;a20[12] <= 0;a20[13] <= 0;a20[14] <= 0;a20[15] <= 0;a20[16] <= 0;a20[17] <= 0;a20[18] <= 0;a20[19] <= 0;
    a20[20] <= 0;a20[21] <= 0;a20[22] <= 0;a20[23] <= 0;a20[24] <= 0;a20[25] <= 0;a20[26] <= 0;a20[27] <= 0;a20[28] <= 0;a20[29] <= 0;

    a21[0] <= 0;a21[1] <= 0;a21[2] <= 0;a21[3] <= 0;a21[4] <= 0;a21[5] <= 0;a21[6] <= 0;a21[7] <= 0;a21[8] <= 0;a21[9] <= 0;
    a21[10] <= 0;a21[11] <= 0;a21[12] <= 0;a21[13] <= 0;a21[14] <= 0;a21[15] <= 0;a21[16] <= 0;a21[17] <= 0;a21[18] <= 0;a21[19] <= 0;
    a21[20] <= 0;a21[21] <= 0;a21[22] <= 0;a21[23] <= 0;a21[24] <= 0;a21[25] <= 0;a21[26] <= 0;a21[27] <= 0;a21[28] <= 0;a21[29] <= 0;

    a22[0] <= 0;a22[1] <= 0;a22[2] <= 0;a22[3] <= 0;a22[4] <= 0;a22[5] <= 0;a22[6] <= 0;a22[7] <= 0;a22[8] <= 0;a22[9] <= 0;
    a22[10] <= 0;a22[11] <= 0;a22[12] <= 0;a22[13] <= 0;a22[14] <= 0;a22[15] <= 0;a22[16] <= 0;a22[17] <= 0;a22[18] <= 0;a22[19] <= 0;
    a22[20] <= 0;a22[21] <= 0;a22[22] <= 0;a22[23] <= 0;a22[24] <= 0;a22[25] <= 0;a22[26] <= 0;a22[27] <= 0;a22[28] <= 0;a22[29] <= 0;

    a23[0] <= 0;a23[1] <= 0;a23[2] <= 0;a23[3] <= 0;a23[4] <= 0;a23[5] <= 0;a23[6] <= 0;a23[7] <= 0;a23[8] <= 0;a23[9] <= 0;
    a23[10] <= 0;a23[11] <= 0;a23[12] <= 0;a23[13] <= 0;a23[14] <= 0;a23[15] <= 0;a23[16] <= 0;a23[17] <= 0;a23[18] <= 0;a23[19] <= 0;
    a23[20] <= 0;a23[21] <= 0;a23[22] <= 0;a23[23] <= 0;a23[24] <= 0;a23[25] <= 0;a23[26] <= 0;a23[27] <= 0;a23[28] <= 0;a23[29] <= 0;

    a24[0] <= 0;a24[1] <= 0;a24[2] <= 0;a24[3] <= 0;a24[4] <= 0;a24[5] <= 0;a24[6] <= 0;a24[7] <= 0;a24[8] <= 0;a24[9] <= 0;
    a24[10] <= 0;a24[11] <= 0;a24[12] <= 0;a24[13] <= 0;a24[14] <= 0;a24[15] <= 0;a24[16] <= 0;a24[17] <= 0;a24[18] <= 0;a24[19] <= 0;
    a24[20] <= 0;a24[21] <= 0;a24[22] <= 0;a24[23] <= 0;a24[24] <= 0;a24[25] <= 0;a24[26] <= 0;a24[27] <= 0;a24[28] <= 0;a24[29] <= 0;

    a25[0] <= 0;a25[1] <= 0;a25[2] <= 0;a25[3] <= 0;a25[4] <= 0;a25[5] <= 0;a25[6] <= 0;a25[7] <= 0;a25[8] <= 0;a25[9] <= 0;
    a25[10] <= 0;a25[11] <= 0;a25[12] <= 0;a25[13] <= 0;a25[14] <= 0;a25[15] <= 0;a25[16] <= 0;a25[17] <= 0;a25[18] <= 0;a25[19] <= 0;
    a25[20] <= 0;a25[21] <= 0;a25[22] <= 0;a25[23] <= 0;a25[24] <= 0;a25[25] <= 0;a25[26] <= 0;a25[27] <= 0;a25[28] <= 0;a25[29] <= 0;

    a26[0] <= 0;a26[1] <= 0;a26[2] <= 0;a26[3] <= 0;a26[4] <= 0;a26[5] <= 0;a26[6] <= 0;a26[7] <= 0;a26[8] <= 0;a26[9] <= 0;
    a26[10] <= 0;a26[11] <= 0;a26[12] <= 0;a26[13] <= 0;a26[14] <= 0;a26[15] <= 0;a26[16] <= 0;a26[17] <= 0;a26[18] <= 0;a26[19] <= 0;
    a26[20] <= 0;a26[21] <= 0;a26[22] <= 0;a26[23] <= 0;a26[24] <= 0;a26[25] <= 0;a26[26] <= 0;a26[27] <= 0;a26[28] <= 0;a26[29] <= 0;

    a27[0] <= 0;a27[1] <= 0;a27[2] <= 0;a27[3] <= 0;a27[4] <= 0;a27[5] <= 0;a27[6] <= 0;a27[7] <= 0;a27[8] <= 0;a27[9] <= 0;
    a27[10] <= 0;a27[11] <= 0;a27[12] <= 0;a27[13] <= 0;a27[14] <= 0;a27[15] <= 0;a27[16] <= 0;a27[17] <= 0;a27[18] <= 0;a27[19] <= 0;
    a27[20] <= 0;a27[21] <= 0;a27[22] <= 0;a27[23] <= 0;a27[24] <= 0;a27[25] <= 0;a27[26] <= 0;a27[27] <= 0;a27[28] <= 0;a27[29] <= 0;

    a28[0] <= 0;a28[1] <= 0;a28[2] <= 0;a28[3] <= 0;a28[4] <= 0;a28[5] <= 0;a28[6] <= 0;a28[7] <= 0;a28[8] <= 0;a28[9] <= 0;
    a28[10] <= 0;a28[11] <= 0;a28[12] <= 0;a28[13] <= 0;a28[14] <= 0;a28[15] <= 0;a28[16] <= 0;a28[17] <= 0;a28[18] <= 0;a28[19] <= 0;
    a28[20] <= 0;a28[21] <= 0;a28[22] <= 0;a28[23] <= 0;a28[24] <= 0;a28[25] <= 0;a28[26] <= 0;a28[27] <= 0;a28[28] <= 0;a28[29] <= 0;

    a29[0] <= 0;a29[1] <= 0;a29[2] <= 0;a29[3] <= 0;a29[4] <= 0;a29[5] <= 0;a29[6] <= 0;a29[7] <= 0;a29[8] <= 0;a29[9] <= 0;
    a29[10] <= 0;a29[11] <= 0;a29[12] <= 0;a29[13] <= 0;a29[14] <= 0;a29[15] <= 0;a29[16] <= 0;a29[17] <= 0;a29[18] <= 0;a29[19] <= 0;
    a29[20] <= 0;a29[21] <= 0;a29[22] <= 0;a29[23] <= 0;a29[24] <= 0;a29[25] <= 0;a29[26] <= 0;a29[27] <= 0;a29[28] <= 0;a29[29] <= 0;

end

always@(posedge clk)
begin
    if(!rst_n)
    begin
        
    end
end

endmodule