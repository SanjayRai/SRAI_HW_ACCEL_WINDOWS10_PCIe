##-----------------------------------------------------------------------------
##
## (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
##-----------------------------------------------------------------------------
##
## Project    : UltraScale+ FPGA PCI Express v4.0 Integrated Block
## File       : ip_pcie4_uscale_plus_x1y2.xdc
## Version    : 1.3 
##-----------------------------------------------------------------------------
#
###############################################################################
# Vivado - PCIe GUI / User Configuration 
###############################################################################
#
# Link Speed   - Gen3 - 8.0 Gb/s
# Link Width   - X16
# AXIST Width  - 512-bit
# AXIST Frequ  - 250 MHz = User Clock
# Core Clock   - 500 MHz
# Pipe Clock   - 125 MHz (Gen1) : 250 MHz (Gen2/Gen3/Gen4)
#
# Family       - virtexuplus
# Part         - xcvu9p
# Package      - fsgd2104
# Speed grade  - -2
# PCIe Block   - X1Y2
#
#
###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################

###############################################################################
# Pinout and Related I/O Constraints
###############################################################################
#
# Transceiver instance placement.  This constraint selects the
# transceivers to be used, which also dictates the pinout for the
# transmit and receive differential pairs.  Please refer to the
# Virtex-7 GT Transceiver User Guide (UG) for more information.
#
###############################################################################

###############################################################################
# Physical Constraints
###############################################################################
###############################################################################
#
# PCI Express Block placement. This constraint selects the PCI Express
# Block to be used.
#
###############################################################################

###############################################################################
# Buffer (BRAM) Placement Constraints
###############################################################################

#Request Buffer RAMB Placement

# Completion Buffer RAMB Placement

# Replay Buffer RAMB Placement

