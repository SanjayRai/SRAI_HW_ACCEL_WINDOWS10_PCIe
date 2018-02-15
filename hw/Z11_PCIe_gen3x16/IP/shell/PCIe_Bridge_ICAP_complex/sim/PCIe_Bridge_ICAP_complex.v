//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Wed Jan 10 17:24:56 2018
//Host        : mcwhite running 64-bit CentOS Linux release 7.4.1708 (Core)
//Command     : generate_target PCIe_Bridge_ICAP_complex.bd
//Design      : PCIe_Bridge_ICAP_complex
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_LITE_2Stage_reg_imp_RLXSXK
   (M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    aresetn);
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input aresetn;

  wire [31:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire aclk_1;
  wire aresetn_1;
  wire [31:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [31:0]axi_register_slice_0_M_AXI_RDATA;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [31:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [3:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;

  assign Conn1_ARREADY = M_AXI_arready;
  assign Conn1_AWREADY = M_AXI_awready;
  assign Conn1_BRESP = M_AXI_bresp[1:0];
  assign Conn1_BVALID = M_AXI_bvalid;
  assign Conn1_RDATA = M_AXI_rdata[31:0];
  assign Conn1_RRESP = M_AXI_rresp[1:0];
  assign Conn1_RVALID = M_AXI_rvalid;
  assign Conn1_WREADY = M_AXI_wready;
  assign M_AXI_araddr[31:0] = Conn1_ARADDR;
  assign M_AXI_arprot[2:0] = Conn1_ARPROT;
  assign M_AXI_arvalid = Conn1_ARVALID;
  assign M_AXI_awaddr[31:0] = Conn1_AWADDR;
  assign M_AXI_awprot[2:0] = Conn1_AWPROT;
  assign M_AXI_awvalid = Conn1_AWVALID;
  assign M_AXI_bready = Conn1_BREADY;
  assign M_AXI_rready = Conn1_RREADY;
  assign M_AXI_wdata[31:0] = Conn1_WDATA;
  assign M_AXI_wstrb[3:0] = Conn1_WSTRB;
  assign M_AXI_wvalid = Conn1_WVALID;
  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  PCIe_Bridge_ICAP_complex_axi_register_slice_0_4 axi_register_slice_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
  PCIe_Bridge_ICAP_complex_axi_register_slice_0_5 axi_register_slice_1
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(Conn1_ARADDR),
        .m_axi_arprot(Conn1_ARPROT),
        .m_axi_arready(Conn1_ARREADY),
        .m_axi_arvalid(Conn1_ARVALID),
        .m_axi_awaddr(Conn1_AWADDR),
        .m_axi_awprot(Conn1_AWPROT),
        .m_axi_awready(Conn1_AWREADY),
        .m_axi_awvalid(Conn1_AWVALID),
        .m_axi_bready(Conn1_BREADY),
        .m_axi_bresp(Conn1_BRESP),
        .m_axi_bvalid(Conn1_BVALID),
        .m_axi_rdata(Conn1_RDATA),
        .m_axi_rready(Conn1_RREADY),
        .m_axi_rresp(Conn1_RRESP),
        .m_axi_rvalid(Conn1_RVALID),
        .m_axi_wdata(Conn1_WDATA),
        .m_axi_wready(Conn1_WREADY),
        .m_axi_wstrb(Conn1_WSTRB),
        .m_axi_wvalid(Conn1_WVALID),
        .s_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .s_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .s_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .s_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .s_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .s_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .s_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .s_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .s_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_0_M_AXI_WVALID));
endmodule

module AXI_MM_2_stage_reg_imp_1FXQ2OE
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    aresetn);
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input aresetn;

  wire [63:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [3:0]Conn1_ARREGION;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [63:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [3:0]Conn1_AWREGION;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [511:0]Conn1_RDATA;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [511:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [63:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [63:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [3:0]Conn2_ARREGION;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [63:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [3:0]Conn2_AWREGION;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [511:0]Conn2_RDATA;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [511:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [63:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire axi_pcie3_0_axi_aclk;
  wire axi_pcie3_0_axi_aresetn;
  wire [63:0]axi_register_slice_1_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_1_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_1_M_AXI_ARCACHE;
  wire [7:0]axi_register_slice_1_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_1_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_1_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_1_M_AXI_ARQOS;
  wire axi_register_slice_1_M_AXI_ARREADY;
  wire [3:0]axi_register_slice_1_M_AXI_ARREGION;
  wire [2:0]axi_register_slice_1_M_AXI_ARSIZE;
  wire axi_register_slice_1_M_AXI_ARVALID;
  wire [63:0]axi_register_slice_1_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_1_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_1_M_AXI_AWCACHE;
  wire [7:0]axi_register_slice_1_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_1_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_1_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_1_M_AXI_AWQOS;
  wire axi_register_slice_1_M_AXI_AWREADY;
  wire [3:0]axi_register_slice_1_M_AXI_AWREGION;
  wire [2:0]axi_register_slice_1_M_AXI_AWSIZE;
  wire axi_register_slice_1_M_AXI_AWVALID;
  wire axi_register_slice_1_M_AXI_BREADY;
  wire [1:0]axi_register_slice_1_M_AXI_BRESP;
  wire axi_register_slice_1_M_AXI_BVALID;
  wire [511:0]axi_register_slice_1_M_AXI_RDATA;
  wire axi_register_slice_1_M_AXI_RLAST;
  wire axi_register_slice_1_M_AXI_RREADY;
  wire [1:0]axi_register_slice_1_M_AXI_RRESP;
  wire axi_register_slice_1_M_AXI_RVALID;
  wire [511:0]axi_register_slice_1_M_AXI_WDATA;
  wire axi_register_slice_1_M_AXI_WLAST;
  wire axi_register_slice_1_M_AXI_WREADY;
  wire [63:0]axi_register_slice_1_M_AXI_WSTRB;
  wire axi_register_slice_1_M_AXI_WVALID;

  assign Conn1_ARREADY = M_AXI_arready;
  assign Conn1_AWREADY = M_AXI_awready;
  assign Conn1_BRESP = M_AXI_bresp[1:0];
  assign Conn1_BVALID = M_AXI_bvalid;
  assign Conn1_RDATA = M_AXI_rdata[511:0];
  assign Conn1_RLAST = M_AXI_rlast;
  assign Conn1_RRESP = M_AXI_rresp[1:0];
  assign Conn1_RVALID = M_AXI_rvalid;
  assign Conn1_WREADY = M_AXI_wready;
  assign Conn2_ARADDR = S_AXI_araddr[63:0];
  assign Conn2_ARBURST = S_AXI_arburst[1:0];
  assign Conn2_ARCACHE = S_AXI_arcache[3:0];
  assign Conn2_ARLEN = S_AXI_arlen[7:0];
  assign Conn2_ARLOCK = S_AXI_arlock[0];
  assign Conn2_ARPROT = S_AXI_arprot[2:0];
  assign Conn2_ARQOS = S_AXI_arqos[3:0];
  assign Conn2_ARREGION = S_AXI_arregion[3:0];
  assign Conn2_ARSIZE = S_AXI_arsize[2:0];
  assign Conn2_ARVALID = S_AXI_arvalid;
  assign Conn2_AWADDR = S_AXI_awaddr[63:0];
  assign Conn2_AWBURST = S_AXI_awburst[1:0];
  assign Conn2_AWCACHE = S_AXI_awcache[3:0];
  assign Conn2_AWLEN = S_AXI_awlen[7:0];
  assign Conn2_AWLOCK = S_AXI_awlock[0];
  assign Conn2_AWPROT = S_AXI_awprot[2:0];
  assign Conn2_AWQOS = S_AXI_awqos[3:0];
  assign Conn2_AWREGION = S_AXI_awregion[3:0];
  assign Conn2_AWSIZE = S_AXI_awsize[2:0];
  assign Conn2_AWVALID = S_AXI_awvalid;
  assign Conn2_BREADY = S_AXI_bready;
  assign Conn2_RREADY = S_AXI_rready;
  assign Conn2_WDATA = S_AXI_wdata[511:0];
  assign Conn2_WLAST = S_AXI_wlast;
  assign Conn2_WSTRB = S_AXI_wstrb[63:0];
  assign Conn2_WVALID = S_AXI_wvalid;
  assign M_AXI_araddr[63:0] = Conn1_ARADDR;
  assign M_AXI_arburst[1:0] = Conn1_ARBURST;
  assign M_AXI_arcache[3:0] = Conn1_ARCACHE;
  assign M_AXI_arlen[7:0] = Conn1_ARLEN;
  assign M_AXI_arlock[0] = Conn1_ARLOCK;
  assign M_AXI_arprot[2:0] = Conn1_ARPROT;
  assign M_AXI_arqos[3:0] = Conn1_ARQOS;
  assign M_AXI_arregion[3:0] = Conn1_ARREGION;
  assign M_AXI_arsize[2:0] = Conn1_ARSIZE;
  assign M_AXI_arvalid = Conn1_ARVALID;
  assign M_AXI_awaddr[63:0] = Conn1_AWADDR;
  assign M_AXI_awburst[1:0] = Conn1_AWBURST;
  assign M_AXI_awcache[3:0] = Conn1_AWCACHE;
  assign M_AXI_awlen[7:0] = Conn1_AWLEN;
  assign M_AXI_awlock[0] = Conn1_AWLOCK;
  assign M_AXI_awprot[2:0] = Conn1_AWPROT;
  assign M_AXI_awqos[3:0] = Conn1_AWQOS;
  assign M_AXI_awregion[3:0] = Conn1_AWREGION;
  assign M_AXI_awsize[2:0] = Conn1_AWSIZE;
  assign M_AXI_awvalid = Conn1_AWVALID;
  assign M_AXI_bready = Conn1_BREADY;
  assign M_AXI_rready = Conn1_RREADY;
  assign M_AXI_wdata[511:0] = Conn1_WDATA;
  assign M_AXI_wlast = Conn1_WLAST;
  assign M_AXI_wstrb[63:0] = Conn1_WSTRB;
  assign M_AXI_wvalid = Conn1_WVALID;
  assign S_AXI_arready = Conn2_ARREADY;
  assign S_AXI_awready = Conn2_AWREADY;
  assign S_AXI_bresp[1:0] = Conn2_BRESP;
  assign S_AXI_bvalid = Conn2_BVALID;
  assign S_AXI_rdata[511:0] = Conn2_RDATA;
  assign S_AXI_rlast = Conn2_RLAST;
  assign S_AXI_rresp[1:0] = Conn2_RRESP;
  assign S_AXI_rvalid = Conn2_RVALID;
  assign S_AXI_wready = Conn2_WREADY;
  assign axi_pcie3_0_axi_aclk = aclk;
  assign axi_pcie3_0_axi_aresetn = aresetn;
  PCIe_Bridge_ICAP_complex_axi_register_slice_0_1 axi_register_slice_1
       (.aclk(axi_pcie3_0_axi_aclk),
        .aresetn(axi_pcie3_0_axi_aresetn),
        .m_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_1_M_AXI_ARCACHE),
        .m_axi_arlen(axi_register_slice_1_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_1_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_1_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .m_axi_arregion(axi_register_slice_1_M_AXI_ARREGION),
        .m_axi_arsize(axi_register_slice_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_1_M_AXI_AWCACHE),
        .m_axi_awlen(axi_register_slice_1_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_1_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_1_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .m_axi_awregion(axi_register_slice_1_M_AXI_AWREGION),
        .m_axi_awsize(axi_register_slice_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .m_axi_rlast(axi_register_slice_1_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_1_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .s_axi_araddr(Conn2_ARADDR),
        .s_axi_arburst(Conn2_ARBURST),
        .s_axi_arcache(Conn2_ARCACHE),
        .s_axi_arlen(Conn2_ARLEN),
        .s_axi_arlock(Conn2_ARLOCK),
        .s_axi_arprot(Conn2_ARPROT),
        .s_axi_arqos(Conn2_ARQOS),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arregion(Conn2_ARREGION),
        .s_axi_arsize(Conn2_ARSIZE),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR),
        .s_axi_awburst(Conn2_AWBURST),
        .s_axi_awcache(Conn2_AWCACHE),
        .s_axi_awlen(Conn2_AWLEN),
        .s_axi_awlock(Conn2_AWLOCK),
        .s_axi_awprot(Conn2_AWPROT),
        .s_axi_awqos(Conn2_AWQOS),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awregion(Conn2_AWREGION),
        .s_axi_awsize(Conn2_AWSIZE),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rlast(Conn2_RLAST),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wlast(Conn2_WLAST),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID));
  PCIe_Bridge_ICAP_complex_axi_register_slice_1_0 axi_register_slice_2
       (.aclk(axi_pcie3_0_axi_aclk),
        .aresetn(axi_pcie3_0_axi_aresetn),
        .m_axi_araddr(Conn1_ARADDR),
        .m_axi_arburst(Conn1_ARBURST),
        .m_axi_arcache(Conn1_ARCACHE),
        .m_axi_arlen(Conn1_ARLEN),
        .m_axi_arlock(Conn1_ARLOCK),
        .m_axi_arprot(Conn1_ARPROT),
        .m_axi_arqos(Conn1_ARQOS),
        .m_axi_arready(Conn1_ARREADY),
        .m_axi_arregion(Conn1_ARREGION),
        .m_axi_arsize(Conn1_ARSIZE),
        .m_axi_arvalid(Conn1_ARVALID),
        .m_axi_awaddr(Conn1_AWADDR),
        .m_axi_awburst(Conn1_AWBURST),
        .m_axi_awcache(Conn1_AWCACHE),
        .m_axi_awlen(Conn1_AWLEN),
        .m_axi_awlock(Conn1_AWLOCK),
        .m_axi_awprot(Conn1_AWPROT),
        .m_axi_awqos(Conn1_AWQOS),
        .m_axi_awready(Conn1_AWREADY),
        .m_axi_awregion(Conn1_AWREGION),
        .m_axi_awsize(Conn1_AWSIZE),
        .m_axi_awvalid(Conn1_AWVALID),
        .m_axi_bready(Conn1_BREADY),
        .m_axi_bresp(Conn1_BRESP),
        .m_axi_bvalid(Conn1_BVALID),
        .m_axi_rdata(Conn1_RDATA),
        .m_axi_rlast(Conn1_RLAST),
        .m_axi_rready(Conn1_RREADY),
        .m_axi_rresp(Conn1_RRESP),
        .m_axi_rvalid(Conn1_RVALID),
        .m_axi_wdata(Conn1_WDATA),
        .m_axi_wlast(Conn1_WLAST),
        .m_axi_wready(Conn1_WREADY),
        .m_axi_wstrb(Conn1_WSTRB),
        .m_axi_wvalid(Conn1_WVALID),
        .s_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .s_axi_arburst(axi_register_slice_1_M_AXI_ARBURST),
        .s_axi_arcache(axi_register_slice_1_M_AXI_ARCACHE),
        .s_axi_arlen(axi_register_slice_1_M_AXI_ARLEN),
        .s_axi_arlock(axi_register_slice_1_M_AXI_ARLOCK),
        .s_axi_arprot(axi_register_slice_1_M_AXI_ARPROT),
        .s_axi_arqos(axi_register_slice_1_M_AXI_ARQOS),
        .s_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .s_axi_arregion(axi_register_slice_1_M_AXI_ARREGION),
        .s_axi_arsize(axi_register_slice_1_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .s_axi_awburst(axi_register_slice_1_M_AXI_AWBURST),
        .s_axi_awcache(axi_register_slice_1_M_AXI_AWCACHE),
        .s_axi_awlen(axi_register_slice_1_M_AXI_AWLEN),
        .s_axi_awlock(axi_register_slice_1_M_AXI_AWLOCK),
        .s_axi_awprot(axi_register_slice_1_M_AXI_AWPROT),
        .s_axi_awqos(axi_register_slice_1_M_AXI_AWQOS),
        .s_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .s_axi_awregion(axi_register_slice_1_M_AXI_AWREGION),
        .s_axi_awsize(axi_register_slice_1_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .s_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .s_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .s_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .s_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .s_axi_rlast(axi_register_slice_1_M_AXI_RLAST),
        .s_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .s_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .s_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .s_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .s_axi_wlast(axi_register_slice_1_M_AXI_WLAST),
        .s_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .s_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_register_slice_1_M_AXI_WVALID));
endmodule

module FROM_SH_AXI_LITE_NORTH_imp_WXQM5Q
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    aresetn,
    decouple,
    rp_AXI_LITE_TO_HLS_PR_0_araddr,
    rp_AXI_LITE_TO_HLS_PR_0_arprot,
    rp_AXI_LITE_TO_HLS_PR_0_arready,
    rp_AXI_LITE_TO_HLS_PR_0_arvalid,
    rp_AXI_LITE_TO_HLS_PR_0_awaddr,
    rp_AXI_LITE_TO_HLS_PR_0_awprot,
    rp_AXI_LITE_TO_HLS_PR_0_awready,
    rp_AXI_LITE_TO_HLS_PR_0_awvalid,
    rp_AXI_LITE_TO_HLS_PR_0_bready,
    rp_AXI_LITE_TO_HLS_PR_0_bresp,
    rp_AXI_LITE_TO_HLS_PR_0_bvalid,
    rp_AXI_LITE_TO_HLS_PR_0_rdata,
    rp_AXI_LITE_TO_HLS_PR_0_rready,
    rp_AXI_LITE_TO_HLS_PR_0_rresp,
    rp_AXI_LITE_TO_HLS_PR_0_rvalid,
    rp_AXI_LITE_TO_HLS_PR_0_wdata,
    rp_AXI_LITE_TO_HLS_PR_0_wready,
    rp_AXI_LITE_TO_HLS_PR_0_wstrb,
    rp_AXI_LITE_TO_HLS_PR_0_wvalid);
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input aresetn;
  input decouple;
  output [31:0]rp_AXI_LITE_TO_HLS_PR_0_araddr;
  output [2:0]rp_AXI_LITE_TO_HLS_PR_0_arprot;
  input rp_AXI_LITE_TO_HLS_PR_0_arready;
  output rp_AXI_LITE_TO_HLS_PR_0_arvalid;
  output [31:0]rp_AXI_LITE_TO_HLS_PR_0_awaddr;
  output [2:0]rp_AXI_LITE_TO_HLS_PR_0_awprot;
  input rp_AXI_LITE_TO_HLS_PR_0_awready;
  output rp_AXI_LITE_TO_HLS_PR_0_awvalid;
  output rp_AXI_LITE_TO_HLS_PR_0_bready;
  input [1:0]rp_AXI_LITE_TO_HLS_PR_0_bresp;
  input rp_AXI_LITE_TO_HLS_PR_0_bvalid;
  input [31:0]rp_AXI_LITE_TO_HLS_PR_0_rdata;
  output rp_AXI_LITE_TO_HLS_PR_0_rready;
  input [1:0]rp_AXI_LITE_TO_HLS_PR_0_rresp;
  input rp_AXI_LITE_TO_HLS_PR_0_rvalid;
  output [31:0]rp_AXI_LITE_TO_HLS_PR_0_wdata;
  input rp_AXI_LITE_TO_HLS_PR_0_wready;
  output [3:0]rp_AXI_LITE_TO_HLS_PR_0_wstrb;
  output rp_AXI_LITE_TO_HLS_PR_0_wvalid;

  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_ARADDR;
  wire [2:0]AXI_LITE_3Stage_reg_M_AXI_ARPROT;
  wire AXI_LITE_3Stage_reg_M_AXI_ARREADY;
  wire AXI_LITE_3Stage_reg_M_AXI_ARVALID;
  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_AWADDR;
  wire [2:0]AXI_LITE_3Stage_reg_M_AXI_AWPROT;
  wire AXI_LITE_3Stage_reg_M_AXI_AWREADY;
  wire AXI_LITE_3Stage_reg_M_AXI_AWVALID;
  wire AXI_LITE_3Stage_reg_M_AXI_BREADY;
  wire [1:0]AXI_LITE_3Stage_reg_M_AXI_BRESP;
  wire AXI_LITE_3Stage_reg_M_AXI_BVALID;
  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_RDATA;
  wire AXI_LITE_3Stage_reg_M_AXI_RREADY;
  wire [1:0]AXI_LITE_3Stage_reg_M_AXI_RRESP;
  wire AXI_LITE_3Stage_reg_M_AXI_RVALID;
  wire [31:0]AXI_LITE_3Stage_reg_M_AXI_WDATA;
  wire AXI_LITE_3Stage_reg_M_AXI_WREADY;
  wire [3:0]AXI_LITE_3Stage_reg_M_AXI_WSTRB;
  wire AXI_LITE_3Stage_reg_M_AXI_WVALID;
  wire [31:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [31:0]axi_register_slice_2_M_AXI_ARADDR;
  wire [2:0]axi_register_slice_2_M_AXI_ARPROT;
  wire axi_register_slice_2_M_AXI_ARREADY;
  wire axi_register_slice_2_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_2_M_AXI_AWADDR;
  wire [2:0]axi_register_slice_2_M_AXI_AWPROT;
  wire axi_register_slice_2_M_AXI_AWREADY;
  wire axi_register_slice_2_M_AXI_AWVALID;
  wire axi_register_slice_2_M_AXI_BREADY;
  wire [1:0]axi_register_slice_2_M_AXI_BRESP;
  wire axi_register_slice_2_M_AXI_BVALID;
  wire [31:0]axi_register_slice_2_M_AXI_RDATA;
  wire axi_register_slice_2_M_AXI_RREADY;
  wire [1:0]axi_register_slice_2_M_AXI_RRESP;
  wire axi_register_slice_2_M_AXI_RVALID;
  wire [31:0]axi_register_slice_2_M_AXI_WDATA;
  wire axi_register_slice_2_M_AXI_WREADY;
  wire [3:0]axi_register_slice_2_M_AXI_WSTRB;
  wire axi_register_slice_2_M_AXI_WVALID;
  wire clk_wiz_0_clk_out_125M;
  wire decouple_1;
  wire rst_ddr4_0_300M1_peripheral_aresetn;

  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign axi_register_slice_2_M_AXI_ARREADY = rp_AXI_LITE_TO_HLS_PR_0_arready;
  assign axi_register_slice_2_M_AXI_AWREADY = rp_AXI_LITE_TO_HLS_PR_0_awready;
  assign axi_register_slice_2_M_AXI_BRESP = rp_AXI_LITE_TO_HLS_PR_0_bresp[1:0];
  assign axi_register_slice_2_M_AXI_BVALID = rp_AXI_LITE_TO_HLS_PR_0_bvalid;
  assign axi_register_slice_2_M_AXI_RDATA = rp_AXI_LITE_TO_HLS_PR_0_rdata[31:0];
  assign axi_register_slice_2_M_AXI_RRESP = rp_AXI_LITE_TO_HLS_PR_0_rresp[1:0];
  assign axi_register_slice_2_M_AXI_RVALID = rp_AXI_LITE_TO_HLS_PR_0_rvalid;
  assign axi_register_slice_2_M_AXI_WREADY = rp_AXI_LITE_TO_HLS_PR_0_wready;
  assign clk_wiz_0_clk_out_125M = aclk;
  assign decouple_1 = decouple;
  assign rp_AXI_LITE_TO_HLS_PR_0_araddr[31:0] = axi_register_slice_2_M_AXI_ARADDR;
  assign rp_AXI_LITE_TO_HLS_PR_0_arprot[2:0] = axi_register_slice_2_M_AXI_ARPROT;
  assign rp_AXI_LITE_TO_HLS_PR_0_arvalid = axi_register_slice_2_M_AXI_ARVALID;
  assign rp_AXI_LITE_TO_HLS_PR_0_awaddr[31:0] = axi_register_slice_2_M_AXI_AWADDR;
  assign rp_AXI_LITE_TO_HLS_PR_0_awprot[2:0] = axi_register_slice_2_M_AXI_AWPROT;
  assign rp_AXI_LITE_TO_HLS_PR_0_awvalid = axi_register_slice_2_M_AXI_AWVALID;
  assign rp_AXI_LITE_TO_HLS_PR_0_bready = axi_register_slice_2_M_AXI_BREADY;
  assign rp_AXI_LITE_TO_HLS_PR_0_rready = axi_register_slice_2_M_AXI_RREADY;
  assign rp_AXI_LITE_TO_HLS_PR_0_wdata[31:0] = axi_register_slice_2_M_AXI_WDATA;
  assign rp_AXI_LITE_TO_HLS_PR_0_wstrb[3:0] = axi_register_slice_2_M_AXI_WSTRB;
  assign rp_AXI_LITE_TO_HLS_PR_0_wvalid = axi_register_slice_2_M_AXI_WVALID;
  assign rst_ddr4_0_300M1_peripheral_aresetn = aresetn;
  AXI_LITE_2Stage_reg_imp_RLXSXK AXI_LITE_2Stage_reg
       (.M_AXI_araddr(AXI_LITE_3Stage_reg_M_AXI_ARADDR),
        .M_AXI_arprot(AXI_LITE_3Stage_reg_M_AXI_ARPROT),
        .M_AXI_arready(AXI_LITE_3Stage_reg_M_AXI_ARREADY),
        .M_AXI_arvalid(AXI_LITE_3Stage_reg_M_AXI_ARVALID),
        .M_AXI_awaddr(AXI_LITE_3Stage_reg_M_AXI_AWADDR),
        .M_AXI_awprot(AXI_LITE_3Stage_reg_M_AXI_AWPROT),
        .M_AXI_awready(AXI_LITE_3Stage_reg_M_AXI_AWREADY),
        .M_AXI_awvalid(AXI_LITE_3Stage_reg_M_AXI_AWVALID),
        .M_AXI_bready(AXI_LITE_3Stage_reg_M_AXI_BREADY),
        .M_AXI_bresp(AXI_LITE_3Stage_reg_M_AXI_BRESP),
        .M_AXI_bvalid(AXI_LITE_3Stage_reg_M_AXI_BVALID),
        .M_AXI_rdata(AXI_LITE_3Stage_reg_M_AXI_RDATA),
        .M_AXI_rready(AXI_LITE_3Stage_reg_M_AXI_RREADY),
        .M_AXI_rresp(AXI_LITE_3Stage_reg_M_AXI_RRESP),
        .M_AXI_rvalid(AXI_LITE_3Stage_reg_M_AXI_RVALID),
        .M_AXI_wdata(AXI_LITE_3Stage_reg_M_AXI_WDATA),
        .M_AXI_wready(AXI_LITE_3Stage_reg_M_AXI_WREADY),
        .M_AXI_wstrb(AXI_LITE_3Stage_reg_M_AXI_WSTRB),
        .M_AXI_wvalid(AXI_LITE_3Stage_reg_M_AXI_WVALID),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .aclk(clk_wiz_0_clk_out_125M),
        .aresetn(rst_ddr4_0_300M1_peripheral_aresetn));
  PCIe_Bridge_ICAP_complex_axi_register_slice_1_2 axi_register_slice_2
       (.aclk(clk_wiz_0_clk_out_125M),
        .aresetn(decouple_1),
        .m_axi_araddr(axi_register_slice_2_M_AXI_ARADDR),
        .m_axi_arprot(axi_register_slice_2_M_AXI_ARPROT),
        .m_axi_arready(axi_register_slice_2_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_2_M_AXI_AWADDR),
        .m_axi_awprot(axi_register_slice_2_M_AXI_AWPROT),
        .m_axi_awready(axi_register_slice_2_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_2_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_2_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_2_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_2_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_2_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_2_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_2_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_2_M_AXI_WVALID),
        .s_axi_araddr(AXI_LITE_3Stage_reg_M_AXI_ARADDR),
        .s_axi_arprot(AXI_LITE_3Stage_reg_M_AXI_ARPROT),
        .s_axi_arready(AXI_LITE_3Stage_reg_M_AXI_ARREADY),
        .s_axi_arvalid(AXI_LITE_3Stage_reg_M_AXI_ARVALID),
        .s_axi_awaddr(AXI_LITE_3Stage_reg_M_AXI_AWADDR),
        .s_axi_awprot(AXI_LITE_3Stage_reg_M_AXI_AWPROT),
        .s_axi_awready(AXI_LITE_3Stage_reg_M_AXI_AWREADY),
        .s_axi_awvalid(AXI_LITE_3Stage_reg_M_AXI_AWVALID),
        .s_axi_bready(AXI_LITE_3Stage_reg_M_AXI_BREADY),
        .s_axi_bresp(AXI_LITE_3Stage_reg_M_AXI_BRESP),
        .s_axi_bvalid(AXI_LITE_3Stage_reg_M_AXI_BVALID),
        .s_axi_rdata(AXI_LITE_3Stage_reg_M_AXI_RDATA),
        .s_axi_rready(AXI_LITE_3Stage_reg_M_AXI_RREADY),
        .s_axi_rresp(AXI_LITE_3Stage_reg_M_AXI_RRESP),
        .s_axi_rvalid(AXI_LITE_3Stage_reg_M_AXI_RVALID),
        .s_axi_wdata(AXI_LITE_3Stage_reg_M_AXI_WDATA),
        .s_axi_wready(AXI_LITE_3Stage_reg_M_AXI_WREADY),
        .s_axi_wstrb(AXI_LITE_3Stage_reg_M_AXI_WSTRB),
        .s_axi_wvalid(AXI_LITE_3Stage_reg_M_AXI_WVALID));
endmodule

(* CORE_GENERATION_INFO = "PCIe_Bridge_ICAP_complex,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PCIe_Bridge_ICAP_complex,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=52,numReposBlks=35,numNonXlnxBlks=0,numHierBlks=17,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=6,da_board_cnt=1,da_bram_cntlr_cnt=4,synth_mode=Global}" *) (* HW_HANDOFF = "PCIe_Bridge_ICAP_complex.hwdef" *) 
module PCIe_Bridge_ICAP_complex
   (C1_SYS_CLK_clk_n,
    C1_SYS_CLK_clk_p,
    DDR4_sys_rst,
    M_AXI_LITE_TO_HLS_PR_NORTH_araddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_arprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_arready,
    M_AXI_LITE_TO_HLS_PR_NORTH_arvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_awaddr,
    M_AXI_LITE_TO_HLS_PR_NORTH_awprot,
    M_AXI_LITE_TO_HLS_PR_NORTH_awready,
    M_AXI_LITE_TO_HLS_PR_NORTH_awvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_bready,
    M_AXI_LITE_TO_HLS_PR_NORTH_bresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_bvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_rdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_rready,
    M_AXI_LITE_TO_HLS_PR_NORTH_rresp,
    M_AXI_LITE_TO_HLS_PR_NORTH_rvalid,
    M_AXI_LITE_TO_HLS_PR_NORTH_wdata,
    M_AXI_LITE_TO_HLS_PR_NORTH_wready,
    M_AXI_LITE_TO_HLS_PR_NORTH_wstrb,
    M_AXI_LITE_TO_HLS_PR_NORTH_wvalid,
    M_AXI_MM_FROM_HLS_PR_NORTH_araddr,
    M_AXI_MM_FROM_HLS_PR_NORTH_arburst,
    M_AXI_MM_FROM_HLS_PR_NORTH_arcache,
    M_AXI_MM_FROM_HLS_PR_NORTH_arlen,
    M_AXI_MM_FROM_HLS_PR_NORTH_arlock,
    M_AXI_MM_FROM_HLS_PR_NORTH_arprot,
    M_AXI_MM_FROM_HLS_PR_NORTH_arqos,
    M_AXI_MM_FROM_HLS_PR_NORTH_arready,
    M_AXI_MM_FROM_HLS_PR_NORTH_arregion,
    M_AXI_MM_FROM_HLS_PR_NORTH_arsize,
    M_AXI_MM_FROM_HLS_PR_NORTH_arvalid,
    M_AXI_MM_FROM_HLS_PR_NORTH_awaddr,
    M_AXI_MM_FROM_HLS_PR_NORTH_awburst,
    M_AXI_MM_FROM_HLS_PR_NORTH_awcache,
    M_AXI_MM_FROM_HLS_PR_NORTH_awlen,
    M_AXI_MM_FROM_HLS_PR_NORTH_awlock,
    M_AXI_MM_FROM_HLS_PR_NORTH_awprot,
    M_AXI_MM_FROM_HLS_PR_NORTH_awqos,
    M_AXI_MM_FROM_HLS_PR_NORTH_awready,
    M_AXI_MM_FROM_HLS_PR_NORTH_awregion,
    M_AXI_MM_FROM_HLS_PR_NORTH_awsize,
    M_AXI_MM_FROM_HLS_PR_NORTH_awvalid,
    M_AXI_MM_FROM_HLS_PR_NORTH_bready,
    M_AXI_MM_FROM_HLS_PR_NORTH_bresp,
    M_AXI_MM_FROM_HLS_PR_NORTH_bvalid,
    M_AXI_MM_FROM_HLS_PR_NORTH_rdata,
    M_AXI_MM_FROM_HLS_PR_NORTH_rlast,
    M_AXI_MM_FROM_HLS_PR_NORTH_rready,
    M_AXI_MM_FROM_HLS_PR_NORTH_rresp,
    M_AXI_MM_FROM_HLS_PR_NORTH_rvalid,
    M_AXI_MM_FROM_HLS_PR_NORTH_wdata,
    M_AXI_MM_FROM_HLS_PR_NORTH_wlast,
    M_AXI_MM_FROM_HLS_PR_NORTH_wready,
    M_AXI_MM_FROM_HLS_PR_NORTH_wstrb,
    M_AXI_MM_FROM_HLS_PR_NORTH_wvalid,
    axi_reset_n_out,
    c1_ddr4_act_n,
    c1_ddr4_adr,
    c1_ddr4_ba,
    c1_ddr4_bg,
    c1_ddr4_ck_c,
    c1_ddr4_ck_t,
    c1_ddr4_cke,
    c1_ddr4_cs_n,
    c1_ddr4_dq,
    c1_ddr4_dqs_c,
    c1_ddr4_dqs_t,
    c1_ddr4_odt,
    c1_ddr4_par,
    c1_ddr4_reset_n,
    clk_out_125M,
    clk_out_250M,
    clk_out_PROG,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_clk,
    sys_clk_gt,
    sys_rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C1_SYS_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C1_SYS_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input C1_SYS_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C1_SYS_CLK CLK_P" *) input C1_SYS_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_SYS_RST, POLARITY ACTIVE_HIGH" *) input DDR4_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_LITE_TO_HLS_PR_NORTH, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, DATA_WIDTH 32, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARPROT" *) output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARREADY" *) input M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH ARVALID" *) output M_AXI_LITE_TO_HLS_PR_NORTH_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWADDR" *) output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWPROT" *) output [2:0]M_AXI_LITE_TO_HLS_PR_NORTH_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWREADY" *) input M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH AWVALID" *) output M_AXI_LITE_TO_HLS_PR_NORTH_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH BREADY" *) output M_AXI_LITE_TO_HLS_PR_NORTH_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH BRESP" *) input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH BVALID" *) input M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RDATA" *) input [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RREADY" *) output M_AXI_LITE_TO_HLS_PR_NORTH_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RRESP" *) input [1:0]M_AXI_LITE_TO_HLS_PR_NORTH_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH RVALID" *) input M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WDATA" *) output [31:0]M_AXI_LITE_TO_HLS_PR_NORTH_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WREADY" *) input M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WSTRB" *) output [3:0]M_AXI_LITE_TO_HLS_PR_NORTH_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_TO_HLS_PR_NORTH WVALID" *) output M_AXI_LITE_TO_HLS_PR_NORTH_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_MM_FROM_HLS_PR_NORTH, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]M_AXI_MM_FROM_HLS_PR_NORTH_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARBURST" *) input [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARCACHE" *) input [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARLEN" *) input [7:0]M_AXI_MM_FROM_HLS_PR_NORTH_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARLOCK" *) input [0:0]M_AXI_MM_FROM_HLS_PR_NORTH_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARPROT" *) input [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARQOS" *) input [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARREADY" *) output M_AXI_MM_FROM_HLS_PR_NORTH_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARREGION" *) input [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARSIZE" *) input [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH ARVALID" *) input M_AXI_MM_FROM_HLS_PR_NORTH_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWADDR" *) input [63:0]M_AXI_MM_FROM_HLS_PR_NORTH_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWBURST" *) input [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWCACHE" *) input [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWLEN" *) input [7:0]M_AXI_MM_FROM_HLS_PR_NORTH_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWLOCK" *) input [0:0]M_AXI_MM_FROM_HLS_PR_NORTH_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWPROT" *) input [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWQOS" *) input [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWREADY" *) output M_AXI_MM_FROM_HLS_PR_NORTH_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWREGION" *) input [3:0]M_AXI_MM_FROM_HLS_PR_NORTH_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWSIZE" *) input [2:0]M_AXI_MM_FROM_HLS_PR_NORTH_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH AWVALID" *) input M_AXI_MM_FROM_HLS_PR_NORTH_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH BREADY" *) input M_AXI_MM_FROM_HLS_PR_NORTH_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH BRESP" *) output [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH BVALID" *) output M_AXI_MM_FROM_HLS_PR_NORTH_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH RDATA" *) output [511:0]M_AXI_MM_FROM_HLS_PR_NORTH_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH RLAST" *) output M_AXI_MM_FROM_HLS_PR_NORTH_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH RREADY" *) input M_AXI_MM_FROM_HLS_PR_NORTH_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH RRESP" *) output [1:0]M_AXI_MM_FROM_HLS_PR_NORTH_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH RVALID" *) output M_AXI_MM_FROM_HLS_PR_NORTH_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH WDATA" *) input [511:0]M_AXI_MM_FROM_HLS_PR_NORTH_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH WLAST" *) input M_AXI_MM_FROM_HLS_PR_NORTH_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH WREADY" *) output M_AXI_MM_FROM_HLS_PR_NORTH_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH WSTRB" *) input [63:0]M_AXI_MM_FROM_HLS_PR_NORTH_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_MM_FROM_HLS_PR_NORTH WVALID" *) input M_AXI_MM_FROM_HLS_PR_NORTH_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_RESET_N_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_RESET_N_OUT, POLARITY ACTIVE_LOW" *) output [0:0]axi_reset_n_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c1_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output c1_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ADR" *) output [16:0]c1_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 BA" *) output [1:0]c1_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 BG" *) output [1:0]c1_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CK_C" *) output [0:0]c1_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CK_T" *) output [0:0]c1_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CKE" *) output [0:0]c1_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 CS_N" *) output [0:0]c1_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQ" *) inout [71:0]c1_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQS_C" *) inout [17:0]c1_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 DQS_T" *) inout [17:0]c1_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 ODT" *) output [0:0]c1_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 PAR" *) output c1_ddr4_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c1_ddr4 RESET_N" *) output c1_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_125M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_125M, ASSOCIATED_BUSIF M_AXI_LITE_TO_HLS_PR_NORTH, ASSOCIATED_RESET axi_reset_n_out, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_0_0_clk_out_125M, FREQ_HZ 125000000, PHASE 0.0" *) output clk_out_125M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_250M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_250M, ASSOCIATED_BUSIF M_AXI_MM_FROM_HLS_PR_NORTH, CLK_DOMAIN PCIe_Bridge_ICAP_complex_xdma_0_0_axi_aclk, FREQ_HZ 250000000, PHASE 0.000" *) output clk_out_250M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT_PROG CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT_PROG, CLK_DOMAIN PCIe_Bridge_ICAP_complex_clk_wiz_1_0_clk_out1, FREQ_HZ 400000000, PHASE 0.0" *) output clk_out_PROG;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [15:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [15:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [15:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [15:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN PCIe_Bridge_ICAP_complex_sys_clk, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_GT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_GT, CLK_DOMAIN PCIe_Bridge_ICAP_complex_sys_clk_gt, FREQ_HZ 100000000, PHASE 0.000" *) input sys_clk_gt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_N, POLARITY ACTIVE_LOW" *) input sys_rst_n;

  wire C0_SYS_CLK_1_CLK_N;
  wire C0_SYS_CLK_1_CLK_P;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARADDR;
  wire [2:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARPROT;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARREADY;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARVALID;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWADDR;
  wire [2:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWPROT;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWREADY;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWVALID;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BREADY;
  wire [1:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BRESP;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BVALID;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RDATA;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RREADY;
  wire [1:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RRESP;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RVALID;
  wire [31:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WDATA;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WREADY;
  wire [3:0]FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WSTRB;
  wire FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WVALID;
  wire [63:0]M_AXI_MM_FROM_HLS_PR_0_1_ARADDR;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_ARBURST;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_ARCACHE;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_0_1_ARLEN;
  wire [0:0]M_AXI_MM_FROM_HLS_PR_0_1_ARLOCK;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_ARPROT;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_ARQOS;
  wire M_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_ARREGION;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_ARSIZE;
  wire M_AXI_MM_FROM_HLS_PR_0_1_ARVALID;
  wire [63:0]M_AXI_MM_FROM_HLS_PR_0_1_AWADDR;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_AWBURST;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_AWCACHE;
  wire [7:0]M_AXI_MM_FROM_HLS_PR_0_1_AWLEN;
  wire [0:0]M_AXI_MM_FROM_HLS_PR_0_1_AWLOCK;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_AWPROT;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_AWQOS;
  wire M_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  wire [3:0]M_AXI_MM_FROM_HLS_PR_0_1_AWREGION;
  wire [2:0]M_AXI_MM_FROM_HLS_PR_0_1_AWSIZE;
  wire M_AXI_MM_FROM_HLS_PR_0_1_AWVALID;
  wire M_AXI_MM_FROM_HLS_PR_0_1_BREADY;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  wire M_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  wire M_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  wire M_AXI_MM_FROM_HLS_PR_0_1_RREADY;
  wire [1:0]M_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  wire M_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  wire [511:0]M_AXI_MM_FROM_HLS_PR_0_1_WDATA;
  wire M_AXI_MM_FROM_HLS_PR_0_1_WLAST;
  wire M_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  wire [63:0]M_AXI_MM_FROM_HLS_PR_0_1_WSTRB;
  wire M_AXI_MM_FROM_HLS_PR_0_1_WVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_ARADDR;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DONT_TOUCH *) wire [2:0]S00_AXI_1_ARPROT;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_ARREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_ARVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_AWADDR;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DONT_TOUCH *) wire [2:0]S00_AXI_1_AWPROT;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_AWREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_AWVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_BREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DONT_TOUCH *) wire [1:0]S00_AXI_1_BRESP;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_BVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_RDATA;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_RREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DONT_TOUCH *) wire [1:0]S00_AXI_1_RRESP;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_RVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DONT_TOUCH *) wire [31:0]S00_AXI_1_WDATA;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DONT_TOUCH *) wire S00_AXI_1_WREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DONT_TOUCH *) wire [3:0]S00_AXI_1_WSTRB;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DONT_TOUCH *) wire S00_AXI_1_WVALID;
  wire [63:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [3:0]S00_AXI_2_ARID;
  wire [7:0]S00_AXI_2_ARLEN;
  wire S00_AXI_2_ARLOCK;
  wire [2:0]S00_AXI_2_ARPROT;
  wire S00_AXI_2_ARREADY;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [63:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [3:0]S00_AXI_2_AWID;
  wire [7:0]S00_AXI_2_AWLEN;
  wire S00_AXI_2_AWLOCK;
  wire [2:0]S00_AXI_2_AWPROT;
  wire S00_AXI_2_AWREADY;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire [3:0]S00_AXI_2_BID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [511:0]S00_AXI_2_RDATA;
  wire [3:0]S00_AXI_2_RID;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [511:0]S00_AXI_2_WDATA;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [63:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [33:0]axi_interconnect_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [4:0]axi_interconnect_0_M00_AXI_ARID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [33:0]axi_interconnect_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [4:0]axi_interconnect_0_M00_AXI_AWID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [4:0]axi_interconnect_0_M00_AXI_BID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [4:0]axi_interconnect_0_M00_AXI_RID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WVALID;
  wire axi_pcie3_0_axi_aclk;
  wire axi_pcie3_0_axi_aresetn;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M01_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M01_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M01_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M01_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M01_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M02_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M02_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M02_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M02_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M02_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M02_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M02_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M02_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M02_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M02_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M02_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M02_AXI_WVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M03_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M03_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M03_AXI_ARVALID;
  wire [8:0]axi_pcie3_0_axi_periph_M03_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M03_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M03_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M03_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M03_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M03_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M03_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M03_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M03_AXI_WVALID;
  wire [10:0]axi_pcie3_0_axi_periph_M04_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M04_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M04_AXI_ARVALID;
  wire [10:0]axi_pcie3_0_axi_periph_M04_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M04_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M04_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M04_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M04_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M04_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M04_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M04_AXI_WVALID;
  wire [12:0]axi_pcie3_0_axi_periph_M05_AXI_ARADDR;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_ARBURST;
  wire [3:0]axi_pcie3_0_axi_periph_M05_AXI_ARCACHE;
  wire [7:0]axi_pcie3_0_axi_periph_M05_AXI_ARLEN;
  wire axi_pcie3_0_axi_periph_M05_AXI_ARLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_M05_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M05_AXI_ARREADY;
  wire [2:0]axi_pcie3_0_axi_periph_M05_AXI_ARSIZE;
  wire axi_pcie3_0_axi_periph_M05_AXI_ARVALID;
  wire [12:0]axi_pcie3_0_axi_periph_M05_AXI_AWADDR;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_AWBURST;
  wire [3:0]axi_pcie3_0_axi_periph_M05_AXI_AWCACHE;
  wire [7:0]axi_pcie3_0_axi_periph_M05_AXI_AWLEN;
  wire axi_pcie3_0_axi_periph_M05_AXI_AWLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_M05_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M05_AXI_AWREADY;
  wire [2:0]axi_pcie3_0_axi_periph_M05_AXI_AWSIZE;
  wire axi_pcie3_0_axi_periph_M05_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M05_AXI_RLAST;
  wire axi_pcie3_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M05_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M05_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M05_AXI_WLAST;
  wire axi_pcie3_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M05_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M05_AXI_WVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M06_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M06_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M06_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M06_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M06_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M06_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M06_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M06_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M06_AXI_WVALID;
  wire clk_wiz_0_clk_out_125M;
  wire clk_wiz_0_clk_out_62_5M;
  wire clk_wiz_1_clk_out1;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [71:0]ddr4_0_C0_DDR4_DQ;
  wire [17:0]ddr4_0_C0_DDR4_DQS_C;
  wire [17:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_PAR;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_1_addn_ui_clkout1;
  wire [63:0]fifo_generator_1_M_AXI_ARADDR;
  wire [1:0]fifo_generator_1_M_AXI_ARBURST;
  wire [3:0]fifo_generator_1_M_AXI_ARCACHE;
  wire [7:0]fifo_generator_1_M_AXI_ARLEN;
  wire [0:0]fifo_generator_1_M_AXI_ARLOCK;
  wire [2:0]fifo_generator_1_M_AXI_ARPROT;
  wire [3:0]fifo_generator_1_M_AXI_ARQOS;
  wire fifo_generator_1_M_AXI_ARREADY;
  wire [3:0]fifo_generator_1_M_AXI_ARREGION;
  wire [2:0]fifo_generator_1_M_AXI_ARSIZE;
  wire fifo_generator_1_M_AXI_ARVALID;
  wire [63:0]fifo_generator_1_M_AXI_AWADDR;
  wire [1:0]fifo_generator_1_M_AXI_AWBURST;
  wire [3:0]fifo_generator_1_M_AXI_AWCACHE;
  wire [7:0]fifo_generator_1_M_AXI_AWLEN;
  wire [0:0]fifo_generator_1_M_AXI_AWLOCK;
  wire [2:0]fifo_generator_1_M_AXI_AWPROT;
  wire [3:0]fifo_generator_1_M_AXI_AWQOS;
  wire fifo_generator_1_M_AXI_AWREADY;
  wire [3:0]fifo_generator_1_M_AXI_AWREGION;
  wire [2:0]fifo_generator_1_M_AXI_AWSIZE;
  wire fifo_generator_1_M_AXI_AWVALID;
  wire fifo_generator_1_M_AXI_BREADY;
  wire [1:0]fifo_generator_1_M_AXI_BRESP;
  wire fifo_generator_1_M_AXI_BVALID;
  wire [511:0]fifo_generator_1_M_AXI_RDATA;
  wire fifo_generator_1_M_AXI_RLAST;
  wire fifo_generator_1_M_AXI_RREADY;
  wire [1:0]fifo_generator_1_M_AXI_RRESP;
  wire fifo_generator_1_M_AXI_RVALID;
  wire [511:0]fifo_generator_1_M_AXI_WDATA;
  wire fifo_generator_1_M_AXI_WLAST;
  wire fifo_generator_1_M_AXI_WREADY;
  wire [63:0]fifo_generator_1_M_AXI_WSTRB;
  wire fifo_generator_1_M_AXI_WVALID;
  wire [0:0]rst_ddr4_0_300M1_peripheral_aresetn;
  wire [0:0]rst_ddr4_0_300M_peripheral_aresetn;
  wire sys_clk_1;
  wire sys_clk_gt_1;
  wire sys_rst_1;
  wire sys_rst_n_1;
  wire [15:0]xdma_0_pcie_mgt_rxn;
  wire [15:0]xdma_0_pcie_mgt_rxp;
  wire [15:0]xdma_0_pcie_mgt_txn;
  wire [15:0]xdma_0_pcie_mgt_txp;
  wire xdma_0_user_lnk_up;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlslice_0_Dout;

  assign C0_SYS_CLK_1_CLK_N = C1_SYS_CLK_clk_n;
  assign C0_SYS_CLK_1_CLK_P = C1_SYS_CLK_clk_p;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARREADY = M_AXI_LITE_TO_HLS_PR_NORTH_arready;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWREADY = M_AXI_LITE_TO_HLS_PR_NORTH_awready;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BRESP = M_AXI_LITE_TO_HLS_PR_NORTH_bresp[1:0];
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BVALID = M_AXI_LITE_TO_HLS_PR_NORTH_bvalid;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RDATA = M_AXI_LITE_TO_HLS_PR_NORTH_rdata[31:0];
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RRESP = M_AXI_LITE_TO_HLS_PR_NORTH_rresp[1:0];
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RVALID = M_AXI_LITE_TO_HLS_PR_NORTH_rvalid;
  assign FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WREADY = M_AXI_LITE_TO_HLS_PR_NORTH_wready;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_araddr[31:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARADDR;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_arprot[2:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARPROT;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_arvalid = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARVALID;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awaddr[31:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWADDR;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awprot[2:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWPROT;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_awvalid = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWVALID;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_bready = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BREADY;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_rready = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RREADY;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wdata[31:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WDATA;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wstrb[3:0] = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WSTRB;
  assign M_AXI_LITE_TO_HLS_PR_NORTH_wvalid = FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WVALID;
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARADDR = M_AXI_MM_FROM_HLS_PR_NORTH_araddr[63:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARBURST = M_AXI_MM_FROM_HLS_PR_NORTH_arburst[1:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARCACHE = M_AXI_MM_FROM_HLS_PR_NORTH_arcache[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARLEN = M_AXI_MM_FROM_HLS_PR_NORTH_arlen[7:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARLOCK = M_AXI_MM_FROM_HLS_PR_NORTH_arlock[0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARPROT = M_AXI_MM_FROM_HLS_PR_NORTH_arprot[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARQOS = M_AXI_MM_FROM_HLS_PR_NORTH_arqos[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARREGION = M_AXI_MM_FROM_HLS_PR_NORTH_arregion[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARSIZE = M_AXI_MM_FROM_HLS_PR_NORTH_arsize[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_ARVALID = M_AXI_MM_FROM_HLS_PR_NORTH_arvalid;
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWADDR = M_AXI_MM_FROM_HLS_PR_NORTH_awaddr[63:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWBURST = M_AXI_MM_FROM_HLS_PR_NORTH_awburst[1:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWCACHE = M_AXI_MM_FROM_HLS_PR_NORTH_awcache[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWLEN = M_AXI_MM_FROM_HLS_PR_NORTH_awlen[7:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWLOCK = M_AXI_MM_FROM_HLS_PR_NORTH_awlock[0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWPROT = M_AXI_MM_FROM_HLS_PR_NORTH_awprot[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWQOS = M_AXI_MM_FROM_HLS_PR_NORTH_awqos[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWREGION = M_AXI_MM_FROM_HLS_PR_NORTH_awregion[3:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWSIZE = M_AXI_MM_FROM_HLS_PR_NORTH_awsize[2:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_AWVALID = M_AXI_MM_FROM_HLS_PR_NORTH_awvalid;
  assign M_AXI_MM_FROM_HLS_PR_0_1_BREADY = M_AXI_MM_FROM_HLS_PR_NORTH_bready;
  assign M_AXI_MM_FROM_HLS_PR_0_1_RREADY = M_AXI_MM_FROM_HLS_PR_NORTH_rready;
  assign M_AXI_MM_FROM_HLS_PR_0_1_WDATA = M_AXI_MM_FROM_HLS_PR_NORTH_wdata[511:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_WLAST = M_AXI_MM_FROM_HLS_PR_NORTH_wlast;
  assign M_AXI_MM_FROM_HLS_PR_0_1_WSTRB = M_AXI_MM_FROM_HLS_PR_NORTH_wstrb[63:0];
  assign M_AXI_MM_FROM_HLS_PR_0_1_WVALID = M_AXI_MM_FROM_HLS_PR_NORTH_wvalid;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_arready = M_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_awready = M_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_bresp[1:0] = M_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_bvalid = M_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_rdata[511:0] = M_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_rlast = M_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_rresp[1:0] = M_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_rvalid = M_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  assign M_AXI_MM_FROM_HLS_PR_NORTH_wready = M_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  assign axi_reset_n_out[0] = rst_ddr4_0_300M1_peripheral_aresetn;
  assign c1_ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign c1_ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign c1_ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign c1_ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign c1_ddr4_ck_c[0] = ddr4_0_C0_DDR4_CK_C;
  assign c1_ddr4_ck_t[0] = ddr4_0_C0_DDR4_CK_T;
  assign c1_ddr4_cke[0] = ddr4_0_C0_DDR4_CKE;
  assign c1_ddr4_cs_n[0] = ddr4_0_C0_DDR4_CS_N;
  assign c1_ddr4_odt[0] = ddr4_0_C0_DDR4_ODT;
  assign c1_ddr4_par = ddr4_0_C0_DDR4_PAR;
  assign c1_ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign clk_out_125M = clk_wiz_0_clk_out_125M;
  assign clk_out_250M = axi_pcie3_0_axi_aclk;
  assign clk_out_PROG = clk_wiz_1_clk_out1;
  assign pcie_mgt_txn[15:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[15:0] = xdma_0_pcie_mgt_txp;
  assign sys_clk_1 = sys_clk;
  assign sys_clk_gt_1 = sys_clk_gt;
  assign sys_rst_1 = DDR4_sys_rst;
  assign sys_rst_n_1 = sys_rst_n;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[15:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[15:0];
  FROM_SH_AXI_LITE_NORTH_imp_WXQM5Q FROM_SH_AXI_LITE_NORTH
       (.S_AXI_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .S_AXI_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .S_AXI_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .S_AXI_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .S_AXI_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .S_AXI_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .S_AXI_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .S_AXI_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .S_AXI_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .S_AXI_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .S_AXI_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .S_AXI_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .S_AXI_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .S_AXI_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .S_AXI_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .S_AXI_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .S_AXI_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .S_AXI_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .S_AXI_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .aclk(clk_wiz_0_clk_out_125M),
        .aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .decouple(xlslice_0_Dout),
        .rp_AXI_LITE_TO_HLS_PR_0_araddr(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARADDR),
        .rp_AXI_LITE_TO_HLS_PR_0_arprot(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARPROT),
        .rp_AXI_LITE_TO_HLS_PR_0_arready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_arvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_ARVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_awaddr(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWADDR),
        .rp_AXI_LITE_TO_HLS_PR_0_awprot(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWPROT),
        .rp_AXI_LITE_TO_HLS_PR_0_awready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_awvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_AWVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_bready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_bresp(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BRESP),
        .rp_AXI_LITE_TO_HLS_PR_0_bvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_BVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_rdata(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RDATA),
        .rp_AXI_LITE_TO_HLS_PR_0_rready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_rresp(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RRESP),
        .rp_AXI_LITE_TO_HLS_PR_0_rvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_RVALID),
        .rp_AXI_LITE_TO_HLS_PR_0_wdata(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WDATA),
        .rp_AXI_LITE_TO_HLS_PR_0_wready(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WREADY),
        .rp_AXI_LITE_TO_HLS_PR_0_wstrb(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WSTRB),
        .rp_AXI_LITE_TO_HLS_PR_0_wvalid(FROM_SH_AXI_LITE_rp_AXI_LITE_TO_HLS_PR_0_WVALID));
  TO_SH_AXI_MM_NORTH_imp_1JRCDM8 TO_SH_AXI_MM_NORTH
       (.M_AXI_araddr(fifo_generator_1_M_AXI_ARADDR),
        .M_AXI_arburst(fifo_generator_1_M_AXI_ARBURST),
        .M_AXI_arcache(fifo_generator_1_M_AXI_ARCACHE),
        .M_AXI_arlen(fifo_generator_1_M_AXI_ARLEN),
        .M_AXI_arlock(fifo_generator_1_M_AXI_ARLOCK),
        .M_AXI_arprot(fifo_generator_1_M_AXI_ARPROT),
        .M_AXI_arqos(fifo_generator_1_M_AXI_ARQOS),
        .M_AXI_arready(fifo_generator_1_M_AXI_ARREADY),
        .M_AXI_arregion(fifo_generator_1_M_AXI_ARREGION),
        .M_AXI_arsize(fifo_generator_1_M_AXI_ARSIZE),
        .M_AXI_arvalid(fifo_generator_1_M_AXI_ARVALID),
        .M_AXI_awaddr(fifo_generator_1_M_AXI_AWADDR),
        .M_AXI_awburst(fifo_generator_1_M_AXI_AWBURST),
        .M_AXI_awcache(fifo_generator_1_M_AXI_AWCACHE),
        .M_AXI_awlen(fifo_generator_1_M_AXI_AWLEN),
        .M_AXI_awlock(fifo_generator_1_M_AXI_AWLOCK),
        .M_AXI_awprot(fifo_generator_1_M_AXI_AWPROT),
        .M_AXI_awqos(fifo_generator_1_M_AXI_AWQOS),
        .M_AXI_awready(fifo_generator_1_M_AXI_AWREADY),
        .M_AXI_awregion(fifo_generator_1_M_AXI_AWREGION),
        .M_AXI_awsize(fifo_generator_1_M_AXI_AWSIZE),
        .M_AXI_awvalid(fifo_generator_1_M_AXI_AWVALID),
        .M_AXI_bready(fifo_generator_1_M_AXI_BREADY),
        .M_AXI_bresp(fifo_generator_1_M_AXI_BRESP),
        .M_AXI_bvalid(fifo_generator_1_M_AXI_BVALID),
        .M_AXI_rdata(fifo_generator_1_M_AXI_RDATA),
        .M_AXI_rlast(fifo_generator_1_M_AXI_RLAST),
        .M_AXI_rready(fifo_generator_1_M_AXI_RREADY),
        .M_AXI_rresp(fifo_generator_1_M_AXI_RRESP),
        .M_AXI_rvalid(fifo_generator_1_M_AXI_RVALID),
        .M_AXI_wdata(fifo_generator_1_M_AXI_WDATA),
        .M_AXI_wlast(fifo_generator_1_M_AXI_WLAST),
        .M_AXI_wready(fifo_generator_1_M_AXI_WREADY),
        .M_AXI_wstrb(fifo_generator_1_M_AXI_WSTRB),
        .M_AXI_wvalid(fifo_generator_1_M_AXI_WVALID),
        .aclk(axi_pcie3_0_axi_aclk),
        .aresetn(axi_pcie3_0_axi_aresetn),
        .decouple(xlslice_0_Dout),
        .rp_AXI_MM_FROM_HLS_PR_0_araddr(M_AXI_MM_FROM_HLS_PR_0_1_ARADDR),
        .rp_AXI_MM_FROM_HLS_PR_0_arburst(M_AXI_MM_FROM_HLS_PR_0_1_ARBURST),
        .rp_AXI_MM_FROM_HLS_PR_0_arcache(M_AXI_MM_FROM_HLS_PR_0_1_ARCACHE),
        .rp_AXI_MM_FROM_HLS_PR_0_arlen(M_AXI_MM_FROM_HLS_PR_0_1_ARLEN),
        .rp_AXI_MM_FROM_HLS_PR_0_arlock(M_AXI_MM_FROM_HLS_PR_0_1_ARLOCK),
        .rp_AXI_MM_FROM_HLS_PR_0_arprot(M_AXI_MM_FROM_HLS_PR_0_1_ARPROT),
        .rp_AXI_MM_FROM_HLS_PR_0_arqos(M_AXI_MM_FROM_HLS_PR_0_1_ARQOS),
        .rp_AXI_MM_FROM_HLS_PR_0_arready(M_AXI_MM_FROM_HLS_PR_0_1_ARREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_arregion(M_AXI_MM_FROM_HLS_PR_0_1_ARREGION),
        .rp_AXI_MM_FROM_HLS_PR_0_arsize(M_AXI_MM_FROM_HLS_PR_0_1_ARSIZE),
        .rp_AXI_MM_FROM_HLS_PR_0_arvalid(M_AXI_MM_FROM_HLS_PR_0_1_ARVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_awaddr(M_AXI_MM_FROM_HLS_PR_0_1_AWADDR),
        .rp_AXI_MM_FROM_HLS_PR_0_awburst(M_AXI_MM_FROM_HLS_PR_0_1_AWBURST),
        .rp_AXI_MM_FROM_HLS_PR_0_awcache(M_AXI_MM_FROM_HLS_PR_0_1_AWCACHE),
        .rp_AXI_MM_FROM_HLS_PR_0_awlen(M_AXI_MM_FROM_HLS_PR_0_1_AWLEN),
        .rp_AXI_MM_FROM_HLS_PR_0_awlock(M_AXI_MM_FROM_HLS_PR_0_1_AWLOCK),
        .rp_AXI_MM_FROM_HLS_PR_0_awprot(M_AXI_MM_FROM_HLS_PR_0_1_AWPROT),
        .rp_AXI_MM_FROM_HLS_PR_0_awqos(M_AXI_MM_FROM_HLS_PR_0_1_AWQOS),
        .rp_AXI_MM_FROM_HLS_PR_0_awready(M_AXI_MM_FROM_HLS_PR_0_1_AWREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_awregion(M_AXI_MM_FROM_HLS_PR_0_1_AWREGION),
        .rp_AXI_MM_FROM_HLS_PR_0_awsize(M_AXI_MM_FROM_HLS_PR_0_1_AWSIZE),
        .rp_AXI_MM_FROM_HLS_PR_0_awvalid(M_AXI_MM_FROM_HLS_PR_0_1_AWVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_bready(M_AXI_MM_FROM_HLS_PR_0_1_BREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_bresp(M_AXI_MM_FROM_HLS_PR_0_1_BRESP),
        .rp_AXI_MM_FROM_HLS_PR_0_bvalid(M_AXI_MM_FROM_HLS_PR_0_1_BVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_rdata(M_AXI_MM_FROM_HLS_PR_0_1_RDATA),
        .rp_AXI_MM_FROM_HLS_PR_0_rlast(M_AXI_MM_FROM_HLS_PR_0_1_RLAST),
        .rp_AXI_MM_FROM_HLS_PR_0_rready(M_AXI_MM_FROM_HLS_PR_0_1_RREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_rresp(M_AXI_MM_FROM_HLS_PR_0_1_RRESP),
        .rp_AXI_MM_FROM_HLS_PR_0_rvalid(M_AXI_MM_FROM_HLS_PR_0_1_RVALID),
        .rp_AXI_MM_FROM_HLS_PR_0_wdata(M_AXI_MM_FROM_HLS_PR_0_1_WDATA),
        .rp_AXI_MM_FROM_HLS_PR_0_wlast(M_AXI_MM_FROM_HLS_PR_0_1_WLAST),
        .rp_AXI_MM_FROM_HLS_PR_0_wready(M_AXI_MM_FROM_HLS_PR_0_1_WREADY),
        .rp_AXI_MM_FROM_HLS_PR_0_wstrb(M_AXI_MM_FROM_HLS_PR_0_1_WSTRB),
        .rp_AXI_MM_FROM_HLS_PR_0_wvalid(M_AXI_MM_FROM_HLS_PR_0_1_WVALID));
  PCIe_Bridge_ICAP_complex_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(clk_wiz_0_clk_out_125M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M05_AXI_ARADDR),
        .s_axi_arburst(axi_pcie3_0_axi_periph_M05_AXI_ARBURST),
        .s_axi_arcache(axi_pcie3_0_axi_periph_M05_AXI_ARCACHE),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arlen(axi_pcie3_0_axi_periph_M05_AXI_ARLEN),
        .s_axi_arlock(axi_pcie3_0_axi_periph_M05_AXI_ARLOCK),
        .s_axi_arprot(axi_pcie3_0_axi_periph_M05_AXI_ARPROT),
        .s_axi_arready(axi_pcie3_0_axi_periph_M05_AXI_ARREADY),
        .s_axi_arsize(axi_pcie3_0_axi_periph_M05_AXI_ARSIZE),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M05_AXI_AWADDR),
        .s_axi_awburst(axi_pcie3_0_axi_periph_M05_AXI_AWBURST),
        .s_axi_awcache(axi_pcie3_0_axi_periph_M05_AXI_AWCACHE),
        .s_axi_awlen(axi_pcie3_0_axi_periph_M05_AXI_AWLEN),
        .s_axi_awlock(axi_pcie3_0_axi_periph_M05_AXI_AWLOCK),
        .s_axi_awprot(axi_pcie3_0_axi_periph_M05_AXI_AWPROT),
        .s_axi_awready(axi_pcie3_0_axi_periph_M05_AXI_AWREADY),
        .s_axi_awsize(axi_pcie3_0_axi_periph_M05_AXI_AWSIZE),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M05_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M05_AXI_RDATA),
        .s_axi_rlast(axi_pcie3_0_axi_periph_M05_AXI_RLAST),
        .s_axi_rready(axi_pcie3_0_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M05_AXI_WDATA),
        .s_axi_wlast(axi_pcie3_0_axi_periph_M05_AXI_WLAST),
        .s_axi_wready(axi_pcie3_0_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M05_AXI_WVALID));
  PCIe_Bridge_ICAP_complex_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  PCIe_Bridge_ICAP_complex_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(xlslice_0_Dout),
        .gpio_io_o(xlslice_0_Dout),
        .s_axi_aclk(clk_wiz_0_clk_out_125M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M02_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M02_AXI_WVALID));
  PCIe_Bridge_ICAP_complex_axi_hwicap_0_0 axi_hwicap_0
       (.eos_in(xlconstant_0_dout),
        .icap_clk(clk_wiz_0_clk_out_62_5M),
        .s_axi_aclk(clk_wiz_0_clk_out_125M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M03_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M03_AXI_WVALID));
  PCIe_Bridge_ICAP_complex_axi_interconnect_0_1 axi_interconnect_0
       (.ACLK(axi_pcie3_0_axi_aclk),
        .ARESETN(axi_pcie3_0_axi_aresetn),
        .M00_ACLK(ddr4_0_c0_ddr4_ui_clk),
        .M00_ARESETN(rst_ddr4_0_300M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(axi_pcie3_0_axi_aclk),
        .S00_ARESETN(axi_pcie3_0_axi_aresetn),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arid(S00_AXI_2_ARID),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arlock(S00_AXI_2_ARLOCK),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awid(S00_AXI_2_AWID),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awlock(S00_AXI_2_AWLOCK),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bid(S00_AXI_2_BID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rid(S00_AXI_2_RID),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID),
        .S01_ACLK(axi_pcie3_0_axi_aclk),
        .S01_ARESETN(axi_pcie3_0_axi_aresetn),
        .S01_AXI_araddr(fifo_generator_1_M_AXI_ARADDR),
        .S01_AXI_arburst(fifo_generator_1_M_AXI_ARBURST),
        .S01_AXI_arcache(fifo_generator_1_M_AXI_ARCACHE),
        .S01_AXI_arlen(fifo_generator_1_M_AXI_ARLEN),
        .S01_AXI_arlock(fifo_generator_1_M_AXI_ARLOCK),
        .S01_AXI_arprot(fifo_generator_1_M_AXI_ARPROT),
        .S01_AXI_arqos(fifo_generator_1_M_AXI_ARQOS),
        .S01_AXI_arready(fifo_generator_1_M_AXI_ARREADY),
        .S01_AXI_arregion(fifo_generator_1_M_AXI_ARREGION),
        .S01_AXI_arsize(fifo_generator_1_M_AXI_ARSIZE),
        .S01_AXI_arvalid(fifo_generator_1_M_AXI_ARVALID),
        .S01_AXI_awaddr(fifo_generator_1_M_AXI_AWADDR),
        .S01_AXI_awburst(fifo_generator_1_M_AXI_AWBURST),
        .S01_AXI_awcache(fifo_generator_1_M_AXI_AWCACHE),
        .S01_AXI_awlen(fifo_generator_1_M_AXI_AWLEN),
        .S01_AXI_awlock(fifo_generator_1_M_AXI_AWLOCK),
        .S01_AXI_awprot(fifo_generator_1_M_AXI_AWPROT),
        .S01_AXI_awqos(fifo_generator_1_M_AXI_AWQOS),
        .S01_AXI_awready(fifo_generator_1_M_AXI_AWREADY),
        .S01_AXI_awregion(fifo_generator_1_M_AXI_AWREGION),
        .S01_AXI_awsize(fifo_generator_1_M_AXI_AWSIZE),
        .S01_AXI_awvalid(fifo_generator_1_M_AXI_AWVALID),
        .S01_AXI_bready(fifo_generator_1_M_AXI_BREADY),
        .S01_AXI_bresp(fifo_generator_1_M_AXI_BRESP),
        .S01_AXI_bvalid(fifo_generator_1_M_AXI_BVALID),
        .S01_AXI_rdata(fifo_generator_1_M_AXI_RDATA),
        .S01_AXI_rlast(fifo_generator_1_M_AXI_RLAST),
        .S01_AXI_rready(fifo_generator_1_M_AXI_RREADY),
        .S01_AXI_rresp(fifo_generator_1_M_AXI_RRESP),
        .S01_AXI_rvalid(fifo_generator_1_M_AXI_RVALID),
        .S01_AXI_wdata(fifo_generator_1_M_AXI_WDATA),
        .S01_AXI_wlast(fifo_generator_1_M_AXI_WLAST),
        .S01_AXI_wready(fifo_generator_1_M_AXI_WREADY),
        .S01_AXI_wstrb(fifo_generator_1_M_AXI_WSTRB),
        .S01_AXI_wvalid(fifo_generator_1_M_AXI_WVALID));
  PCIe_Bridge_ICAP_complex_axi_pcie3_0_axi_periph_0 axi_pcie3_0_axi_periph
       (.ACLK(clk_wiz_0_clk_out_125M),
        .ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M00_ACLK(ddr4_0_c0_ddr4_ui_clk),
        .M00_ARESETN(rst_ddr4_0_300M_peripheral_aresetn),
        .M00_AXI_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out_125M),
        .M01_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M01_AXI_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out_125M),
        .M02_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M02_AXI_araddr(axi_pcie3_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_pcie3_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_pcie3_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_pcie3_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_pcie3_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_pcie3_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_pcie3_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_pcie3_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_pcie3_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_pcie3_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(axi_pcie3_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_pcie3_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_pcie3_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_pcie3_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(axi_pcie3_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_pcie3_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_pcie3_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_0_clk_out_125M),
        .M03_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M03_AXI_araddr(axi_pcie3_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_pcie3_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_pcie3_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_pcie3_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_pcie3_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_pcie3_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_pcie3_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_pcie3_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_pcie3_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_pcie3_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(axi_pcie3_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_pcie3_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_pcie3_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_pcie3_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(axi_pcie3_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_pcie3_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_pcie3_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out_125M),
        .M04_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M04_AXI_araddr(axi_pcie3_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_pcie3_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_pcie3_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_pcie3_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_pcie3_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_pcie3_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_pcie3_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_pcie3_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_pcie3_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_pcie3_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(axi_pcie3_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_pcie3_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_pcie3_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_pcie3_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(axi_pcie3_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_pcie3_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_pcie3_0_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out_125M),
        .M05_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M05_AXI_araddr(axi_pcie3_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arburst(axi_pcie3_0_axi_periph_M05_AXI_ARBURST),
        .M05_AXI_arcache(axi_pcie3_0_axi_periph_M05_AXI_ARCACHE),
        .M05_AXI_arlen(axi_pcie3_0_axi_periph_M05_AXI_ARLEN),
        .M05_AXI_arlock(axi_pcie3_0_axi_periph_M05_AXI_ARLOCK),
        .M05_AXI_arprot(axi_pcie3_0_axi_periph_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_pcie3_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arsize(axi_pcie3_0_axi_periph_M05_AXI_ARSIZE),
        .M05_AXI_arvalid(axi_pcie3_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_pcie3_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awburst(axi_pcie3_0_axi_periph_M05_AXI_AWBURST),
        .M05_AXI_awcache(axi_pcie3_0_axi_periph_M05_AXI_AWCACHE),
        .M05_AXI_awlen(axi_pcie3_0_axi_periph_M05_AXI_AWLEN),
        .M05_AXI_awlock(axi_pcie3_0_axi_periph_M05_AXI_AWLOCK),
        .M05_AXI_awprot(axi_pcie3_0_axi_periph_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_pcie3_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awsize(axi_pcie3_0_axi_periph_M05_AXI_AWSIZE),
        .M05_AXI_awvalid(axi_pcie3_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_pcie3_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_pcie3_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_pcie3_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_pcie3_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rlast(axi_pcie3_0_axi_periph_M05_AXI_RLAST),
        .M05_AXI_rready(axi_pcie3_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_pcie3_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_pcie3_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_pcie3_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wlast(axi_pcie3_0_axi_periph_M05_AXI_WLAST),
        .M05_AXI_wready(axi_pcie3_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_pcie3_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_pcie3_0_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(clk_wiz_0_clk_out_125M),
        .M06_ARESETN(rst_ddr4_0_300M1_peripheral_aresetn),
        .M06_AXI_araddr(axi_pcie3_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_pcie3_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_pcie3_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_pcie3_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_pcie3_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_pcie3_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_pcie3_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_pcie3_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_pcie3_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_pcie3_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(axi_pcie3_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_pcie3_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_pcie3_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_pcie3_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(axi_pcie3_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_pcie3_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_pcie3_0_axi_periph_M06_AXI_WVALID),
        .S00_ACLK(axi_pcie3_0_axi_aclk),
        .S00_ARESETN(axi_pcie3_0_axi_aresetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  PCIe_Bridge_ICAP_complex_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(ddr4_1_addn_ui_clkout1),
        .clk_out_125M(clk_wiz_0_clk_out_125M),
        .clk_out_62_5M(clk_wiz_0_clk_out_62_5M));
  PCIe_Bridge_ICAP_complex_clk_wiz_1_0 clk_wiz_PROG
       (.clk_in1(ddr4_0_c0_ddr4_ui_clk),
        .clk_out1(clk_wiz_1_clk_out1),
        .s_axi_aclk(clk_wiz_0_clk_out_125M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M04_AXI_AWADDR),
        .s_axi_awready(axi_pcie3_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M04_AXI_WVALID));
  PCIe_Bridge_ICAP_complex_ddr4_0_0 ddr4_1
       (.addn_ui_clkout1(ddr4_1_addn_ui_clkout1),
        .c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dq(c1_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c1_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c1_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_parity(ddr4_0_C0_DDR4_PAR),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(axi_interconnect_0_M00_AXI_ARID),
        .c0_ddr4_s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(axi_interconnect_0_M00_AXI_AWID),
        .c0_ddr4_s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(axi_interconnect_0_M00_AXI_BID),
        .c0_ddr4_s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rid(axi_interconnect_0_M00_AXI_RID),
        .c0_ddr4_s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_0_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .c0_sys_clk_n(C0_SYS_CLK_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_1_CLK_P),
        .sys_rst(sys_rst_1));
  PCIe_Bridge_ICAP_complex_rst_ddr4_0_300M_1 rst_125M
       (.aux_reset_in(1'b1),
        .dcm_locked(xdma_0_user_lnk_up),
        .ext_reset_in(axi_pcie3_0_axi_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out_125M));
  PCIe_Bridge_ICAP_complex_rst_ddr4_0_300M_0 rst_ddr4_0_300M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_c0_ddr4_ui_clk));
  PCIe_Bridge_ICAP_complex_system_ila_1_0 system_ila_AXIL
       (.SLOT_0_AXI_araddr(S00_AXI_1_ARADDR),
        .SLOT_0_AXI_arprot(S00_AXI_1_ARPROT),
        .SLOT_0_AXI_arready(S00_AXI_1_ARREADY),
        .SLOT_0_AXI_arvalid(S00_AXI_1_ARVALID),
        .SLOT_0_AXI_awaddr(S00_AXI_1_AWADDR),
        .SLOT_0_AXI_awprot(S00_AXI_1_AWPROT),
        .SLOT_0_AXI_awready(S00_AXI_1_AWREADY),
        .SLOT_0_AXI_awvalid(S00_AXI_1_AWVALID),
        .SLOT_0_AXI_bready(S00_AXI_1_BREADY),
        .SLOT_0_AXI_bresp(S00_AXI_1_BRESP),
        .SLOT_0_AXI_bvalid(S00_AXI_1_BVALID),
        .SLOT_0_AXI_rdata(S00_AXI_1_RDATA),
        .SLOT_0_AXI_rready(S00_AXI_1_RREADY),
        .SLOT_0_AXI_rresp(S00_AXI_1_RRESP),
        .SLOT_0_AXI_rvalid(S00_AXI_1_RVALID),
        .SLOT_0_AXI_wdata(S00_AXI_1_WDATA),
        .SLOT_0_AXI_wready(S00_AXI_1_WREADY),
        .SLOT_0_AXI_wstrb(S00_AXI_1_WSTRB),
        .SLOT_0_AXI_wvalid(S00_AXI_1_WVALID),
        .clk(axi_pcie3_0_axi_aclk),
        .resetn(axi_pcie3_0_axi_aresetn));
  PCIe_Bridge_ICAP_complex_system_ila_0_0 system_ila_AXI_MM
       (.SLOT_0_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .SLOT_0_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .SLOT_0_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .SLOT_0_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .SLOT_0_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .SLOT_0_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .SLOT_0_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .SLOT_0_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .SLOT_0_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .SLOT_0_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .SLOT_0_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .SLOT_0_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .SLOT_0_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .clk(ddr4_0_c0_ddr4_ui_clk),
        .resetn(rst_ddr4_0_300M_peripheral_aresetn));
  PCIe_Bridge_ICAP_complex_system_management_wiz_0_0 system_management_wiz_0
       (.s_axi_aclk(clk_wiz_0_clk_out_125M),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M06_AXI_ARADDR[12:0]),
        .s_axi_aresetn(rst_ddr4_0_300M1_peripheral_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M06_AXI_AWADDR[12:0]),
        .s_axi_awready(axi_pcie3_0_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M06_AXI_WVALID));
  PCIe_Bridge_ICAP_complex_xdma_0_0 xdma_0
       (.axi_aclk(axi_pcie3_0_axi_aclk),
        .axi_aresetn(axi_pcie3_0_axi_aresetn),
        .m_axi_araddr(S00_AXI_2_ARADDR),
        .m_axi_arburst(S00_AXI_2_ARBURST),
        .m_axi_arcache(S00_AXI_2_ARCACHE),
        .m_axi_arid(S00_AXI_2_ARID),
        .m_axi_arlen(S00_AXI_2_ARLEN),
        .m_axi_arlock(S00_AXI_2_ARLOCK),
        .m_axi_arprot(S00_AXI_2_ARPROT),
        .m_axi_arready(S00_AXI_2_ARREADY),
        .m_axi_arsize(S00_AXI_2_ARSIZE),
        .m_axi_arvalid(S00_AXI_2_ARVALID),
        .m_axi_awaddr(S00_AXI_2_AWADDR),
        .m_axi_awburst(S00_AXI_2_AWBURST),
        .m_axi_awcache(S00_AXI_2_AWCACHE),
        .m_axi_awid(S00_AXI_2_AWID),
        .m_axi_awlen(S00_AXI_2_AWLEN),
        .m_axi_awlock(S00_AXI_2_AWLOCK),
        .m_axi_awprot(S00_AXI_2_AWPROT),
        .m_axi_awready(S00_AXI_2_AWREADY),
        .m_axi_awsize(S00_AXI_2_AWSIZE),
        .m_axi_awvalid(S00_AXI_2_AWVALID),
        .m_axi_bid(S00_AXI_2_BID),
        .m_axi_bready(S00_AXI_2_BREADY),
        .m_axi_bresp(S00_AXI_2_BRESP),
        .m_axi_bvalid(S00_AXI_2_BVALID),
        .m_axi_rdata(S00_AXI_2_RDATA),
        .m_axi_rid(S00_AXI_2_RID),
        .m_axi_rlast(S00_AXI_2_RLAST),
        .m_axi_rready(S00_AXI_2_RREADY),
        .m_axi_rresp(S00_AXI_2_RRESP),
        .m_axi_rvalid(S00_AXI_2_RVALID),
        .m_axi_wdata(S00_AXI_2_WDATA),
        .m_axi_wlast(S00_AXI_2_WLAST),
        .m_axi_wready(S00_AXI_2_WREADY),
        .m_axi_wstrb(S00_AXI_2_WSTRB),
        .m_axi_wvalid(S00_AXI_2_WVALID),
        .m_axil_araddr(S00_AXI_1_ARADDR),
        .m_axil_arprot(S00_AXI_1_ARPROT),
        .m_axil_arready(S00_AXI_1_ARREADY),
        .m_axil_arvalid(S00_AXI_1_ARVALID),
        .m_axil_awaddr(S00_AXI_1_AWADDR),
        .m_axil_awprot(S00_AXI_1_AWPROT),
        .m_axil_awready(S00_AXI_1_AWREADY),
        .m_axil_awvalid(S00_AXI_1_AWVALID),
        .m_axil_bready(S00_AXI_1_BREADY),
        .m_axil_bresp(S00_AXI_1_BRESP),
        .m_axil_bvalid(S00_AXI_1_BVALID),
        .m_axil_rdata(S00_AXI_1_RDATA),
        .m_axil_rready(S00_AXI_1_RREADY),
        .m_axil_rresp(S00_AXI_1_RRESP),
        .m_axil_rvalid(S00_AXI_1_RVALID),
        .m_axil_wdata(S00_AXI_1_WDATA),
        .m_axil_wready(S00_AXI_1_WREADY),
        .m_axil_wstrb(S00_AXI_1_WSTRB),
        .m_axil_wvalid(S00_AXI_1_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(sys_clk_1),
        .sys_clk_gt(sys_clk_gt_1),
        .sys_rst_n(sys_rst_n_1),
        .user_lnk_up(xdma_0_user_lnk_up),
        .usr_irq_req(xlconstant_0_dout));
  PCIe_Bridge_ICAP_complex_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module PCIe_Bridge_ICAP_complex_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [33:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [4:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [33:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [4:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [4:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [4:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [3:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [3:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [63:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [3:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [3:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [63:0]axi_interconnect_0_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s01_couplers_ARCACHE;
  wire [7:0]axi_interconnect_0_to_s01_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s01_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s01_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s01_couplers_ARQOS;
  wire axi_interconnect_0_to_s01_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s01_couplers_ARSIZE;
  wire axi_interconnect_0_to_s01_couplers_ARVALID;
  wire [63:0]axi_interconnect_0_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_to_s01_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s01_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWQOS;
  wire axi_interconnect_0_to_s01_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWSIZE;
  wire axi_interconnect_0_to_s01_couplers_AWVALID;
  wire axi_interconnect_0_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_BRESP;
  wire axi_interconnect_0_to_s01_couplers_BVALID;
  wire [511:0]axi_interconnect_0_to_s01_couplers_RDATA;
  wire axi_interconnect_0_to_s01_couplers_RLAST;
  wire axi_interconnect_0_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_RRESP;
  wire axi_interconnect_0_to_s01_couplers_RVALID;
  wire [511:0]axi_interconnect_0_to_s01_couplers_WDATA;
  wire axi_interconnect_0_to_s01_couplers_WLAST;
  wire axi_interconnect_0_to_s01_couplers_WREADY;
  wire [63:0]axi_interconnect_0_to_s01_couplers_WSTRB;
  wire axi_interconnect_0_to_s01_couplers_WVALID;
  wire [33:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [4:0]m00_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARQOS;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [33:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [4:0]m00_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWQOS;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire [4:0]m00_couplers_to_axi_interconnect_0_BID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire [4:0]m00_couplers_to_axi_interconnect_0_RID;
  wire m00_couplers_to_axi_interconnect_0_RLAST;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WLAST;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [3:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [3:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [4:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [4:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [4:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [4:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [4:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [4:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[33:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arid[4:0] = m00_couplers_to_axi_interconnect_0_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[33:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awid[4:0] = m00_couplers_to_axi_interconnect_0_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[3:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[3:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_interconnect_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[511:0] = axi_interconnect_0_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_interconnect_0_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_0_to_s01_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_0_to_s01_couplers_ARADDR = S01_AXI_araddr[63:0];
  assign axi_interconnect_0_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign axi_interconnect_0_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[63:0];
  assign axi_interconnect_0_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign axi_interconnect_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_0_to_s01_couplers_WDATA = S01_AXI_wdata[511:0];
  assign axi_interconnect_0_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[63:0];
  assign axi_interconnect_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BID = M00_AXI_bid[4:0];
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_axi_interconnect_0_RID = M00_AXI_rid[4:0];
  assign m00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  m00_couplers_imp_W87T5D m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_C7QUHR s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  s01_couplers_imp_2D2PK9 s01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s01_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s01_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s01_couplers_WVALID));
  PCIe_Bridge_ICAP_complex_xbar_1 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module PCIe_Bridge_ICAP_complex_axi_pcie3_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arburst,
    M05_AXI_arcache,
    M05_AXI_arlen,
    M05_AXI_arlock,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arsize,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awburst,
    M05_AXI_awcache,
    M05_AXI_awlen,
    M05_AXI_awlock,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awsize,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rlast,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wlast,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [8:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [8:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [8:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [8:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [10:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [10:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [12:0]M05_AXI_araddr;
  output [1:0]M05_AXI_arburst;
  output [3:0]M05_AXI_arcache;
  output [7:0]M05_AXI_arlen;
  output M05_AXI_arlock;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output [2:0]M05_AXI_arsize;
  output M05_AXI_arvalid;
  output [12:0]M05_AXI_awaddr;
  output [1:0]M05_AXI_awburst;
  output [3:0]M05_AXI_awcache;
  output [7:0]M05_AXI_awlen;
  output M05_AXI_awlock;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output [2:0]M05_AXI_awsize;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  input M05_AXI_rlast;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  output M05_AXI_wlast;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_pcie3_0_axi_periph_ACLK_net;
  wire axi_pcie3_0_axi_periph_ARESETN_net;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_WDATA;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB;
  wire axi_pcie3_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m02_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m02_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m02_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [8:0]m03_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [8:0]m03_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m03_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [10:0]m04_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [10:0]m04_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m04_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [12:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire [1:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARBURST;
  wire [3:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARCACHE;
  wire [7:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARLEN;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_ARLOCK;
  wire [2:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire [2:0]m05_couplers_to_axi_pcie3_0_axi_periph_ARSIZE;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [12:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire [1:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWBURST;
  wire [3:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWCACHE;
  wire [7:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWLEN;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_AWLOCK;
  wire [2:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire [2:0]m05_couplers_to_axi_pcie3_0_axi_periph_AWSIZE;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_RLAST;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_WLAST;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m05_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [31:0]m06_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [31:0]m06_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m06_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[8:0] = m02_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[8:0] = m02_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[8:0] = m03_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[8:0] = m03_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[10:0] = m04_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[10:0] = m04_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[12:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M05_AXI_arburst[1:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARBURST;
  assign M05_AXI_arcache[3:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARCACHE;
  assign M05_AXI_arlen[7:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARLEN;
  assign M05_AXI_arlock = m05_couplers_to_axi_pcie3_0_axi_periph_ARLOCK;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  assign M05_AXI_arsize[2:0] = m05_couplers_to_axi_pcie3_0_axi_periph_ARSIZE;
  assign M05_AXI_arvalid = m05_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M05_AXI_awaddr[12:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M05_AXI_awburst[1:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWBURST;
  assign M05_AXI_awcache[3:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWCACHE;
  assign M05_AXI_awlen[7:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWLEN;
  assign M05_AXI_awlock = m05_couplers_to_axi_pcie3_0_axi_periph_AWLOCK;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  assign M05_AXI_awsize[2:0] = m05_couplers_to_axi_pcie3_0_axi_periph_AWSIZE;
  assign M05_AXI_awvalid = m05_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M05_AXI_wlast = m05_couplers_to_axi_pcie3_0_axi_periph_WLAST;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  assign axi_pcie3_0_axi_periph_ACLK_net = ACLK;
  assign axi_pcie3_0_axi_periph_ARESETN_net = ARESETN;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_pcie3_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_pcie3_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_pcie3_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_pcie3_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_pcie3_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_pcie3_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_pcie3_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_pcie3_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_pcie3_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_pcie3_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_pcie3_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_pcie3_0_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_pcie3_0_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_pcie3_0_axi_periph_RLAST = M05_AXI_rlast;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_pcie3_0_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_pcie3_0_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_pcie3_0_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_pcie3_0_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_pcie3_0_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_pcie3_0_axi_periph_WREADY = M06_AXI_wready;
  m00_couplers_imp_38Q45U m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wvalid(m00_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_D39BQC m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_IHXMNY m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_SCGU6G m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_16MS6RU m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1GHAP30 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arburst(m05_couplers_to_axi_pcie3_0_axi_periph_ARBURST),
        .M_AXI_arcache(m05_couplers_to_axi_pcie3_0_axi_periph_ARCACHE),
        .M_AXI_arlen(m05_couplers_to_axi_pcie3_0_axi_periph_ARLEN),
        .M_AXI_arlock(m05_couplers_to_axi_pcie3_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m05_couplers_to_axi_pcie3_0_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arsize(m05_couplers_to_axi_pcie3_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m05_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awburst(m05_couplers_to_axi_pcie3_0_axi_periph_AWBURST),
        .M_AXI_awcache(m05_couplers_to_axi_pcie3_0_axi_periph_AWCACHE),
        .M_AXI_awlen(m05_couplers_to_axi_pcie3_0_axi_periph_AWLEN),
        .M_AXI_awlock(m05_couplers_to_axi_pcie3_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m05_couplers_to_axi_pcie3_0_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awsize(m05_couplers_to_axi_pcie3_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m05_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rlast(m05_couplers_to_axi_pcie3_0_axi_periph_RLAST),
        .M_AXI_rready(m05_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wlast(m05_couplers_to_axi_pcie3_0_axi_periph_WLAST),
        .M_AXI_wready(m05_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1LVZP5Y m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  s00_couplers_imp_N6MPZW s00_couplers
       (.M_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_pcie3_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_pcie3_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_pcie3_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_pcie3_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_pcie3_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_pcie3_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_pcie3_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_pcie3_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_pcie3_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_pcie3_0_axi_periph_to_s00_couplers_WVALID));
  PCIe_Bridge_ICAP_complex_xbar_0 xbar
       (.aclk(axi_pcie3_0_axi_periph_ACLK_net),
        .aresetn(axi_pcie3_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module TO_SH_AXI_MM_NORTH_imp_1JRCDM8
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    aclk,
    aresetn,
    decouple,
    rp_AXI_MM_FROM_HLS_PR_0_araddr,
    rp_AXI_MM_FROM_HLS_PR_0_arburst,
    rp_AXI_MM_FROM_HLS_PR_0_arcache,
    rp_AXI_MM_FROM_HLS_PR_0_arlen,
    rp_AXI_MM_FROM_HLS_PR_0_arlock,
    rp_AXI_MM_FROM_HLS_PR_0_arprot,
    rp_AXI_MM_FROM_HLS_PR_0_arqos,
    rp_AXI_MM_FROM_HLS_PR_0_arready,
    rp_AXI_MM_FROM_HLS_PR_0_arregion,
    rp_AXI_MM_FROM_HLS_PR_0_arsize,
    rp_AXI_MM_FROM_HLS_PR_0_arvalid,
    rp_AXI_MM_FROM_HLS_PR_0_awaddr,
    rp_AXI_MM_FROM_HLS_PR_0_awburst,
    rp_AXI_MM_FROM_HLS_PR_0_awcache,
    rp_AXI_MM_FROM_HLS_PR_0_awlen,
    rp_AXI_MM_FROM_HLS_PR_0_awlock,
    rp_AXI_MM_FROM_HLS_PR_0_awprot,
    rp_AXI_MM_FROM_HLS_PR_0_awqos,
    rp_AXI_MM_FROM_HLS_PR_0_awready,
    rp_AXI_MM_FROM_HLS_PR_0_awregion,
    rp_AXI_MM_FROM_HLS_PR_0_awsize,
    rp_AXI_MM_FROM_HLS_PR_0_awvalid,
    rp_AXI_MM_FROM_HLS_PR_0_bready,
    rp_AXI_MM_FROM_HLS_PR_0_bresp,
    rp_AXI_MM_FROM_HLS_PR_0_bvalid,
    rp_AXI_MM_FROM_HLS_PR_0_rdata,
    rp_AXI_MM_FROM_HLS_PR_0_rlast,
    rp_AXI_MM_FROM_HLS_PR_0_rready,
    rp_AXI_MM_FROM_HLS_PR_0_rresp,
    rp_AXI_MM_FROM_HLS_PR_0_rvalid,
    rp_AXI_MM_FROM_HLS_PR_0_wdata,
    rp_AXI_MM_FROM_HLS_PR_0_wlast,
    rp_AXI_MM_FROM_HLS_PR_0_wready,
    rp_AXI_MM_FROM_HLS_PR_0_wstrb,
    rp_AXI_MM_FROM_HLS_PR_0_wvalid);
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input aclk;
  input aresetn;
  input decouple;
  input [63:0]rp_AXI_MM_FROM_HLS_PR_0_araddr;
  input [1:0]rp_AXI_MM_FROM_HLS_PR_0_arburst;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_arcache;
  input [7:0]rp_AXI_MM_FROM_HLS_PR_0_arlen;
  input [0:0]rp_AXI_MM_FROM_HLS_PR_0_arlock;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_arprot;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_arqos;
  output rp_AXI_MM_FROM_HLS_PR_0_arready;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_arregion;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_arsize;
  input rp_AXI_MM_FROM_HLS_PR_0_arvalid;
  input [63:0]rp_AXI_MM_FROM_HLS_PR_0_awaddr;
  input [1:0]rp_AXI_MM_FROM_HLS_PR_0_awburst;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_awcache;
  input [7:0]rp_AXI_MM_FROM_HLS_PR_0_awlen;
  input [0:0]rp_AXI_MM_FROM_HLS_PR_0_awlock;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_awprot;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_awqos;
  output rp_AXI_MM_FROM_HLS_PR_0_awready;
  input [3:0]rp_AXI_MM_FROM_HLS_PR_0_awregion;
  input [2:0]rp_AXI_MM_FROM_HLS_PR_0_awsize;
  input rp_AXI_MM_FROM_HLS_PR_0_awvalid;
  input rp_AXI_MM_FROM_HLS_PR_0_bready;
  output [1:0]rp_AXI_MM_FROM_HLS_PR_0_bresp;
  output rp_AXI_MM_FROM_HLS_PR_0_bvalid;
  output [511:0]rp_AXI_MM_FROM_HLS_PR_0_rdata;
  output rp_AXI_MM_FROM_HLS_PR_0_rlast;
  input rp_AXI_MM_FROM_HLS_PR_0_rready;
  output [1:0]rp_AXI_MM_FROM_HLS_PR_0_rresp;
  output rp_AXI_MM_FROM_HLS_PR_0_rvalid;
  input [511:0]rp_AXI_MM_FROM_HLS_PR_0_wdata;
  input rp_AXI_MM_FROM_HLS_PR_0_wlast;
  output rp_AXI_MM_FROM_HLS_PR_0_wready;
  input [63:0]rp_AXI_MM_FROM_HLS_PR_0_wstrb;
  input rp_AXI_MM_FROM_HLS_PR_0_wvalid;

  wire [63:0]AXI_MM_3_stage_reg_M_AXI_ARADDR;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_ARBURST;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_ARCACHE;
  wire [7:0]AXI_MM_3_stage_reg_M_AXI_ARLEN;
  wire [0:0]AXI_MM_3_stage_reg_M_AXI_ARLOCK;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_ARPROT;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_ARQOS;
  wire AXI_MM_3_stage_reg_M_AXI_ARREADY;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_ARREGION;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_ARSIZE;
  wire AXI_MM_3_stage_reg_M_AXI_ARVALID;
  wire [63:0]AXI_MM_3_stage_reg_M_AXI_AWADDR;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_AWBURST;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_AWCACHE;
  wire [7:0]AXI_MM_3_stage_reg_M_AXI_AWLEN;
  wire [0:0]AXI_MM_3_stage_reg_M_AXI_AWLOCK;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_AWPROT;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_AWQOS;
  wire AXI_MM_3_stage_reg_M_AXI_AWREADY;
  wire [3:0]AXI_MM_3_stage_reg_M_AXI_AWREGION;
  wire [2:0]AXI_MM_3_stage_reg_M_AXI_AWSIZE;
  wire AXI_MM_3_stage_reg_M_AXI_AWVALID;
  wire AXI_MM_3_stage_reg_M_AXI_BREADY;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_BRESP;
  wire AXI_MM_3_stage_reg_M_AXI_BVALID;
  wire [511:0]AXI_MM_3_stage_reg_M_AXI_RDATA;
  wire AXI_MM_3_stage_reg_M_AXI_RLAST;
  wire AXI_MM_3_stage_reg_M_AXI_RREADY;
  wire [1:0]AXI_MM_3_stage_reg_M_AXI_RRESP;
  wire AXI_MM_3_stage_reg_M_AXI_RVALID;
  wire [511:0]AXI_MM_3_stage_reg_M_AXI_WDATA;
  wire AXI_MM_3_stage_reg_M_AXI_WLAST;
  wire AXI_MM_3_stage_reg_M_AXI_WREADY;
  wire [63:0]AXI_MM_3_stage_reg_M_AXI_WSTRB;
  wire AXI_MM_3_stage_reg_M_AXI_WVALID;
  wire [63:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_0_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_0_M_AXI_ARCACHE;
  wire [7:0]axi_register_slice_0_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_0_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_0_M_AXI_ARQOS;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire [3:0]axi_register_slice_0_M_AXI_ARREGION;
  wire [2:0]axi_register_slice_0_M_AXI_ARSIZE;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [63:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_0_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_0_M_AXI_AWCACHE;
  wire [7:0]axi_register_slice_0_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_0_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_0_M_AXI_AWQOS;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire [3:0]axi_register_slice_0_M_AXI_AWREGION;
  wire [2:0]axi_register_slice_0_M_AXI_AWSIZE;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [511:0]axi_register_slice_0_M_AXI_RDATA;
  wire axi_register_slice_0_M_AXI_RLAST;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [511:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WLAST;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [63:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire clk_wiz_0_clk_out_125M;
  wire decouple_1;
  wire [63:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARADDR;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARBURST;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARCACHE;
  wire [7:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARLEN;
  wire [0:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARLOCK;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARPROT;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARQOS;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARREGION;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_ARSIZE;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_ARVALID;
  wire [63:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWADDR;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWBURST;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWCACHE;
  wire [7:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWLEN;
  wire [0:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWLOCK;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWPROT;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWQOS;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  wire [3:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWREGION;
  wire [2:0]rp_AXI_MM_FROM_HLS_PR_0_1_AWSIZE;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_AWVALID;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_BREADY;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  wire [511:0]rp_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_RREADY;
  wire [1:0]rp_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  wire [511:0]rp_AXI_MM_FROM_HLS_PR_0_1_WDATA;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_WLAST;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  wire [63:0]rp_AXI_MM_FROM_HLS_PR_0_1_WSTRB;
  wire rp_AXI_MM_FROM_HLS_PR_0_1_WVALID;
  wire rst_ddr4_0_300M1_peripheral_aresetn;

  assign AXI_MM_3_stage_reg_M_AXI_ARREADY = M_AXI_arready;
  assign AXI_MM_3_stage_reg_M_AXI_AWREADY = M_AXI_awready;
  assign AXI_MM_3_stage_reg_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign AXI_MM_3_stage_reg_M_AXI_BVALID = M_AXI_bvalid;
  assign AXI_MM_3_stage_reg_M_AXI_RDATA = M_AXI_rdata[511:0];
  assign AXI_MM_3_stage_reg_M_AXI_RLAST = M_AXI_rlast;
  assign AXI_MM_3_stage_reg_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign AXI_MM_3_stage_reg_M_AXI_RVALID = M_AXI_rvalid;
  assign AXI_MM_3_stage_reg_M_AXI_WREADY = M_AXI_wready;
  assign M_AXI_araddr[63:0] = AXI_MM_3_stage_reg_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = AXI_MM_3_stage_reg_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = AXI_MM_3_stage_reg_M_AXI_ARCACHE;
  assign M_AXI_arlen[7:0] = AXI_MM_3_stage_reg_M_AXI_ARLEN;
  assign M_AXI_arlock[0] = AXI_MM_3_stage_reg_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = AXI_MM_3_stage_reg_M_AXI_ARPROT;
  assign M_AXI_arqos[3:0] = AXI_MM_3_stage_reg_M_AXI_ARQOS;
  assign M_AXI_arregion[3:0] = AXI_MM_3_stage_reg_M_AXI_ARREGION;
  assign M_AXI_arsize[2:0] = AXI_MM_3_stage_reg_M_AXI_ARSIZE;
  assign M_AXI_arvalid = AXI_MM_3_stage_reg_M_AXI_ARVALID;
  assign M_AXI_awaddr[63:0] = AXI_MM_3_stage_reg_M_AXI_AWADDR;
  assign M_AXI_awburst[1:0] = AXI_MM_3_stage_reg_M_AXI_AWBURST;
  assign M_AXI_awcache[3:0] = AXI_MM_3_stage_reg_M_AXI_AWCACHE;
  assign M_AXI_awlen[7:0] = AXI_MM_3_stage_reg_M_AXI_AWLEN;
  assign M_AXI_awlock[0] = AXI_MM_3_stage_reg_M_AXI_AWLOCK;
  assign M_AXI_awprot[2:0] = AXI_MM_3_stage_reg_M_AXI_AWPROT;
  assign M_AXI_awqos[3:0] = AXI_MM_3_stage_reg_M_AXI_AWQOS;
  assign M_AXI_awregion[3:0] = AXI_MM_3_stage_reg_M_AXI_AWREGION;
  assign M_AXI_awsize[2:0] = AXI_MM_3_stage_reg_M_AXI_AWSIZE;
  assign M_AXI_awvalid = AXI_MM_3_stage_reg_M_AXI_AWVALID;
  assign M_AXI_bready = AXI_MM_3_stage_reg_M_AXI_BREADY;
  assign M_AXI_rready = AXI_MM_3_stage_reg_M_AXI_RREADY;
  assign M_AXI_wdata[511:0] = AXI_MM_3_stage_reg_M_AXI_WDATA;
  assign M_AXI_wlast = AXI_MM_3_stage_reg_M_AXI_WLAST;
  assign M_AXI_wstrb[63:0] = AXI_MM_3_stage_reg_M_AXI_WSTRB;
  assign M_AXI_wvalid = AXI_MM_3_stage_reg_M_AXI_WVALID;
  assign clk_wiz_0_clk_out_125M = aclk;
  assign decouple_1 = decouple;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARADDR = rp_AXI_MM_FROM_HLS_PR_0_araddr[63:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARBURST = rp_AXI_MM_FROM_HLS_PR_0_arburst[1:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARCACHE = rp_AXI_MM_FROM_HLS_PR_0_arcache[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARLEN = rp_AXI_MM_FROM_HLS_PR_0_arlen[7:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARLOCK = rp_AXI_MM_FROM_HLS_PR_0_arlock[0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARPROT = rp_AXI_MM_FROM_HLS_PR_0_arprot[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARQOS = rp_AXI_MM_FROM_HLS_PR_0_arqos[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARREGION = rp_AXI_MM_FROM_HLS_PR_0_arregion[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARSIZE = rp_AXI_MM_FROM_HLS_PR_0_arsize[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_ARVALID = rp_AXI_MM_FROM_HLS_PR_0_arvalid;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWADDR = rp_AXI_MM_FROM_HLS_PR_0_awaddr[63:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWBURST = rp_AXI_MM_FROM_HLS_PR_0_awburst[1:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWCACHE = rp_AXI_MM_FROM_HLS_PR_0_awcache[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWLEN = rp_AXI_MM_FROM_HLS_PR_0_awlen[7:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWLOCK = rp_AXI_MM_FROM_HLS_PR_0_awlock[0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWPROT = rp_AXI_MM_FROM_HLS_PR_0_awprot[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWQOS = rp_AXI_MM_FROM_HLS_PR_0_awqos[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWREGION = rp_AXI_MM_FROM_HLS_PR_0_awregion[3:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWSIZE = rp_AXI_MM_FROM_HLS_PR_0_awsize[2:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_AWVALID = rp_AXI_MM_FROM_HLS_PR_0_awvalid;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_BREADY = rp_AXI_MM_FROM_HLS_PR_0_bready;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_RREADY = rp_AXI_MM_FROM_HLS_PR_0_rready;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WDATA = rp_AXI_MM_FROM_HLS_PR_0_wdata[511:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WLAST = rp_AXI_MM_FROM_HLS_PR_0_wlast;
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WSTRB = rp_AXI_MM_FROM_HLS_PR_0_wstrb[63:0];
  assign rp_AXI_MM_FROM_HLS_PR_0_1_WVALID = rp_AXI_MM_FROM_HLS_PR_0_wvalid;
  assign rp_AXI_MM_FROM_HLS_PR_0_arready = rp_AXI_MM_FROM_HLS_PR_0_1_ARREADY;
  assign rp_AXI_MM_FROM_HLS_PR_0_awready = rp_AXI_MM_FROM_HLS_PR_0_1_AWREADY;
  assign rp_AXI_MM_FROM_HLS_PR_0_bresp[1:0] = rp_AXI_MM_FROM_HLS_PR_0_1_BRESP;
  assign rp_AXI_MM_FROM_HLS_PR_0_bvalid = rp_AXI_MM_FROM_HLS_PR_0_1_BVALID;
  assign rp_AXI_MM_FROM_HLS_PR_0_rdata[511:0] = rp_AXI_MM_FROM_HLS_PR_0_1_RDATA;
  assign rp_AXI_MM_FROM_HLS_PR_0_rlast = rp_AXI_MM_FROM_HLS_PR_0_1_RLAST;
  assign rp_AXI_MM_FROM_HLS_PR_0_rresp[1:0] = rp_AXI_MM_FROM_HLS_PR_0_1_RRESP;
  assign rp_AXI_MM_FROM_HLS_PR_0_rvalid = rp_AXI_MM_FROM_HLS_PR_0_1_RVALID;
  assign rp_AXI_MM_FROM_HLS_PR_0_wready = rp_AXI_MM_FROM_HLS_PR_0_1_WREADY;
  assign rst_ddr4_0_300M1_peripheral_aresetn = aresetn;
  AXI_MM_2_stage_reg_imp_1FXQ2OE AXI_MM_2_stage_reg
       (.M_AXI_araddr(AXI_MM_3_stage_reg_M_AXI_ARADDR),
        .M_AXI_arburst(AXI_MM_3_stage_reg_M_AXI_ARBURST),
        .M_AXI_arcache(AXI_MM_3_stage_reg_M_AXI_ARCACHE),
        .M_AXI_arlen(AXI_MM_3_stage_reg_M_AXI_ARLEN),
        .M_AXI_arlock(AXI_MM_3_stage_reg_M_AXI_ARLOCK),
        .M_AXI_arprot(AXI_MM_3_stage_reg_M_AXI_ARPROT),
        .M_AXI_arqos(AXI_MM_3_stage_reg_M_AXI_ARQOS),
        .M_AXI_arready(AXI_MM_3_stage_reg_M_AXI_ARREADY),
        .M_AXI_arregion(AXI_MM_3_stage_reg_M_AXI_ARREGION),
        .M_AXI_arsize(AXI_MM_3_stage_reg_M_AXI_ARSIZE),
        .M_AXI_arvalid(AXI_MM_3_stage_reg_M_AXI_ARVALID),
        .M_AXI_awaddr(AXI_MM_3_stage_reg_M_AXI_AWADDR),
        .M_AXI_awburst(AXI_MM_3_stage_reg_M_AXI_AWBURST),
        .M_AXI_awcache(AXI_MM_3_stage_reg_M_AXI_AWCACHE),
        .M_AXI_awlen(AXI_MM_3_stage_reg_M_AXI_AWLEN),
        .M_AXI_awlock(AXI_MM_3_stage_reg_M_AXI_AWLOCK),
        .M_AXI_awprot(AXI_MM_3_stage_reg_M_AXI_AWPROT),
        .M_AXI_awqos(AXI_MM_3_stage_reg_M_AXI_AWQOS),
        .M_AXI_awready(AXI_MM_3_stage_reg_M_AXI_AWREADY),
        .M_AXI_awregion(AXI_MM_3_stage_reg_M_AXI_AWREGION),
        .M_AXI_awsize(AXI_MM_3_stage_reg_M_AXI_AWSIZE),
        .M_AXI_awvalid(AXI_MM_3_stage_reg_M_AXI_AWVALID),
        .M_AXI_bready(AXI_MM_3_stage_reg_M_AXI_BREADY),
        .M_AXI_bresp(AXI_MM_3_stage_reg_M_AXI_BRESP),
        .M_AXI_bvalid(AXI_MM_3_stage_reg_M_AXI_BVALID),
        .M_AXI_rdata(AXI_MM_3_stage_reg_M_AXI_RDATA),
        .M_AXI_rlast(AXI_MM_3_stage_reg_M_AXI_RLAST),
        .M_AXI_rready(AXI_MM_3_stage_reg_M_AXI_RREADY),
        .M_AXI_rresp(AXI_MM_3_stage_reg_M_AXI_RRESP),
        .M_AXI_rvalid(AXI_MM_3_stage_reg_M_AXI_RVALID),
        .M_AXI_wdata(AXI_MM_3_stage_reg_M_AXI_WDATA),
        .M_AXI_wlast(AXI_MM_3_stage_reg_M_AXI_WLAST),
        .M_AXI_wready(AXI_MM_3_stage_reg_M_AXI_WREADY),
        .M_AXI_wstrb(AXI_MM_3_stage_reg_M_AXI_WSTRB),
        .M_AXI_wvalid(AXI_MM_3_stage_reg_M_AXI_WVALID),
        .S_AXI_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .S_AXI_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .S_AXI_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .S_AXI_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .S_AXI_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .S_AXI_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .S_AXI_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .S_AXI_arready(axi_register_slice_0_M_AXI_ARREADY),
        .S_AXI_arregion(axi_register_slice_0_M_AXI_ARREGION),
        .S_AXI_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .S_AXI_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .S_AXI_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .S_AXI_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .S_AXI_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .S_AXI_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .S_AXI_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .S_AXI_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .S_AXI_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .S_AXI_awready(axi_register_slice_0_M_AXI_AWREADY),
        .S_AXI_awregion(axi_register_slice_0_M_AXI_AWREGION),
        .S_AXI_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .S_AXI_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .S_AXI_bready(axi_register_slice_0_M_AXI_BREADY),
        .S_AXI_bresp(axi_register_slice_0_M_AXI_BRESP),
        .S_AXI_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .S_AXI_rdata(axi_register_slice_0_M_AXI_RDATA),
        .S_AXI_rlast(axi_register_slice_0_M_AXI_RLAST),
        .S_AXI_rready(axi_register_slice_0_M_AXI_RREADY),
        .S_AXI_rresp(axi_register_slice_0_M_AXI_RRESP),
        .S_AXI_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .S_AXI_wdata(axi_register_slice_0_M_AXI_WDATA),
        .S_AXI_wlast(axi_register_slice_0_M_AXI_WLAST),
        .S_AXI_wready(axi_register_slice_0_M_AXI_WREADY),
        .S_AXI_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .S_AXI_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .aclk(clk_wiz_0_clk_out_125M),
        .aresetn(rst_ddr4_0_300M1_peripheral_aresetn));
  PCIe_Bridge_ICAP_complex_axi_register_slice_0_0 axi_register_slice_PR_DECOUPLE_AXI_MM
       (.aclk(clk_wiz_0_clk_out_125M),
        .aresetn(decouple_1),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_register_slice_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_register_slice_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(rp_AXI_MM_FROM_HLS_PR_0_1_ARADDR),
        .s_axi_arburst(rp_AXI_MM_FROM_HLS_PR_0_1_ARBURST),
        .s_axi_arcache(rp_AXI_MM_FROM_HLS_PR_0_1_ARCACHE),
        .s_axi_arlen(rp_AXI_MM_FROM_HLS_PR_0_1_ARLEN),
        .s_axi_arlock(rp_AXI_MM_FROM_HLS_PR_0_1_ARLOCK),
        .s_axi_arprot(rp_AXI_MM_FROM_HLS_PR_0_1_ARPROT),
        .s_axi_arqos(rp_AXI_MM_FROM_HLS_PR_0_1_ARQOS),
        .s_axi_arready(rp_AXI_MM_FROM_HLS_PR_0_1_ARREADY),
        .s_axi_arregion(rp_AXI_MM_FROM_HLS_PR_0_1_ARREGION),
        .s_axi_arsize(rp_AXI_MM_FROM_HLS_PR_0_1_ARSIZE),
        .s_axi_arvalid(rp_AXI_MM_FROM_HLS_PR_0_1_ARVALID),
        .s_axi_awaddr(rp_AXI_MM_FROM_HLS_PR_0_1_AWADDR),
        .s_axi_awburst(rp_AXI_MM_FROM_HLS_PR_0_1_AWBURST),
        .s_axi_awcache(rp_AXI_MM_FROM_HLS_PR_0_1_AWCACHE),
        .s_axi_awlen(rp_AXI_MM_FROM_HLS_PR_0_1_AWLEN),
        .s_axi_awlock(rp_AXI_MM_FROM_HLS_PR_0_1_AWLOCK),
        .s_axi_awprot(rp_AXI_MM_FROM_HLS_PR_0_1_AWPROT),
        .s_axi_awqos(rp_AXI_MM_FROM_HLS_PR_0_1_AWQOS),
        .s_axi_awready(rp_AXI_MM_FROM_HLS_PR_0_1_AWREADY),
        .s_axi_awregion(rp_AXI_MM_FROM_HLS_PR_0_1_AWREGION),
        .s_axi_awsize(rp_AXI_MM_FROM_HLS_PR_0_1_AWSIZE),
        .s_axi_awvalid(rp_AXI_MM_FROM_HLS_PR_0_1_AWVALID),
        .s_axi_bready(rp_AXI_MM_FROM_HLS_PR_0_1_BREADY),
        .s_axi_bresp(rp_AXI_MM_FROM_HLS_PR_0_1_BRESP),
        .s_axi_bvalid(rp_AXI_MM_FROM_HLS_PR_0_1_BVALID),
        .s_axi_rdata(rp_AXI_MM_FROM_HLS_PR_0_1_RDATA),
        .s_axi_rlast(rp_AXI_MM_FROM_HLS_PR_0_1_RLAST),
        .s_axi_rready(rp_AXI_MM_FROM_HLS_PR_0_1_RREADY),
        .s_axi_rresp(rp_AXI_MM_FROM_HLS_PR_0_1_RRESP),
        .s_axi_rvalid(rp_AXI_MM_FROM_HLS_PR_0_1_RVALID),
        .s_axi_wdata(rp_AXI_MM_FROM_HLS_PR_0_1_WDATA),
        .s_axi_wlast(rp_AXI_MM_FROM_HLS_PR_0_1_WLAST),
        .s_axi_wready(rp_AXI_MM_FROM_HLS_PR_0_1_WREADY),
        .s_axi_wstrb(rp_AXI_MM_FROM_HLS_PR_0_1_WSTRB),
        .s_axi_wvalid(rp_AXI_MM_FROM_HLS_PR_0_1_WVALID));
endmodule

module m00_couplers_imp_38Q45U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_regslice_ARADDR;
  wire [2:0]auto_cc_to_m00_regslice_ARPROT;
  wire auto_cc_to_m00_regslice_ARREADY;
  wire auto_cc_to_m00_regslice_ARVALID;
  wire [31:0]auto_cc_to_m00_regslice_AWADDR;
  wire [2:0]auto_cc_to_m00_regslice_AWPROT;
  wire auto_cc_to_m00_regslice_AWREADY;
  wire auto_cc_to_m00_regslice_AWVALID;
  wire auto_cc_to_m00_regslice_BREADY;
  wire [1:0]auto_cc_to_m00_regslice_BRESP;
  wire auto_cc_to_m00_regslice_BVALID;
  wire [31:0]auto_cc_to_m00_regslice_RDATA;
  wire auto_cc_to_m00_regslice_RREADY;
  wire [1:0]auto_cc_to_m00_regslice_RRESP;
  wire auto_cc_to_m00_regslice_RVALID;
  wire [31:0]auto_cc_to_m00_regslice_WDATA;
  wire auto_cc_to_m00_regslice_WREADY;
  wire [3:0]auto_cc_to_m00_regslice_WSTRB;
  wire auto_cc_to_m00_regslice_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
  PCIe_Bridge_ICAP_complex_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_W87T5D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [33:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [4:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [33:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [4:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [4:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [4:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [4:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [4:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [33:0]auto_cc_to_m00_regslice_ARADDR;
  wire [1:0]auto_cc_to_m00_regslice_ARBURST;
  wire [3:0]auto_cc_to_m00_regslice_ARCACHE;
  wire [4:0]auto_cc_to_m00_regslice_ARID;
  wire [7:0]auto_cc_to_m00_regslice_ARLEN;
  wire [0:0]auto_cc_to_m00_regslice_ARLOCK;
  wire [2:0]auto_cc_to_m00_regslice_ARPROT;
  wire [3:0]auto_cc_to_m00_regslice_ARQOS;
  wire auto_cc_to_m00_regslice_ARREADY;
  wire [3:0]auto_cc_to_m00_regslice_ARREGION;
  wire [2:0]auto_cc_to_m00_regslice_ARSIZE;
  wire auto_cc_to_m00_regslice_ARVALID;
  wire [33:0]auto_cc_to_m00_regslice_AWADDR;
  wire [1:0]auto_cc_to_m00_regslice_AWBURST;
  wire [3:0]auto_cc_to_m00_regslice_AWCACHE;
  wire [4:0]auto_cc_to_m00_regslice_AWID;
  wire [7:0]auto_cc_to_m00_regslice_AWLEN;
  wire [0:0]auto_cc_to_m00_regslice_AWLOCK;
  wire [2:0]auto_cc_to_m00_regslice_AWPROT;
  wire [3:0]auto_cc_to_m00_regslice_AWQOS;
  wire auto_cc_to_m00_regslice_AWREADY;
  wire [3:0]auto_cc_to_m00_regslice_AWREGION;
  wire [2:0]auto_cc_to_m00_regslice_AWSIZE;
  wire auto_cc_to_m00_regslice_AWVALID;
  wire [4:0]auto_cc_to_m00_regslice_BID;
  wire auto_cc_to_m00_regslice_BREADY;
  wire [1:0]auto_cc_to_m00_regslice_BRESP;
  wire auto_cc_to_m00_regslice_BVALID;
  wire [511:0]auto_cc_to_m00_regslice_RDATA;
  wire [4:0]auto_cc_to_m00_regslice_RID;
  wire auto_cc_to_m00_regslice_RLAST;
  wire auto_cc_to_m00_regslice_RREADY;
  wire [1:0]auto_cc_to_m00_regslice_RRESP;
  wire auto_cc_to_m00_regslice_RVALID;
  wire [511:0]auto_cc_to_m00_regslice_WDATA;
  wire auto_cc_to_m00_regslice_WLAST;
  wire auto_cc_to_m00_regslice_WREADY;
  wire [63:0]auto_cc_to_m00_regslice_WSTRB;
  wire auto_cc_to_m00_regslice_WVALID;
  wire [63:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [4:0]m00_couplers_to_auto_cc_ARID;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [63:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [4:0]m00_couplers_to_auto_cc_AWID;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire [4:0]m00_couplers_to_auto_cc_BID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [511:0]m00_couplers_to_auto_cc_RDATA;
  wire [4:0]m00_couplers_to_auto_cc_RID;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [511:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [63:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;
  wire [33:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [4:0]m00_regslice_to_m00_couplers_ARID;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [33:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [4:0]m00_regslice_to_m00_couplers_AWID;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire [4:0]m00_regslice_to_m00_couplers_BID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [511:0]m00_regslice_to_m00_couplers_RDATA;
  wire [4:0]m00_regslice_to_m00_couplers_RID;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [511:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [63:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[33:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[4:0] = m00_regslice_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[33:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[4:0] = m00_regslice_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[4:0] = m00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[4:0] = m00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARID = S_AXI_arid[4:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWID = S_AXI_awid[4:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BID = M_AXI_bid[4:0];
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign m00_regslice_to_m00_couplers_RID = M_AXI_rid[4:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_regslice_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m00_regslice_ARID),
        .m_axi_arlen(auto_cc_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .m_axi_arregion(auto_cc_to_m00_regslice_ARREGION),
        .m_axi_arsize(auto_cc_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_regslice_AWCACHE),
        .m_axi_awid(auto_cc_to_m00_regslice_AWID),
        .m_axi_awlen(auto_cc_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .m_axi_awregion(auto_cc_to_m00_regslice_AWREGION),
        .m_axi_awsize(auto_cc_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .m_axi_bid(auto_cc_to_m00_regslice_BID),
        .m_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .m_axi_rid(auto_cc_to_m00_regslice_RID),
        .m_axi_rlast(auto_cc_to_m00_regslice_RLAST),
        .m_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .m_axi_wlast(auto_cc_to_m00_regslice_WLAST),
        .m_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[33:0]),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[33:0]),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_cc_BID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_cc_RID),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
  PCIe_Bridge_ICAP_complex_m00_regslice_1 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arid(m00_regslice_to_m00_couplers_ARID),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awid(m00_regslice_to_m00_couplers_AWID),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bid(m00_regslice_to_m00_couplers_BID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rid(m00_regslice_to_m00_couplers_RID),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_cc_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_cc_to_m00_regslice_ARCACHE),
        .s_axi_arid(auto_cc_to_m00_regslice_ARID),
        .s_axi_arlen(auto_cc_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_cc_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_cc_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .s_axi_arregion(auto_cc_to_m00_regslice_ARREGION),
        .s_axi_arsize(auto_cc_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_cc_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_cc_to_m00_regslice_AWCACHE),
        .s_axi_awid(auto_cc_to_m00_regslice_AWID),
        .s_axi_awlen(auto_cc_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_cc_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_cc_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .s_axi_awregion(auto_cc_to_m00_regslice_AWREGION),
        .s_axi_awsize(auto_cc_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .s_axi_bid(auto_cc_to_m00_regslice_BID),
        .s_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .s_axi_rid(auto_cc_to_m00_regslice_RID),
        .s_axi_rlast(auto_cc_to_m00_regslice_RLAST),
        .s_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .s_axi_wlast(auto_cc_to_m00_regslice_WLAST),
        .s_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_D39BQC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [31:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [31:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [31:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_IHXMNY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m02_couplers_to_m02_regslice_ARADDR;
  wire [2:0]m02_couplers_to_m02_regslice_ARPROT;
  wire m02_couplers_to_m02_regslice_ARREADY;
  wire m02_couplers_to_m02_regslice_ARVALID;
  wire [31:0]m02_couplers_to_m02_regslice_AWADDR;
  wire [2:0]m02_couplers_to_m02_regslice_AWPROT;
  wire m02_couplers_to_m02_regslice_AWREADY;
  wire m02_couplers_to_m02_regslice_AWVALID;
  wire m02_couplers_to_m02_regslice_BREADY;
  wire [1:0]m02_couplers_to_m02_regslice_BRESP;
  wire m02_couplers_to_m02_regslice_BVALID;
  wire [31:0]m02_couplers_to_m02_regslice_RDATA;
  wire m02_couplers_to_m02_regslice_RREADY;
  wire [1:0]m02_couplers_to_m02_regslice_RRESP;
  wire m02_couplers_to_m02_regslice_RVALID;
  wire [31:0]m02_couplers_to_m02_regslice_WDATA;
  wire m02_couplers_to_m02_regslice_WREADY;
  wire [3:0]m02_couplers_to_m02_regslice_WSTRB;
  wire m02_couplers_to_m02_regslice_WVALID;
  wire [8:0]m02_regslice_to_m02_couplers_ARADDR;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [8:0]m02_regslice_to_m02_couplers_AWADDR;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [3:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_regslice_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_regslice_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_regslice_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_regslice_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_regslice_WREADY;
  assign m02_couplers_to_m02_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_regslice_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_regslice_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_regslice_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_regslice_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_regslice_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_regslice_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_m02_regslice_0 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_m02_regslice_ARADDR[8:0]),
        .s_axi_arprot(m02_couplers_to_m02_regslice_ARPROT),
        .s_axi_arready(m02_couplers_to_m02_regslice_ARREADY),
        .s_axi_arvalid(m02_couplers_to_m02_regslice_ARVALID),
        .s_axi_awaddr(m02_couplers_to_m02_regslice_AWADDR[8:0]),
        .s_axi_awprot(m02_couplers_to_m02_regslice_AWPROT),
        .s_axi_awready(m02_couplers_to_m02_regslice_AWREADY),
        .s_axi_awvalid(m02_couplers_to_m02_regslice_AWVALID),
        .s_axi_bready(m02_couplers_to_m02_regslice_BREADY),
        .s_axi_bresp(m02_couplers_to_m02_regslice_BRESP),
        .s_axi_bvalid(m02_couplers_to_m02_regslice_BVALID),
        .s_axi_rdata(m02_couplers_to_m02_regslice_RDATA),
        .s_axi_rready(m02_couplers_to_m02_regslice_RREADY),
        .s_axi_rresp(m02_couplers_to_m02_regslice_RRESP),
        .s_axi_rvalid(m02_couplers_to_m02_regslice_RVALID),
        .s_axi_wdata(m02_couplers_to_m02_regslice_WDATA),
        .s_axi_wready(m02_couplers_to_m02_regslice_WREADY),
        .s_axi_wstrb(m02_couplers_to_m02_regslice_WSTRB),
        .s_axi_wvalid(m02_couplers_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_SCGU6G
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m03_couplers_to_m03_regslice_ARADDR;
  wire [2:0]m03_couplers_to_m03_regslice_ARPROT;
  wire m03_couplers_to_m03_regslice_ARREADY;
  wire m03_couplers_to_m03_regslice_ARVALID;
  wire [31:0]m03_couplers_to_m03_regslice_AWADDR;
  wire [2:0]m03_couplers_to_m03_regslice_AWPROT;
  wire m03_couplers_to_m03_regslice_AWREADY;
  wire m03_couplers_to_m03_regslice_AWVALID;
  wire m03_couplers_to_m03_regslice_BREADY;
  wire [1:0]m03_couplers_to_m03_regslice_BRESP;
  wire m03_couplers_to_m03_regslice_BVALID;
  wire [31:0]m03_couplers_to_m03_regslice_RDATA;
  wire m03_couplers_to_m03_regslice_RREADY;
  wire [1:0]m03_couplers_to_m03_regslice_RRESP;
  wire m03_couplers_to_m03_regslice_RVALID;
  wire [31:0]m03_couplers_to_m03_regslice_WDATA;
  wire m03_couplers_to_m03_regslice_WREADY;
  wire [3:0]m03_couplers_to_m03_regslice_WSTRB;
  wire m03_couplers_to_m03_regslice_WVALID;
  wire [8:0]m03_regslice_to_m03_couplers_ARADDR;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [8:0]m03_regslice_to_m03_couplers_AWADDR;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire [3:0]m03_regslice_to_m03_couplers_WSTRB;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_regslice_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_regslice_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_regslice_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_regslice_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_regslice_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_regslice_WREADY;
  assign m03_couplers_to_m03_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_regslice_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_regslice_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_regslice_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_regslice_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_regslice_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_regslice_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_m03_regslice_0 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wstrb(m03_regslice_to_m03_couplers_WSTRB),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_m03_regslice_ARADDR[8:0]),
        .s_axi_arprot(m03_couplers_to_m03_regslice_ARPROT),
        .s_axi_arready(m03_couplers_to_m03_regslice_ARREADY),
        .s_axi_arvalid(m03_couplers_to_m03_regslice_ARVALID),
        .s_axi_awaddr(m03_couplers_to_m03_regslice_AWADDR[8:0]),
        .s_axi_awprot(m03_couplers_to_m03_regslice_AWPROT),
        .s_axi_awready(m03_couplers_to_m03_regslice_AWREADY),
        .s_axi_awvalid(m03_couplers_to_m03_regslice_AWVALID),
        .s_axi_bready(m03_couplers_to_m03_regslice_BREADY),
        .s_axi_bresp(m03_couplers_to_m03_regslice_BRESP),
        .s_axi_bvalid(m03_couplers_to_m03_regslice_BVALID),
        .s_axi_rdata(m03_couplers_to_m03_regslice_RDATA),
        .s_axi_rready(m03_couplers_to_m03_regslice_RREADY),
        .s_axi_rresp(m03_couplers_to_m03_regslice_RRESP),
        .s_axi_rvalid(m03_couplers_to_m03_regslice_RVALID),
        .s_axi_wdata(m03_couplers_to_m03_regslice_WDATA),
        .s_axi_wready(m03_couplers_to_m03_regslice_WREADY),
        .s_axi_wstrb(m03_couplers_to_m03_regslice_WSTRB),
        .s_axi_wvalid(m03_couplers_to_m03_regslice_WVALID));
endmodule

module m04_couplers_imp_16MS6RU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [10:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [10:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m04_couplers_to_m04_regslice_ARADDR;
  wire [2:0]m04_couplers_to_m04_regslice_ARPROT;
  wire m04_couplers_to_m04_regslice_ARREADY;
  wire m04_couplers_to_m04_regslice_ARVALID;
  wire [31:0]m04_couplers_to_m04_regslice_AWADDR;
  wire [2:0]m04_couplers_to_m04_regslice_AWPROT;
  wire m04_couplers_to_m04_regslice_AWREADY;
  wire m04_couplers_to_m04_regslice_AWVALID;
  wire m04_couplers_to_m04_regslice_BREADY;
  wire [1:0]m04_couplers_to_m04_regslice_BRESP;
  wire m04_couplers_to_m04_regslice_BVALID;
  wire [31:0]m04_couplers_to_m04_regslice_RDATA;
  wire m04_couplers_to_m04_regslice_RREADY;
  wire [1:0]m04_couplers_to_m04_regslice_RRESP;
  wire m04_couplers_to_m04_regslice_RVALID;
  wire [31:0]m04_couplers_to_m04_regslice_WDATA;
  wire m04_couplers_to_m04_regslice_WREADY;
  wire [3:0]m04_couplers_to_m04_regslice_WSTRB;
  wire m04_couplers_to_m04_regslice_WVALID;
  wire [10:0]m04_regslice_to_m04_couplers_ARADDR;
  wire m04_regslice_to_m04_couplers_ARREADY;
  wire m04_regslice_to_m04_couplers_ARVALID;
  wire [10:0]m04_regslice_to_m04_couplers_AWADDR;
  wire m04_regslice_to_m04_couplers_AWREADY;
  wire m04_regslice_to_m04_couplers_AWVALID;
  wire m04_regslice_to_m04_couplers_BREADY;
  wire [1:0]m04_regslice_to_m04_couplers_BRESP;
  wire m04_regslice_to_m04_couplers_BVALID;
  wire [31:0]m04_regslice_to_m04_couplers_RDATA;
  wire m04_regslice_to_m04_couplers_RREADY;
  wire [1:0]m04_regslice_to_m04_couplers_RRESP;
  wire m04_regslice_to_m04_couplers_RVALID;
  wire [31:0]m04_regslice_to_m04_couplers_WDATA;
  wire m04_regslice_to_m04_couplers_WREADY;
  wire [3:0]m04_regslice_to_m04_couplers_WSTRB;
  wire m04_regslice_to_m04_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[10:0] = m04_regslice_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_regslice_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[10:0] = m04_regslice_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_regslice_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_regslice_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_regslice_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_regslice_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_regslice_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_regslice_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_regslice_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_regslice_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_regslice_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_regslice_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_regslice_WREADY;
  assign m04_couplers_to_m04_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_regslice_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_regslice_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_regslice_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_regslice_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_regslice_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_regslice_WVALID = S_AXI_wvalid;
  assign m04_regslice_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_regslice_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_regslice_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_regslice_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_regslice_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_regslice_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_regslice_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_regslice_to_m04_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_m04_regslice_0 m04_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m04_regslice_to_m04_couplers_ARADDR),
        .m_axi_arready(m04_regslice_to_m04_couplers_ARREADY),
        .m_axi_arvalid(m04_regslice_to_m04_couplers_ARVALID),
        .m_axi_awaddr(m04_regslice_to_m04_couplers_AWADDR),
        .m_axi_awready(m04_regslice_to_m04_couplers_AWREADY),
        .m_axi_awvalid(m04_regslice_to_m04_couplers_AWVALID),
        .m_axi_bready(m04_regslice_to_m04_couplers_BREADY),
        .m_axi_bresp(m04_regslice_to_m04_couplers_BRESP),
        .m_axi_bvalid(m04_regslice_to_m04_couplers_BVALID),
        .m_axi_rdata(m04_regslice_to_m04_couplers_RDATA),
        .m_axi_rready(m04_regslice_to_m04_couplers_RREADY),
        .m_axi_rresp(m04_regslice_to_m04_couplers_RRESP),
        .m_axi_rvalid(m04_regslice_to_m04_couplers_RVALID),
        .m_axi_wdata(m04_regslice_to_m04_couplers_WDATA),
        .m_axi_wready(m04_regslice_to_m04_couplers_WREADY),
        .m_axi_wstrb(m04_regslice_to_m04_couplers_WSTRB),
        .m_axi_wvalid(m04_regslice_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_m04_regslice_ARADDR[10:0]),
        .s_axi_arprot(m04_couplers_to_m04_regslice_ARPROT),
        .s_axi_arready(m04_couplers_to_m04_regslice_ARREADY),
        .s_axi_arvalid(m04_couplers_to_m04_regslice_ARVALID),
        .s_axi_awaddr(m04_couplers_to_m04_regslice_AWADDR[10:0]),
        .s_axi_awprot(m04_couplers_to_m04_regslice_AWPROT),
        .s_axi_awready(m04_couplers_to_m04_regslice_AWREADY),
        .s_axi_awvalid(m04_couplers_to_m04_regslice_AWVALID),
        .s_axi_bready(m04_couplers_to_m04_regslice_BREADY),
        .s_axi_bresp(m04_couplers_to_m04_regslice_BRESP),
        .s_axi_bvalid(m04_couplers_to_m04_regslice_BVALID),
        .s_axi_rdata(m04_couplers_to_m04_regslice_RDATA),
        .s_axi_rready(m04_couplers_to_m04_regslice_RREADY),
        .s_axi_rresp(m04_couplers_to_m04_regslice_RRESP),
        .s_axi_rvalid(m04_couplers_to_m04_regslice_RVALID),
        .s_axi_wdata(m04_couplers_to_m04_regslice_WDATA),
        .s_axi_wready(m04_couplers_to_m04_regslice_WREADY),
        .s_axi_wstrb(m04_couplers_to_m04_regslice_WSTRB),
        .s_axi_wvalid(m04_couplers_to_m04_regslice_WVALID));
endmodule

module m05_couplers_imp_1GHAP30
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m05_couplers_ARADDR;
  wire [1:0]auto_pc_to_m05_couplers_ARBURST;
  wire [3:0]auto_pc_to_m05_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m05_couplers_ARLEN;
  wire [0:0]auto_pc_to_m05_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m05_couplers_ARPROT;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire [2:0]auto_pc_to_m05_couplers_ARSIZE;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [12:0]auto_pc_to_m05_couplers_AWADDR;
  wire [1:0]auto_pc_to_m05_couplers_AWBURST;
  wire [3:0]auto_pc_to_m05_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m05_couplers_AWLEN;
  wire [0:0]auto_pc_to_m05_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m05_couplers_AWPROT;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire [2:0]auto_pc_to_m05_couplers_AWSIZE;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RLAST;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WLAST;
  wire auto_pc_to_m05_couplers_WREADY;
  wire [3:0]auto_pc_to_m05_couplers_WSTRB;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_pc_ARADDR;
  wire [2:0]m05_couplers_to_auto_pc_ARPROT;
  wire m05_couplers_to_auto_pc_ARREADY;
  wire m05_couplers_to_auto_pc_ARVALID;
  wire [31:0]m05_couplers_to_auto_pc_AWADDR;
  wire [2:0]m05_couplers_to_auto_pc_AWPROT;
  wire m05_couplers_to_auto_pc_AWREADY;
  wire m05_couplers_to_auto_pc_AWVALID;
  wire m05_couplers_to_auto_pc_BREADY;
  wire [1:0]m05_couplers_to_auto_pc_BRESP;
  wire m05_couplers_to_auto_pc_BVALID;
  wire [31:0]m05_couplers_to_auto_pc_RDATA;
  wire m05_couplers_to_auto_pc_RREADY;
  wire [1:0]m05_couplers_to_auto_pc_RRESP;
  wire m05_couplers_to_auto_pc_RVALID;
  wire [31:0]m05_couplers_to_auto_pc_WDATA;
  wire m05_couplers_to_auto_pc_WREADY;
  wire [3:0]m05_couplers_to_auto_pc_WSTRB;
  wire m05_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m05_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m05_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m05_couplers_ARLEN;
  assign M_AXI_arlock = auto_pc_to_m05_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m05_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m05_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m05_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m05_couplers_AWLEN;
  assign M_AXI_awlock = auto_pc_to_m05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m05_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m05_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m05_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  PCIe_Bridge_ICAP_complex_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m05_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m05_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m05_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m05_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m05_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m05_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m05_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m05_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m05_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m05_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m05_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m05_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m05_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m05_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arprot(m05_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m05_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awprot(m05_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m05_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m05_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_pc_WVALID));
endmodule

module m06_couplers_imp_1LVZP5Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_C7QUHR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [4:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [4:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [3:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [3:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [3:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire [3:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [63:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [3:0]s00_regslice_to_s00_couplers_ARID;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [63:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [3:0]s00_regslice_to_s00_couplers_AWID;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire [4:0]s00_regslice_to_s00_couplers_BID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire [4:0]s00_regslice_to_s00_couplers_RID;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s00_regslice_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s00_regslice_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[3:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[3:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BID = M_AXI_bid[4:0];
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RID = M_AXI_rid[4:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_s00_regslice_1 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_regslice_to_s00_couplers_ARID),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_regslice_to_s00_couplers_AWID),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_regslice_to_s00_couplers_BID[3:0]),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rid(s00_regslice_to_s00_couplers_RID[3:0]),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_N6MPZW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s00_couplers_ARADDR;
  wire [2:0]auto_cc_to_s00_couplers_ARPROT;
  wire auto_cc_to_s00_couplers_ARREADY;
  wire auto_cc_to_s00_couplers_ARVALID;
  wire [31:0]auto_cc_to_s00_couplers_AWADDR;
  wire [2:0]auto_cc_to_s00_couplers_AWPROT;
  wire auto_cc_to_s00_couplers_AWREADY;
  wire auto_cc_to_s00_couplers_AWVALID;
  wire auto_cc_to_s00_couplers_BREADY;
  wire [1:0]auto_cc_to_s00_couplers_BRESP;
  wire auto_cc_to_s00_couplers_BVALID;
  wire [31:0]auto_cc_to_s00_couplers_RDATA;
  wire auto_cc_to_s00_couplers_RREADY;
  wire [1:0]auto_cc_to_s00_couplers_RRESP;
  wire auto_cc_to_s00_couplers_RVALID;
  wire [31:0]auto_cc_to_s00_couplers_WDATA;
  wire auto_cc_to_s00_couplers_WREADY;
  wire [3:0]auto_cc_to_s00_couplers_WSTRB;
  wire auto_cc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_cc_ARADDR;
  wire [2:0]s00_regslice_to_auto_cc_ARPROT;
  wire s00_regslice_to_auto_cc_ARREADY;
  wire s00_regslice_to_auto_cc_ARVALID;
  wire [31:0]s00_regslice_to_auto_cc_AWADDR;
  wire [2:0]s00_regslice_to_auto_cc_AWPROT;
  wire s00_regslice_to_auto_cc_AWREADY;
  wire s00_regslice_to_auto_cc_AWVALID;
  wire s00_regslice_to_auto_cc_BREADY;
  wire [1:0]s00_regslice_to_auto_cc_BRESP;
  wire s00_regslice_to_auto_cc_BVALID;
  wire [31:0]s00_regslice_to_auto_cc_RDATA;
  wire s00_regslice_to_auto_cc_RREADY;
  wire [1:0]s00_regslice_to_auto_cc_RRESP;
  wire s00_regslice_to_auto_cc_RVALID;
  wire [31:0]s00_regslice_to_auto_cc_WDATA;
  wire s00_regslice_to_auto_cc_WREADY;
  wire [3:0]s00_regslice_to_auto_cc_WSTRB;
  wire s00_regslice_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_cc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  PCIe_Bridge_ICAP_complex_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .s_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .s_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .s_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .s_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .s_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .s_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .s_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_cc_WVALID));
  PCIe_Bridge_ICAP_complex_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_cc_ARADDR),
        .m_axi_arprot(s00_regslice_to_auto_cc_ARPROT),
        .m_axi_arready(s00_regslice_to_auto_cc_ARREADY),
        .m_axi_arvalid(s00_regslice_to_auto_cc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_cc_AWADDR),
        .m_axi_awprot(s00_regslice_to_auto_cc_AWPROT),
        .m_axi_awready(s00_regslice_to_auto_cc_AWREADY),
        .m_axi_awvalid(s00_regslice_to_auto_cc_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_cc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_cc_RDATA),
        .m_axi_rready(s00_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_cc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_cc_WDATA),
        .m_axi_wready(s00_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_cc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s01_couplers_imp_2D2PK9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [0:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [3:0]s01_couplers_to_s01_regslice_ARREGION;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [63:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [0:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [3:0]s01_couplers_to_s01_regslice_AWREGION;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [511:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [511:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [63:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [63:0]s01_regslice_to_s01_couplers_ARADDR;
  wire [1:0]s01_regslice_to_s01_couplers_ARBURST;
  wire [3:0]s01_regslice_to_s01_couplers_ARCACHE;
  wire [7:0]s01_regslice_to_s01_couplers_ARLEN;
  wire [0:0]s01_regslice_to_s01_couplers_ARLOCK;
  wire [2:0]s01_regslice_to_s01_couplers_ARPROT;
  wire [3:0]s01_regslice_to_s01_couplers_ARQOS;
  wire s01_regslice_to_s01_couplers_ARREADY;
  wire [2:0]s01_regslice_to_s01_couplers_ARSIZE;
  wire s01_regslice_to_s01_couplers_ARVALID;
  wire [63:0]s01_regslice_to_s01_couplers_AWADDR;
  wire [1:0]s01_regslice_to_s01_couplers_AWBURST;
  wire [3:0]s01_regslice_to_s01_couplers_AWCACHE;
  wire [7:0]s01_regslice_to_s01_couplers_AWLEN;
  wire [0:0]s01_regslice_to_s01_couplers_AWLOCK;
  wire [2:0]s01_regslice_to_s01_couplers_AWPROT;
  wire [3:0]s01_regslice_to_s01_couplers_AWQOS;
  wire s01_regslice_to_s01_couplers_AWREADY;
  wire [2:0]s01_regslice_to_s01_couplers_AWSIZE;
  wire s01_regslice_to_s01_couplers_AWVALID;
  wire s01_regslice_to_s01_couplers_BREADY;
  wire [1:0]s01_regslice_to_s01_couplers_BRESP;
  wire s01_regslice_to_s01_couplers_BVALID;
  wire [511:0]s01_regslice_to_s01_couplers_RDATA;
  wire s01_regslice_to_s01_couplers_RLAST;
  wire s01_regslice_to_s01_couplers_RREADY;
  wire [1:0]s01_regslice_to_s01_couplers_RRESP;
  wire s01_regslice_to_s01_couplers_RVALID;
  wire [511:0]s01_regslice_to_s01_couplers_WDATA;
  wire s01_regslice_to_s01_couplers_WLAST;
  wire s01_regslice_to_s01_couplers_WREADY;
  wire [63:0]s01_regslice_to_s01_couplers_WSTRB;
  wire s01_regslice_to_s01_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s01_regslice_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_regslice_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_regslice_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s01_regslice_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_regslice_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_regslice_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_regslice_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_regslice_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_regslice_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s01_regslice_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_regslice_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_regslice_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_regslice_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_regslice_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_regslice_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_regslice_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_regslice_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_regslice_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_regslice_to_s01_couplers_BREADY;
  assign M_AXI_rready = s01_regslice_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s01_regslice_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_regslice_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s01_regslice_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_regslice_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[511:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  assign s01_regslice_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_regslice_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_regslice_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_regslice_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_regslice_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign s01_regslice_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_regslice_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_regslice_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_regslice_to_s01_couplers_WREADY = M_AXI_wready;
  PCIe_Bridge_ICAP_complex_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_regslice_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_regslice_to_s01_couplers_ARCACHE),
        .m_axi_arlen(s01_regslice_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_regslice_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_regslice_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_regslice_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_regslice_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_regslice_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_s01_couplers_ARVALID),
        .m_axi_awaddr(s01_regslice_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_regslice_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_regslice_to_s01_couplers_AWCACHE),
        .m_axi_awlen(s01_regslice_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_regslice_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_regslice_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_regslice_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_regslice_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_regslice_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_s01_couplers_AWVALID),
        .m_axi_bready(s01_regslice_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_regslice_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_regslice_to_s01_couplers_BVALID),
        .m_axi_rdata(s01_regslice_to_s01_couplers_RDATA),
        .m_axi_rlast(s01_regslice_to_s01_couplers_RLAST),
        .m_axi_rready(s01_regslice_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_regslice_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_regslice_to_s01_couplers_RVALID),
        .m_axi_wdata(s01_regslice_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_regslice_to_s01_couplers_WLAST),
        .m_axi_wready(s01_regslice_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_regslice_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_regslice_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_regslice_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_regslice_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule
