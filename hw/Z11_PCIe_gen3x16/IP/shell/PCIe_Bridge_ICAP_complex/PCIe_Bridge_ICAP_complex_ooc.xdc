################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name sys_clk_gt -period 10 [get_ports sys_clk_gt]
create_clock -name sys_clk -period 10 [get_ports sys_clk]
create_clock -name C1_SYS_CLK_clk_p -period 3.333 [get_ports C1_SYS_CLK_clk_p]

################################################################################