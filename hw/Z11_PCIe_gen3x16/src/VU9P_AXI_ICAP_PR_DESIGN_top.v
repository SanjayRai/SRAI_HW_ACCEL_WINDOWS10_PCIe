// Sanjay Rai (sanjay.d.rai@gmail.com)
//
`timescale 1 ps / 1 ps

module VU9P_AXI_ICAP_PR_DESIGN_top (
  input c1_sys_clk_n,
  input c1_sys_clk_p,
  output c1_ddr4_act_n,
  output [16:0]c1_ddr4_adr,
  output [1:0]c1_ddr4_ba,
  output [1:0]c1_ddr4_bg,
  output [0:0]c1_ddr4_ck_c,
  output [0:0]c1_ddr4_ck_t,
  output [0:0]c1_ddr4_cke,
  output [0:0]c1_ddr4_cs_n,
  inout [71:0]c1_ddr4_dq,
  inout [17:0]c1_ddr4_dqs_c,
  inout [17:0]c1_ddr4_dqs_t,
  output [0:0]c1_ddr4_odt,
  output c1_ddr4_par,
  output c1_ddr4_reset_n,
  input [15:0]pcie_mgt_rxn,
  input [15:0]pcie_mgt_rxp,
  output [15:0]pcie_mgt_txn,
  output [15:0]pcie_mgt_txp,
  input         sys_clk_p,
  input         sys_clk_n,
  input         sys_rst_n );

  wire sys_rst_n_c;
  wire sys_clk;
  wire sys_clk_gt;
  wire clk_out_125M;
  wire clk_out_250M;
  wire clk_out_PROG;
  wire axi_reset_n_out;

  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_araddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_arprot;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_arvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_awaddr;
  wire [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_awprot;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_awvalid;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_bready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_bresp;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_rdata;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_rready;
  wire [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_rresp;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  wire [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_wdata;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  wire [3:0]M_AXI_LITE_TO_HLS_PR_NORTH_wstrb;
  wire M_AXI_LITE_TO_HLS_PR_NORTH_wvalid;

  wire [63:0]M_AXI_MM_FROM_HLS_PR_NORTH_araddr;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_arburst;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_arcache;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_NORTH_arlen;
  wire [0:0]M_AXI_MM_FROM_HLS_PR_NORTH_arlock;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_arprot;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_arqos;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_arready;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_arregion;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_arsize;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_arvalid;
  wire [63:0]M_AXI_MM_FROM_HLS_PR_NORTH_awaddr;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_awburst;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_awcache;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_NORTH_awlen;
  wire [0:0]M_AXI_MM_FROM_HLS_PR_NORTH_awlock;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_awprot;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_awqos;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_awready;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_awregion;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_awsize;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_awvalid;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_bready;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_bresp;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_bvalid;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_NORTH_rdata;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_rlast;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_rready;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_rresp;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_rvalid;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_NORTH_wdata;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_wlast;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_wready;
  wire [63:0]M_AXI_MM_FROM_HLS_PR_NORTH_wstrb;
  wire M_AXI_MM_FROM_HLS_PR_NORTH_wvalid;

  IBUF   sys_reset_n_ibuf (.O(sys_rst_n_c), .I(sys_rst_n));
  IBUFDS_GTE4 refclk_ibuf (.O(sys_clk_gt), .ODIV2(sys_clk), .I(sys_clk_p), .CEB(1'b0), .IB(sys_clk_n));

  shell_top U_shell_top (
        .C1_SYS_CLK_clk_n(c1_sys_clk_n),
        .C1_SYS_CLK_clk_p(c1_sys_clk_p),
        .DDR4_sys_rst(1'b0),
        .M_AXI_LITE_TO_HLS_PR_NORTH_araddr(M_AXI_LITE_TO_HLS_PR_NORTH_araddr),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arprot(M_AXI_LITE_TO_HLS_PR_NORTH_arprot),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arready(M_AXI_LITE_TO_HLS_PR_NORTH_arready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_arvalid(M_AXI_LITE_TO_HLS_PR_NORTH_arvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awaddr(M_AXI_LITE_TO_HLS_PR_NORTH_awaddr),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awprot(M_AXI_LITE_TO_HLS_PR_NORTH_awprot),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awready(M_AXI_LITE_TO_HLS_PR_NORTH_awready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_awvalid(M_AXI_LITE_TO_HLS_PR_NORTH_awvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bready(M_AXI_LITE_TO_HLS_PR_NORTH_bready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bresp(M_AXI_LITE_TO_HLS_PR_NORTH_bresp),
        .M_AXI_LITE_TO_HLS_PR_NORTH_bvalid(M_AXI_LITE_TO_HLS_PR_NORTH_bvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rdata(M_AXI_LITE_TO_HLS_PR_NORTH_rdata),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rready(M_AXI_LITE_TO_HLS_PR_NORTH_rready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rresp(M_AXI_LITE_TO_HLS_PR_NORTH_rresp),
        .M_AXI_LITE_TO_HLS_PR_NORTH_rvalid(M_AXI_LITE_TO_HLS_PR_NORTH_rvalid),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wdata(M_AXI_LITE_TO_HLS_PR_NORTH_wdata),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wready(M_AXI_LITE_TO_HLS_PR_NORTH_wready),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wstrb(M_AXI_LITE_TO_HLS_PR_NORTH_wstrb),
        .M_AXI_LITE_TO_HLS_PR_NORTH_wvalid(M_AXI_LITE_TO_HLS_PR_NORTH_wvalid),
        .M_AXI_MM_FROM_HLS_PR_NORTH_araddr(M_AXI_MM_FROM_HLS_PR_NORTH_araddr),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arburst(M_AXI_MM_FROM_HLS_PR_NORTH_arburst),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arcache(M_AXI_MM_FROM_HLS_PR_NORTH_arcache),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arlen(M_AXI_MM_FROM_HLS_PR_NORTH_arlen),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arlock(M_AXI_MM_FROM_HLS_PR_NORTH_arlock),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arprot(M_AXI_MM_FROM_HLS_PR_NORTH_arprot),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arqos(M_AXI_MM_FROM_HLS_PR_NORTH_arqos),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arready(M_AXI_MM_FROM_HLS_PR_NORTH_arready),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arregion(M_AXI_MM_FROM_HLS_PR_NORTH_arregion),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arsize(M_AXI_MM_FROM_HLS_PR_NORTH_arsize),
        .M_AXI_MM_FROM_HLS_PR_NORTH_arvalid(M_AXI_MM_FROM_HLS_PR_NORTH_arvalid),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awaddr(M_AXI_MM_FROM_HLS_PR_NORTH_awaddr),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awburst(M_AXI_MM_FROM_HLS_PR_NORTH_awburst),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awcache(M_AXI_MM_FROM_HLS_PR_NORTH_awcache),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awlen(M_AXI_MM_FROM_HLS_PR_NORTH_awlen),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awlock(M_AXI_MM_FROM_HLS_PR_NORTH_awlock),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awprot(M_AXI_MM_FROM_HLS_PR_NORTH_awprot),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awqos(M_AXI_MM_FROM_HLS_PR_NORTH_awqos),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awready(M_AXI_MM_FROM_HLS_PR_NORTH_awready),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awregion(M_AXI_MM_FROM_HLS_PR_NORTH_awregion),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awsize(M_AXI_MM_FROM_HLS_PR_NORTH_awsize),
        .M_AXI_MM_FROM_HLS_PR_NORTH_awvalid(M_AXI_MM_FROM_HLS_PR_NORTH_awvalid),
        .M_AXI_MM_FROM_HLS_PR_NORTH_bready(M_AXI_MM_FROM_HLS_PR_NORTH_bready),
        .M_AXI_MM_FROM_HLS_PR_NORTH_bresp(M_AXI_MM_FROM_HLS_PR_NORTH_bresp),
        .M_AXI_MM_FROM_HLS_PR_NORTH_bvalid(M_AXI_MM_FROM_HLS_PR_NORTH_bvalid),
        .M_AXI_MM_FROM_HLS_PR_NORTH_rdata(M_AXI_MM_FROM_HLS_PR_NORTH_rdata),
        .M_AXI_MM_FROM_HLS_PR_NORTH_rlast(M_AXI_MM_FROM_HLS_PR_NORTH_rlast),
        .M_AXI_MM_FROM_HLS_PR_NORTH_rready(M_AXI_MM_FROM_HLS_PR_NORTH_rready),
        .M_AXI_MM_FROM_HLS_PR_NORTH_rresp(M_AXI_MM_FROM_HLS_PR_NORTH_rresp),
        .M_AXI_MM_FROM_HLS_PR_NORTH_rvalid(M_AXI_MM_FROM_HLS_PR_NORTH_rvalid),
        .M_AXI_MM_FROM_HLS_PR_NORTH_wdata(M_AXI_MM_FROM_HLS_PR_NORTH_wdata),
        .M_AXI_MM_FROM_HLS_PR_NORTH_wlast(M_AXI_MM_FROM_HLS_PR_NORTH_wlast),
        .M_AXI_MM_FROM_HLS_PR_NORTH_wready(M_AXI_MM_FROM_HLS_PR_NORTH_wready),
        .M_AXI_MM_FROM_HLS_PR_NORTH_wstrb(M_AXI_MM_FROM_HLS_PR_NORTH_wstrb),
        .M_AXI_MM_FROM_HLS_PR_NORTH_wvalid(M_AXI_MM_FROM_HLS_PR_NORTH_wvalid),
        .axi_reset_n_out(axi_reset_n_out),
        .c1_ddr4_act_n(c1_ddr4_act_n),
        .c1_ddr4_adr(c1_ddr4_adr),
        .c1_ddr4_ba(c1_ddr4_ba),
        .c1_ddr4_bg(c1_ddr4_bg),
        .c1_ddr4_ck_c(c1_ddr4_ck_c),
        .c1_ddr4_ck_t(c1_ddr4_ck_t),
        .c1_ddr4_cke(c1_ddr4_cke),
        .c1_ddr4_cs_n(c1_ddr4_cs_n),
        .c1_ddr4_par(c1_ddr4_par),
        .c1_ddr4_dq(c1_ddr4_dq),
        .c1_ddr4_dqs_c(c1_ddr4_dqs_c),
        .c1_ddr4_dqs_t(c1_ddr4_dqs_t),
        .c1_ddr4_odt(c1_ddr4_odt),
        .c1_ddr4_reset_n(c1_ddr4_reset_n),
        .clk_out_125M(clk_out_125M),
        .clk_out_250M(clk_out_250M),
        .clk_out_PROG(clk_out_PROG),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .sys_clk(sys_clk),
        .sys_clk_gt(sys_clk_gt),
        .sys_rst_n(sys_rst_n_c));


  role_NORTH U_role_NORTH (
        .AXI_RESET_N(axi_reset_n_out),
        .CLK_IN_250(clk_out_250M),
        .CLK_IN_125M(clk_out_125M),
        .CLK_IN_PROG(clk_out_PROG),
        .M_AXI_NORTH_TO_STATIC_araddr(M_AXI_MM_FROM_HLS_PR_NORTH_araddr),
        .M_AXI_NORTH_TO_STATIC_arburst(M_AXI_MM_FROM_HLS_PR_NORTH_arburst),
        .M_AXI_NORTH_TO_STATIC_arcache(M_AXI_MM_FROM_HLS_PR_NORTH_arcache),
        .M_AXI_NORTH_TO_STATIC_arlen(M_AXI_MM_FROM_HLS_PR_NORTH_arlen),
        .M_AXI_NORTH_TO_STATIC_arlock(M_AXI_MM_FROM_HLS_PR_NORTH_arlock),
        .M_AXI_NORTH_TO_STATIC_arprot(M_AXI_MM_FROM_HLS_PR_NORTH_arprot),
        .M_AXI_NORTH_TO_STATIC_arqos(M_AXI_MM_FROM_HLS_PR_NORTH_arqos),
        .M_AXI_NORTH_TO_STATIC_arready(M_AXI_MM_FROM_HLS_PR_NORTH_arready),
        .M_AXI_NORTH_TO_STATIC_arregion(M_AXI_MM_FROM_HLS_PR_NORTH_arregion),
        .M_AXI_NORTH_TO_STATIC_arsize(M_AXI_MM_FROM_HLS_PR_NORTH_arsize),
        .M_AXI_NORTH_TO_STATIC_arvalid(M_AXI_MM_FROM_HLS_PR_NORTH_arvalid),
        .M_AXI_NORTH_TO_STATIC_awaddr(M_AXI_MM_FROM_HLS_PR_NORTH_awaddr),
        .M_AXI_NORTH_TO_STATIC_awburst(M_AXI_MM_FROM_HLS_PR_NORTH_awburst),
        .M_AXI_NORTH_TO_STATIC_awcache(M_AXI_MM_FROM_HLS_PR_NORTH_awcache),
        .M_AXI_NORTH_TO_STATIC_awlen(M_AXI_MM_FROM_HLS_PR_NORTH_awlen),
        .M_AXI_NORTH_TO_STATIC_awlock(M_AXI_MM_FROM_HLS_PR_NORTH_awlock),
        .M_AXI_NORTH_TO_STATIC_awprot(M_AXI_MM_FROM_HLS_PR_NORTH_awprot),
        .M_AXI_NORTH_TO_STATIC_awqos(M_AXI_MM_FROM_HLS_PR_NORTH_awqos),
        .M_AXI_NORTH_TO_STATIC_awready(M_AXI_MM_FROM_HLS_PR_NORTH_awready),
        .M_AXI_NORTH_TO_STATIC_awregion(M_AXI_MM_FROM_HLS_PR_NORTH_awregion),
        .M_AXI_NORTH_TO_STATIC_awsize(M_AXI_MM_FROM_HLS_PR_NORTH_awsize),
        .M_AXI_NORTH_TO_STATIC_awvalid(M_AXI_MM_FROM_HLS_PR_NORTH_awvalid),
        .M_AXI_NORTH_TO_STATIC_bready(M_AXI_MM_FROM_HLS_PR_NORTH_bready),
        .M_AXI_NORTH_TO_STATIC_bresp(M_AXI_MM_FROM_HLS_PR_NORTH_bresp),
        .M_AXI_NORTH_TO_STATIC_bvalid(M_AXI_MM_FROM_HLS_PR_NORTH_bvalid),
        .M_AXI_NORTH_TO_STATIC_rdata(M_AXI_MM_FROM_HLS_PR_NORTH_rdata),
        .M_AXI_NORTH_TO_STATIC_rlast(M_AXI_MM_FROM_HLS_PR_NORTH_rlast),
        .M_AXI_NORTH_TO_STATIC_rready(M_AXI_MM_FROM_HLS_PR_NORTH_rready),
        .M_AXI_NORTH_TO_STATIC_rresp(M_AXI_MM_FROM_HLS_PR_NORTH_rresp),
        .M_AXI_NORTH_TO_STATIC_rvalid(M_AXI_MM_FROM_HLS_PR_NORTH_rvalid),
        .M_AXI_NORTH_TO_STATIC_wdata(M_AXI_MM_FROM_HLS_PR_NORTH_wdata),
        .M_AXI_NORTH_TO_STATIC_wlast(M_AXI_MM_FROM_HLS_PR_NORTH_wlast),
        .M_AXI_NORTH_TO_STATIC_wready(M_AXI_MM_FROM_HLS_PR_NORTH_wready),
        .M_AXI_NORTH_TO_STATIC_wstrb(M_AXI_MM_FROM_HLS_PR_NORTH_wstrb),
        .M_AXI_NORTH_TO_STATIC_wvalid(M_AXI_MM_FROM_HLS_PR_NORTH_wvalid),
        .S_AXI_LITE_NORTH_FROM_STATIC_araddr(M_AXI_LITE_TO_HLS_PR_NORTH_araddr),
        .S_AXI_LITE_NORTH_FROM_STATIC_arprot(M_AXI_LITE_TO_HLS_PR_NORTH_arprot),
        .S_AXI_LITE_NORTH_FROM_STATIC_arready(M_AXI_LITE_TO_HLS_PR_NORTH_arready),
        .S_AXI_LITE_NORTH_FROM_STATIC_arvalid(M_AXI_LITE_TO_HLS_PR_NORTH_arvalid),
        .S_AXI_LITE_NORTH_FROM_STATIC_awaddr(M_AXI_LITE_TO_HLS_PR_NORTH_awaddr),
        .S_AXI_LITE_NORTH_FROM_STATIC_awprot(M_AXI_LITE_TO_HLS_PR_NORTH_awprot),
        .S_AXI_LITE_NORTH_FROM_STATIC_awready(M_AXI_LITE_TO_HLS_PR_NORTH_awready),
        .S_AXI_LITE_NORTH_FROM_STATIC_awvalid(M_AXI_LITE_TO_HLS_PR_NORTH_awvalid),
        .S_AXI_LITE_NORTH_FROM_STATIC_bready(M_AXI_LITE_TO_HLS_PR_NORTH_bready),
        .S_AXI_LITE_NORTH_FROM_STATIC_bresp(M_AXI_LITE_TO_HLS_PR_NORTH_bresp),
        .S_AXI_LITE_NORTH_FROM_STATIC_bvalid(M_AXI_LITE_TO_HLS_PR_NORTH_bvalid),
        .S_AXI_LITE_NORTH_FROM_STATIC_rdata(M_AXI_LITE_TO_HLS_PR_NORTH_rdata),
        .S_AXI_LITE_NORTH_FROM_STATIC_rready(M_AXI_LITE_TO_HLS_PR_NORTH_rready),
        .S_AXI_LITE_NORTH_FROM_STATIC_rresp(M_AXI_LITE_TO_HLS_PR_NORTH_rresp),
        .S_AXI_LITE_NORTH_FROM_STATIC_rvalid(M_AXI_LITE_TO_HLS_PR_NORTH_rvalid),
        .S_AXI_LITE_NORTH_FROM_STATIC_wdata(M_AXI_LITE_TO_HLS_PR_NORTH_wdata),
        .S_AXI_LITE_NORTH_FROM_STATIC_wready(M_AXI_LITE_TO_HLS_PR_NORTH_wready),
        .S_AXI_LITE_NORTH_FROM_STATIC_wstrb(M_AXI_LITE_TO_HLS_PR_NORTH_wstrb),
        .S_AXI_LITE_NORTH_FROM_STATIC_wvalid(M_AXI_LITE_TO_HLS_PR_NORTH_wvalid));


endmodule
