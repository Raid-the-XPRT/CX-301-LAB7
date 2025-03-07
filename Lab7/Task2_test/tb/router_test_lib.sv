class base_test extends uvm_test;

    `uvm_component_utils(base_test);

function new(string name, uvm_component parent);
super.new(name,parent);
endfunction

router_tb test_bench;

virtual function void build_phase(uvm_phase phase);
super.build_phase(phase);
test_bench=new("test_bench",this);
`uvm_info("[BASE_TEST BP]","Build phase done",UVM_HIGH);
endfunction

virtual function void end_of_elaboration_phase(uvm_phase phase);
uvm_top.print_topology();
endfunction

endclass