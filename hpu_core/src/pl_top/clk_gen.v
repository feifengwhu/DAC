// +FHDR------------------------------------------------------------------------
// XJTU IAIR Corporation All Rights Reserved
// -----------------------------------------------------------------------------
// FILE NAME  : clk_gen.v
// DEPARTMENT : CAG of IAIR
// AUTHOR     : XXXX
// AUTHOR'S EMAIL :XXXX@mail.xjtu.edu.cn
// -----------------------------------------------------------------------------
// Ver 1.0  2019--01--01 initial version.
// -----------------------------------------------------------------------------
// KEYWORDS   : clock signals generating
// -----------------------------------------------------------------------------
// PURPOSE    :
// -----------------------------------------------------------------------------
// PARAMETERS :
// -----------------------------------------------------------------------------
// REUSE ISSUES
// Reset Strategy   :
// Clock Domains    :
// Critical Timing  :
// Test Features    :
// Asynchronous I/F :
// Scan Methodology : N
// Instantiations   : N
// Synthesizable    : Y
// Other :
// -FHDR------------------------------------------------------------------------
`timescale 1ns / 1ps

module clk_gen(
    // clock signal of chip
    input                                   clk_in1,
    // output clock signal
    output                                  clk_o,
    output                                  clk_2x_o,
    // lock signal
    output                                  locked_o
);

//======================================================================================================================
// Wire & Reg declaration
//======================================================================================================================

//======================================================================================================================
// Instance
//======================================================================================================================
// pll pll_inst (
//     // Clock in ports
//     .clk_in1                                (clk_in1),
//     // Clock out ports
//     .clk_o                                  (clk_o),
//     .clk_2x_o                               (clk_2x_o),
//     // Status and control signals
//     .locked                                 (locked_o)
//  );
assign clk_o = clk_in1;
assign locked_o = 1'b1;

//======================================================================================================================
// just for simulation
//======================================================================================================================
// synthesis translate_off

// synthesis translate_on

//======================================================================================================================
// probe signals
//======================================================================================================================

endmodule