###############################################################################
# Timing Constraints
###############################################################################
# Add PCIe LOC Constraints Here
#
set_property LOC PCIE40E4_X1Y2 [get_cells pcie_4_0_pipe_inst/pcie_4_0_e4_inst]
#
# Constraining GT TXOUTCLK to 500 MHz 
create_clock -period 2.0 [get_pins -filter {REF_PIN_NAME=~TXOUTCLK} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
#
create_clock -period 1000 [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_intclk/O]
#
#
#
# TXOUTCLKSEL switches during reset. Set the tool to analyze timing with TXOUTCLKSEL set to 'b101.
set_case_analysis 1 [get_pins -filter {REF_PIN_NAME=~TXOUTCLKSEL[2]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_case_analysis 0 [get_pins -filter {REF_PIN_NAME=~TXOUTCLKSEL[1]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_case_analysis 1 [get_pins -filter {REF_PIN_NAME=~TXOUTCLKSEL[0]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
#
# These pins are dynamic and added case analysis constrains. so that tool do not complain any warnings.
set_case_analysis 0 [get_pins -filter {REF_PIN_NAME=~TXRATE[0]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_case_analysis 0 [get_pins -filter {REF_PIN_NAME=~RXRATE[0]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_case_analysis 1 [get_pins -filter {REF_PIN_NAME=~TXRATE[1]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_case_analysis 1 [get_pins -filter {REF_PIN_NAME=~RXRATE[1]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_case_analysis 0 [get_pins -filter {REF_PIN_NAME=~TXRATE[2]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_case_analysis 0 [get_pins -filter {REF_PIN_NAME=~RXRATE[2]} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
#
set_false_path -from [get_pins -filter {REF_PIN_NAME=~TXUSRCLK2} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]] -to [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_rst_i/sync_txresetdone/sync_vec[*].sync_cell_i/sync_reg[0]/D]
set_false_path -from [get_pins -filter {REF_PIN_NAME=~RXUSRCLK2} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]] -to [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_rst_i/sync_phystatus/sync_vec[*].sync_cell_i/sync_reg[0]/D]
set_false_path -from [get_pins -filter {REF_PIN_NAME=~RXUSRCLK2} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]] -to [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_rst_i/sync_rxresetdone/sync_vec[*].sync_cell_i/sync_reg[0]/D]
#
#
#
# Make sure that tool gets the correct DIV value for pipe_clock during synthesis as these DIV pins are dynamic.
# Set Divide By 2
set_case_analysis 1 [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_pclk/DIV[0]]
set_case_analysis 0 [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_pclk/DIV[1]]
set_case_analysis 0 [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_pclk/DIV[2]]
#
#
###############################################################################
# TIMING Exceptions - MCP
###############################################################################
#
#
# Multi Cycle Paths
set PCIE4INST pcie_4_0_pipe_inst/pcie_4_0_e4_inst
set USERPINS  [get_pins "$PCIE4INST/CFG* $PCIE4INST/CONF* $PCIE4INST/PCIECQNPREQ* $PCIE4INST/PCIERQTAG* $PCIE4INST/PCIETFC* $PCIE4INST/USERSPARE*"]
#
set USERINPINS [get_pins $USERPINS -filter DIRECTION==IN]
set_multicycle_path -setup 2 -end   -through $USERINPINS
set_multicycle_path -hold  1 -end   -through $USERINPINS
#
set USEROUTPINS [get_pins $USERPINS -filter DIRECTION==OUT]
set_multicycle_path -setup 2 -start -through $USEROUTPINS
set_multicycle_path -hold  1 -start -through $USEROUTPINS
#
#
###############################################################################
# TIMING Exceptions - False Paths
###############################################################################
set_false_path -to [get_pins -hier *sync_reg[0]/D]
set_false_path -to [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/rst_psrst_n_r_reg[*]/CLR]
set_false_path -to [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/rst_psrst_n_r_rep_reg/CLR]
set_false_path -to [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_rst_i/prst_n_r_reg[*]/CLR]
set_false_path -to [get_pins gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_rst_i/prst_n_r_rep_reg/CLR]
#
# The below PINs are asynchronous inputs to the GT block.
set_false_path -through [get_pins -filter {REF_PIN_NAME=~RXELECIDLE} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_false_path -through [get_pins -filter {REF_PIN_NAME=~PCIERATEGEN3} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_false_path -through [get_pins -filter {REF_PIN_NAME=~RXPRGDIVRESETDONE} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_false_path -through [get_pins -filter {REF_PIN_NAME=~TXPRGDIVRESETDONE} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_false_path -through [get_pins -filter {REF_PIN_NAME=~PCIESYNCTXSYNCDONE} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_false_path -through [get_pins -filter {REF_PIN_NAME=~GTPOWERGOOD} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]
set_false_path -through [get_pins -filter {REF_PIN_NAME=~CPLLLOCK} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.GT.* }]]

#
# The below PINs are asynchronous inputs to the PCIe block.
set_false_path -through [get_pins -filter {REF_PIN_NAME=~PCIEPERST0B} -of_objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ ADVANCED.PCIE.* }]]
# Async reset registers
set_false_path -to [get_pins user_lnk_up_reg/CLR]
set_false_path -to [get_pins user_reset_reg/PRE]
#
#
###############################################################################
# CLOCK_ROOT LOCKing to Reduce CLOCK SKEW
# Add/Edit  Clock Routing Option to improve clock path skew
###############################################################################
set_property USER_CLOCK_ROOT X5Y6 [get_nets -of_objects [get_pins bufg_gt_sysclk/O]]
set_property USER_CLOCK_ROOT X5Y6 [get_nets -of_objects [get_pins -hierarchical -filter NAME=~*/phy_clk_i/bufg_gt_intclk/O]]
set_property USER_CLOCK_ROOT X5Y6 [get_nets -of_objects [get_pins -hierarchical -filter NAME=~*/phy_clk_i/bufg_gt_coreclk/O]]
set_property USER_CLOCK_ROOT X5Y6 [get_nets -of_objects [get_pins -hierarchical -filter NAME=~*/phy_clk_i/bufg_gt_userclk/O]]
set_property USER_CLOCK_ROOT X5Y6 [get_nets -of_objects [get_pins -hierarchical -filter NAME=~*/phy_clk_i/bufg_gt_pclk/O]]
set_property USER_CLOCK_ROOT X5Y6 [get_nets -of_objects [get_pins -hierarchical -filter NAME=~*/phy_clk_i/bufg_gt_mcapclk/O]]
#
set_property CLOCK_DELAY_GROUP group_i0 [get_nets {gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/*TXOUTCLK*}]
set_property CLOCK_DELAY_GROUP group_i0 [get_nets {gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/*USERCLK*}]
set_property CLOCK_DELAY_GROUP group_i0 [get_nets {gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/*CORECLK*}]
#
#
#
#
#
###############################################################################
#
###############################################################################
#
#
#
