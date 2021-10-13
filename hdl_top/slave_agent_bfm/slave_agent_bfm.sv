//--------------------------------------------------------------------------------------------
// Module      : Slave Agent BFM
// Description : Instantiates driver and monitor
//--------------------------------------------------------------------------------------------

`include "slave_driver_bfm.sv"
`include "slave_monitor_bfm.sv"

module slave_agent_bfm(spi_if intf);
  
  initial begin
    $display("Slave Agent BFM");
  end

  //Slave driver bfm instantiation
  slave_driver_bfm slave_driver_bfm_h(intf);

  //Slave monitor bfm instantiation
  slave_monitor_bfm slave_monitor_bfm_h(intf);

endmodule
