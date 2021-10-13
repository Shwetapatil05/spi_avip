`ifndef SLAVE_AGENT_TOP_INCLUDED_
`define SLAVE_AGENT_TOP_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: slave_agent_top
// Description:
//  Used to get env_config and set agent_config
//--------------------------------------------------------------------------------------------
class slave_agent_top extends uvm_env;

  //-------------------------------------------------------
  // Factory registration to use and override methods
  //-------------------------------------------------------
  `uvm_component_utils(slave_agent_top)

  slave_agent s_agt_h;

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "slave_agent_top", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
//  extern virtual task run_phase(uvm_phase phase);

endclass : slave_agent_top

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - slave_agent_top
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function slave_agent_top::new(string name = "slave_agent_top",
                                 uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Function: build_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void slave_agent_top::build_phase(uvm_phase phase);
  super.build_phase(phase);
  s_agt_h = slave_agent::type_id::create("slave_agent",this);
endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Task: run_phase
//  To print topologies
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
//task slave_agent_top::run_phase(uvm_phase phase);
//
//  phase.raise_objection(this, "slave_agent_top");
//
//  super.run_phase(phase);
//
//    uvm_top.print_topology;
//
//  phase.drop_objection(this);
//
//endtask : run_phase
//
`endif

