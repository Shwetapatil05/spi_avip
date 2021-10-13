
//--------------------------------------------------------------------------------------------
// Module      : HDL Top
// Description : Has a interface and slave agent bfm.
//--------------------------------------------------------------------------------------------

`include "./spi_interface/spi_if.sv"
`include "./slave_agent_bfm/slave_agent_bfm.sv"

module hdl_top;

  initial begin
    $display("HDL_TOP");
  end
  
  //SPI interface instantiation
  spi_if intf();

  //SPI BFM agent instantiation
  slave_agent_bfm slave_agent_bfm_h(.intf(intf));

endmodule
