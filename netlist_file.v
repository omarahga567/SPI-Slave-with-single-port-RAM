// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug  6 22:30:45 2025
// Host        : DESKTOP-KR78FV0 running 64-bit major release  (build 9200)
// Command     : write_verilog C:/Users/omara/OneDrive/Documents/digital/project2_2/project_6.v
// Design      : SPI_RAM_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (DOBDO,
    \tx_data_out_reg[0] ,
    clk_IBUF_BUFG,
    rx_valid_reg,
    \rx_data_reg[9] ,
    SR,
    D,
    rst_n_IBUF,
    shifter_loaded_reg,
    E,
    rx_valid_reg_0);
  output [6:0]DOBDO;
  output [0:0]\tx_data_out_reg[0] ;
  input clk_IBUF_BUFG;
  input rx_valid_reg;
  input \rx_data_reg[9] ;
  input [0:0]SR;
  input [7:0]D;
  input rst_n_IBUF;
  input shifter_loaded_reg;
  input [0:0]E;
  input [0:0]rx_valid_reg_0;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire [6:0]DOBDO;
  wire [0:0]E;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [7:0]rd_addr;
  wire rst_n_IBUF;
  wire \rx_data_reg[9] ;
  wire rx_valid_reg;
  wire [0:0]rx_valid_reg_0;
  wire shifter_loaded_reg;
  wire [0:0]tx_data;
  wire [0:0]\tx_data_out_reg[0] ;
  wire [7:0]wr_addr;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,wr_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,rd_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO({DOBDO,tx_data}),
        .ENARDEN(rx_valid_reg),
        .ENBWREN(\rx_data_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({rst_n_IBUF,rst_n_IBUF}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[0]),
        .Q(rd_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[1]),
        .Q(rd_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[2]),
        .Q(rd_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[3]),
        .Q(rd_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[4]),
        .Q(rd_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[5]),
        .Q(rd_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[6]),
        .Q(rd_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rx_valid_reg_0),
        .D(D[7]),
        .Q(rd_addr[7]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \tx_data_out[0]_i_1 
       (.I0(tx_data),
        .I1(shifter_loaded_reg),
        .O(\tx_data_out_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(wr_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(wr_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(wr_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(wr_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(wr_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(wr_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(wr_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(wr_addr[7]),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_RAM_wrapper
   (MOSI,
    MISO,
    SS_n,
    clk,
    rst_n);
  input MOSI;
  output MISO;
  input SS_n;
  input clk;
  input rst_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire ram_inst_n_7;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire spi_slave_inst_n_1;
  wire spi_slave_inst_n_12;
  wire spi_slave_inst_n_13;
  wire spi_slave_inst_n_14;
  wire spi_slave_inst_n_2;
  wire spi_slave_inst_n_3;
  wire [7:1]tx_data;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  RAM ram_inst
       (.D(rx_data),
        .DOBDO(tx_data),
        .E(spi_slave_inst_n_13),
        .SR(spi_slave_inst_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[9] (spi_slave_inst_n_3),
        .rx_valid_reg(spi_slave_inst_n_12),
        .rx_valid_reg_0(spi_slave_inst_n_14),
        .shifter_loaded_reg(spi_slave_inst_n_2),
        .\tx_data_out_reg[0] (ram_inst_n_7));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI_Slave spi_slave_inst
       (.D(MOSI_IBUF),
        .DOBDO(tx_data),
        .E(spi_slave_inst_n_13),
        .MISO_OBUF(MISO_OBUF),
        .SR(spi_slave_inst_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .mem_reg(spi_slave_inst_n_3),
        .mem_reg_0(spi_slave_inst_n_12),
        .mem_reg_1(ram_inst_n_7),
        .\rd_addr_reg[7] (rx_data),
        .\rd_addr_reg[7]_0 (spi_slave_inst_n_14),
        .rst_n_IBUF(rst_n_IBUF),
        .shifter_loaded_reg_0(spi_slave_inst_n_2));
endmodule

module SPI_Slave
   (MISO_OBUF,
    SR,
    shifter_loaded_reg_0,
    mem_reg,
    \rd_addr_reg[7] ,
    mem_reg_0,
    E,
    \rd_addr_reg[7]_0 ,
    D,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    SS_n_IBUF,
    DOBDO,
    mem_reg_1);
  output MISO_OBUF;
  output [0:0]SR;
  output shifter_loaded_reg_0;
  output mem_reg;
  output [7:0]\rd_addr_reg[7] ;
  output mem_reg_0;
  output [0:0]E;
  output [0:0]\rd_addr_reg[7]_0 ;
  input [0:0]D;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input SS_n_IBUF;
  input [6:0]DOBDO;
  input [0:0]mem_reg_1;

  wire \<const0> ;
  wire \<const1> ;
  (* RTL_KEEP = "yes" *) wire [2:0]CS;
  wire [0:0]D;
  wire [6:0]DOBDO;
  wire [0:0]E;
  wire \FSM_sequential_CS[0]_i_1_n_0 ;
  wire \FSM_sequential_CS[0]_i_2_n_0 ;
  wire \FSM_sequential_CS[1]_i_1_n_0 ;
  wire \FSM_sequential_CS[1]_i_2_n_0 ;
  wire \FSM_sequential_CS[2]_i_1_n_0 ;
  wire \FSM_sequential_CS[2]_i_2_n_0 ;
  wire MISO6_out;
  wire MISO_OBUF;
  wire MISO_i_2_n_0;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire mem_reg;
  wire mem_reg_0;
  wire [0:0]mem_reg_1;
  wire p_0_in;
  wire [7:0]\rd_addr_reg[7] ;
  wire [0:0]\rd_addr_reg[7]_0 ;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire \rx_data[9]_i_3_n_0 ;
  wire rx_data_MSB;
  wire \rx_data_MSB[0]_i_1_n_0 ;
  wire \rx_data_MSB[1]_i_1_n_0 ;
  wire \rx_data_MSB_reg_n_0_[0] ;
  wire \rx_data_MSB_reg_n_0_[1] ;
  wire [9:0]rx_data_in;
  wire \rx_data_in[9]_i_1_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire rx_valid_i_4_n_0;
  wire shifter_loaded_i_1_n_0;
  wire shifter_loaded_reg_0;
  wire [6:0]tx_data_out;
  wire \tx_data_out[1]_i_1_n_0 ;
  wire \tx_data_out[2]_i_1_n_0 ;
  wire \tx_data_out[3]_i_1_n_0 ;
  wire \tx_data_out[4]_i_1_n_0 ;
  wire \tx_data_out[5]_i_1_n_0 ;
  wire \tx_data_out[6]_i_1_n_0 ;
  wire \tx_data_out[7]_i_1_n_0 ;
  wire \tx_data_out[7]_i_2_n_0 ;
  wire wr_or_rd7_out;
  wire wr_or_rd_reg_n_0;

  LUT6 #(
    .INIT(64'h0000040700000000)) 
    \FSM_sequential_CS[0]_i_1 
       (.I0(\FSM_sequential_CS[0]_i_2_n_0 ),
        .I1(CS[0]),
        .I2(SS_n_IBUF),
        .I3(CS[1]),
        .I4(CS[2]),
        .I5(rst_n_IBUF),
        .O(\FSM_sequential_CS[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0EEEEEE)) 
    \FSM_sequential_CS[0]_i_2 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(\rx_data_MSB_reg_n_0_[0] ),
        .I3(wr_or_rd_reg_n_0),
        .I4(\rx_data_MSB_reg_n_0_[1] ),
        .I5(CS[1]),
        .O(\FSM_sequential_CS[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \FSM_sequential_CS[1]_i_1 
       (.I0(\FSM_sequential_CS[1]_i_2_n_0 ),
        .I1(CS[0]),
        .I2(CS[1]),
        .I3(CS[2]),
        .I4(SS_n_IBUF),
        .I5(rst_n_IBUF),
        .O(\FSM_sequential_CS[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F010F0F01010101)) 
    \FSM_sequential_CS[1]_i_2 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(CS[1]),
        .I3(\rx_data_MSB_reg_n_0_[0] ),
        .I4(\rx_data_MSB_reg_n_0_[1] ),
        .I5(wr_or_rd_reg_n_0),
        .O(\FSM_sequential_CS[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000B800000000)) 
    \FSM_sequential_CS[2]_i_1 
       (.I0(\FSM_sequential_CS[2]_i_2_n_0 ),
        .I1(CS[0]),
        .I2(CS[2]),
        .I3(CS[1]),
        .I4(SS_n_IBUF),
        .I5(rst_n_IBUF),
        .O(\FSM_sequential_CS[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040400000000000)) 
    \FSM_sequential_CS[2]_i_2 
       (.I0(CS[2]),
        .I1(\rx_data_MSB_reg_n_0_[1] ),
        .I2(\rx_data_MSB_reg_n_0_[0] ),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(wr_or_rd_reg_n_0),
        .O(\FSM_sequential_CS[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CS_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_CS[0]_i_1_n_0 ),
        .Q(CS[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CS_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_CS[1]_i_1_n_0 ),
        .Q(CS[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CS_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_CS[2]_i_1_n_0 ),
        .Q(CS[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    MISO_i_1
       (.I0(SS_n_IBUF),
        .O(MISO6_out));
  LUT6 #(
    .INIT(64'h000000E200000000)) 
    MISO_i_2
       (.I0(DOBDO[6]),
        .I1(shifter_loaded_reg_0),
        .I2(p_0_in),
        .I3(CS[1]),
        .I4(CS[0]),
        .I5(CS[2]),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO6_out),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \counter[0]_i_1 
       (.I0(rst_n_IBUF),
        .I1(counter[0]),
        .I2(SS_n_IBUF),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \counter[1]_i_1 
       (.I0(rst_n_IBUF),
        .I1(SS_n_IBUF),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \counter[2]_i_1 
       (.I0(rst_n_IBUF),
        .I1(SS_n_IBUF),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \counter[3]_i_2 
       (.I0(rst_n_IBUF),
        .I1(SS_n_IBUF),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .I5(counter[3]),
        .O(\counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[3]_i_2_n_0 ),
        .Q(counter[3]),
        .R(\counter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_1
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(mem_reg_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_2
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_3
       (.I0(rst_n_IBUF),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \rd_addr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .O(\rd_addr_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[0]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[0]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[1]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[1]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[2]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[2]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[3]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[3]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[4]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[4]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[5]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[5]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[6]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[6]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[7]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[7]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[8]_i_1 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[8]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \rx_data[9]_i_1 
       (.I0(CS[2]),
        .I1(CS[1]),
        .I2(\rx_data[9]_i_3_n_0 ),
        .I3(rst_n_IBUF),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBA8A0000)) 
    \rx_data[9]_i_2 
       (.I0(rst_n_IBUF),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(rx_data_in[9]),
        .I4(\rx_data[9]_i_3_n_0 ),
        .O(\rx_data[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \rx_data[9]_i_3 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter[1]),
        .O(\rx_data[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_data_MSB[0]_i_1 
       (.I0(rx_data_in[0]),
        .I1(rx_data_MSB),
        .I2(\rx_data_MSB_reg_n_0_[0] ),
        .O(\rx_data_MSB[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_data_MSB[1]_i_1 
       (.I0(rx_data_in[1]),
        .I1(rx_data_MSB),
        .I2(\rx_data_MSB_reg_n_0_[1] ),
        .O(\rx_data_MSB[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \rx_data_MSB[1]_i_2 
       (.I0(rst_n_IBUF),
        .I1(SS_n_IBUF),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[0]),
        .I5(counter[1]),
        .O(rx_data_MSB));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_MSB_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_MSB[0]_i_1_n_0 ),
        .Q(\rx_data_MSB_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_MSB_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_MSB[1]_i_1_n_0 ),
        .Q(\rx_data_MSB_reg_n_0_[1] ),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \rx_data_in[9]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(SS_n_IBUF),
        .O(\rx_data_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(D),
        .Q(rx_data_in[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[0]),
        .Q(rx_data_in[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[1]),
        .Q(rx_data_in[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[2]),
        .Q(rx_data_in[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[3]),
        .Q(rx_data_in[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[4]),
        .Q(rx_data_in[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[5]),
        .Q(rx_data_in[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[6]),
        .Q(rx_data_in[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[7]),
        .Q(rx_data_in[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_in_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data_in[9]_i_1_n_0 ),
        .D(rx_data_in[8]),
        .Q(rx_data_in[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(\rd_addr_reg[7] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[9]_i_2_n_0 ),
        .Q(rx_data[9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h444444444444F444)) 
    rx_valid_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(rx_valid),
        .I2(rx_valid_i_3_n_0),
        .I3(counter[3]),
        .I4(rx_valid_i_4_n_0),
        .I5(counter[2]),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rx_valid_i_2
       (.I0(SS_n_IBUF),
        .I1(rst_n_IBUF),
        .O(rx_valid_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rx_valid_i_3
       (.I0(CS[1]),
        .I1(CS[2]),
        .O(rx_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rx_valid_i_4
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(rx_valid_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h00000000AAAE0000)) 
    shifter_loaded_i_1
       (.I0(shifter_loaded_reg_0),
        .I1(CS[2]),
        .I2(CS[0]),
        .I3(CS[1]),
        .I4(rst_n_IBUF),
        .I5(SS_n_IBUF),
        .O(shifter_loaded_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    shifter_loaded_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(shifter_loaded_i_1_n_0),
        .Q(shifter_loaded_reg_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_out[1]_i_1 
       (.I0(tx_data_out[0]),
        .I1(shifter_loaded_reg_0),
        .I2(DOBDO[0]),
        .O(\tx_data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_out[2]_i_1 
       (.I0(tx_data_out[1]),
        .I1(shifter_loaded_reg_0),
        .I2(DOBDO[1]),
        .O(\tx_data_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_out[3]_i_1 
       (.I0(tx_data_out[2]),
        .I1(shifter_loaded_reg_0),
        .I2(DOBDO[2]),
        .O(\tx_data_out[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_out[4]_i_1 
       (.I0(tx_data_out[3]),
        .I1(shifter_loaded_reg_0),
        .I2(DOBDO[3]),
        .O(\tx_data_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_out[5]_i_1 
       (.I0(tx_data_out[4]),
        .I1(shifter_loaded_reg_0),
        .I2(DOBDO[4]),
        .O(\tx_data_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_out[6]_i_1 
       (.I0(tx_data_out[5]),
        .I1(shifter_loaded_reg_0),
        .I2(DOBDO[5]),
        .O(\tx_data_out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \tx_data_out[7]_i_1 
       (.I0(SS_n_IBUF),
        .I1(CS[1]),
        .I2(CS[0]),
        .I3(CS[2]),
        .O(\tx_data_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_data_out[7]_i_2 
       (.I0(tx_data_out[6]),
        .I1(shifter_loaded_reg_0),
        .I2(DOBDO[6]),
        .O(\tx_data_out[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(mem_reg_1),
        .Q(tx_data_out[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(\tx_data_out[1]_i_1_n_0 ),
        .Q(tx_data_out[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(\tx_data_out[2]_i_1_n_0 ),
        .Q(tx_data_out[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(\tx_data_out[3]_i_1_n_0 ),
        .Q(tx_data_out[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(\tx_data_out[4]_i_1_n_0 ),
        .Q(tx_data_out[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(\tx_data_out[5]_i_1_n_0 ),
        .Q(tx_data_out[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(\tx_data_out[6]_i_1_n_0 ),
        .Q(tx_data_out[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_out[7]_i_1_n_0 ),
        .D(\tx_data_out[7]_i_2_n_0 ),
        .Q(p_0_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \wr_addr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    wr_or_rd_i_1
       (.I0(rst_n_IBUF),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(SS_n_IBUF),
        .O(wr_or_rd7_out));
  FDRE #(
    .INIT(1'b0)) 
    wr_or_rd_reg
       (.C(clk_IBUF_BUFG),
        .CE(wr_or_rd7_out),
        .D(D),
        .Q(wr_or_rd_reg_n_0),
        .R(\<const0> ));
endmodule
