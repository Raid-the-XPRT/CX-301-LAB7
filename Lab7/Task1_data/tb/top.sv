import uvm_pkg::*;


module top;


import yapp_pkg::*;
// import the UVM library
// include the UVM macros

// import the YAPP package

// generate 5 random packets and use the print method
// to display the results


yapp_packet p1 , p2 , p3 , p4 , p5;

initial begin 

p1 = new("p1");
p2 = new("p2");
p3 = new("p3");
p4 = new("p4");
p5 = new("p5");

p1.randomize();
p2.randomize();
p3.randomize();
p4.randomize();
p5.randomize();

p1.print(uvm_default_table_printer);
p2.print(uvm_default_tree_printer);
p3.print(uvm_default_line_printer);
p4.print();
p5.print();

end
// experiment with the copy, clone and compare UVM method
endmodule : top
