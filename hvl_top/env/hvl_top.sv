//--------------------------------------------------------------------------------------------
// Module: Hvl top module
//--------------------------------------------------------------------------------------------

import uvm_pkg::*;
`include "uvm_macros.svh"
`include "../test/test_pkg.sv"

module hvl_top;
  import test_pkg::*;
  
/*
  //-------------------------------------------------------
  // clock, reset instantiation
  //-------------------------------------------------------
  bit clock;
  bit reset;
  
  //-------------------------------------------------------
  // clock-reset generation
  //-------------------------------------------------------
  always begin
    #10 clock =~ clock;     
  end

  always begin 
    #10 reset=~reset;
  end
  */

  //-------------------------------------------------------
  // run_test for simulation
  //-------------------------------------------------------
  initial begin
    run_test("base_test");
  end

  endmodule
