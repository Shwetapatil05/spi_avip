`ifndef SLAVE_DRIVER_BFM_INCLUDED_
`define SLAVE_DRIVER_BFM_INCLUDED_

//--------------------------------------------------------------------------------------------
// Interface : slave_driver_bfm
//  Used as the HDL driver for SPI
//  It connects with the HVL driver_proxy for driving the stimulus
//
// Parameters:
//  intf - SPI Interface
//--------------------------------------------------------------------------------------------
interface slave_driver_bfm(spi_if.SLV_DRV_MP drv_intf, spi_if.MON_MP mon_intf);
  
  parameter int DATA_WIDTH = 8;
  
  //-------------------------------------------------------
  // Creating the handle for proxy driver
  //-------------------------------------------------------
  import spi_slave_pkg::slave_driver_proxy;
  slave_driver_proxy s_drv_proxy_h;

  import spi_slave_pkg::slave_tx;
  slave_tx tx;
  
  initial begin
    tx = new;
    $display("Slave Driver BFM");
  end

  //-------------------------------------------------------
  // cpol==0,cpha==0
  //-------------------------------------------------------
  task drive_mosi_pos_miso_neg(bit[7:0] data);
    drive_msb_first(data);
    drive_lsb_first(data);

          
    drv_intf.MAS_DRV_MP.mosi0 = tx.data_master_in_slave_out;
  
  endtask : drive_mosi_pos_miso_neg
 
  // MSB is driven first
  task drive_msb_first(input bit[7:0] data);
    for(int i=DATA_WIDTH; i>0 ; i--) begin
      @(drv_intf.sample_mosi_pos_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i-1];
    end
  endtask : drive_msb_first

  // LSB is driven first
  task drive_lsb_first(input bit[7:0] data);
    for(int i=0; i < DATA_WIDTH; i++) begin
      @(drv_intf.sample_mosi_pos_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i];
    end
  endtask : drive_lsb_first
  
  /*
  task slave_driver::drive_mosi_neg_miso_pos();
  task slave_driver::drive_mosi_pos_miso_neg();
  task slave_driver::drive_mosi_neg_miso_pos();
  */
//-------------------------------------------------------
// cpol==0,cpha==1
//-------------------------------------------------------
 task drive_mosi_neg_miso_pos(bit[7:0] data);
    drive_msb_first(data);
    drive_lsb_first(data);

          
    drv_intf.MAS_DRV_MP.mosi0 = tx.data_master_in_slave_out;
  
  endtask : drive_mosi_neg_miso_pos

  // MSB is driven first
  task drive_msb_first(input bit[7:0] data);
    for(int i=DATA_WIDTH; i>0 ; i--) begin
      @(drv_intf.sample_mosi_neg_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i-1];
    end
  endtask : drive_msb_first

  // LSB is driven first
  task drive_lsb_first(input bit[7:0] data);
    for(int i=0; i < DATA_WIDTH; i++) begin
      @(drv_intf.sample_mosi_neg_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i];
    end
  endtask : drive_lsb_first

//-------------------------------------------------------
// cpol==1,cpha==0
//-------------------------------------------------------
 task drive_mosi_pos_miso_neg(bit[7:0] data);
    drive_msb_first(data);
    drive_lsb_first(data);

          
    drv_intf.MAS_DRV_MP.mosi0 = tx.data_master_in_slave_out;
  
  endtask : drive_mosi_pos_miso_neg

  // MSB is driven first
  task drive_msb_first(input bit[7:0] data);
    for(int i=DATA_WIDTH; i>0 ; i--) begin
      @(drv_intf.sample_mosi_pos_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i-1];
    end
  endtask : drive_msb_first

  // LSB is driven first
  task drive_lsb_first(input bit[7:0] data);
    for(int i=0; i < DATA_WIDTH; i++) begin
      @(drv_intf.sample_mosi_pos_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i];
    end
  endtask : drive_lsb_first

//-------------------------------------------------------
// cpol==1,cpha==1
//-------------------------------------------------------
 task drive_mosi_neg_miso_pos(bit[7:0] data);
    drive_msb_first(data);
    drive_lsb_first(data);

          
    drv_intf.MAS_DRV_MP.mosi0 = tx.data_master_in_slave_out;
  
  endtask : drive_mosi_pos_miso_neg

  // MSB is driven first
  task drive_msb_first(input bit[7:0] data);
    for(int i=DATA_WIDTH; i>0 ; i--) begin
      @(drv_intf.sample_mosi_neg_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i-1];
    end
  endtask : drive_msb_first

  // LSB is driven first
  task drive_lsb_first(input bit[7:0] data);
    for(int i=0; i < DATA_WIDTH; i++) begin
      @(drv_intf.sample_mosi_neg_cb.sclk);
      drv_intf.MAS_DRV_MP.mosi0 = data[i];
    end
  endtask : drive_lsb_first


endinterface : slave_driver_bfm

`endif
