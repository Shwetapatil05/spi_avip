`ifndef HDL_TOP_INCLUDED_
`define HDL_TOP_INCLUDED_

//--------------------------------------------------------------------------------------------
// Module      : HDL Top
// Description : Has a interface and slave agent bfm.
//--------------------------------------------------------------------------------------------

module hdl_top;
  
  //-------------------------------------------------------
  // Package : Importing Uvm Pakckage and Test Package
  //-------------------------------------------------------
  import test_pkg::*;
  import uvm_pkg::*;

  //-------------------------------------------------------
  // Clock Reset Initialization
  //-------------------------------------------------------
  bit clk;
  bit rst;

  //-------------------------------------------------------
  // Display statement for HDL_TOP
  //-------------------------------------------------------
  initial begin
    $display("HDL_TOP");
  end

  //-------------------------------------------------------
  // System Clock Generation
  //-------------------------------------------------------
  initial begin
    clk = 1'b0;
    forever #40 clk = ~clk;
  end

  //-------------------------------------------------------
  // System Reset Generation
  //-------------------------------------------------------
  initial begin
    rst = 1'b1;
    repeat (2) @(posedge clk)
    rst = 1'b0;
  end

  //-------------------------------------------------------
  // Declaring SPI and Slave_driver_bfm Interface
  //-------------------------------------------------------
  spi_if intf();
//  slave_driver_bfm s_drv_bfm_h (intf.SLV_DRV_MP, intf.MON_MP);

  //-------------------------------------------------------
  // Setting Slave_driver_bfm config
  //-------------------------------------------------------
//  initial begin
 //   uvm_config_db #(virtual slave_driver_bfm)::set(null,"*", "slave_driver_bfm", s_drv_bfm_h); 
//  end

endmodule : hdl_top

`endif

