//--------------------------------------------------------------------------------------------
// Package: Test
// Description:
// Includes all the files written to run the simulation
//--------------------------------------------------------------------------------------------
package test_pkg;

//-------------------------------------------------------
// Import uvm package
//-------------------------------------------------------
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  //-------------------------------------------------------
  // Include all other files
  //-------------------------------------------------------
  
  
  `include "../slave/slave_tx.sv"
  `include "../slave/slave_sequence.sv"
  `include "../slave/slave_sequencer.sv"
  `include "../slave/slave_driver_proxy.sv"
  `include "../slave/slave_monitor_proxy.sv"
  `include "../slave/slave_agent.sv"
  `include "../slave/slave_agent_top.sv"
  
  `include "../env/virtual_sequence.sv"
  `include "../env/virtual_sequencer.sv"
  `include "../env/env.sv"

  `include "base_test.sv"

  // `include "slave_agent_config.sv"
  // `include "env_config.sv"

endpackage
