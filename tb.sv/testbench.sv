// Code your testbench here
// or browse Examples
`include "class_clock.svh"
`include "class_reset.svh"
`include"class_stimulus.svh"
module dff_class_tb_top();
  logic clk;
  logic rst;
  logic din;
  logic dout;
  
  dff_class dff_class_inst(.clk(clk),.rst(rst),.din(din),.dout(dout));
  //create a handle for classes after instantiation
  //classname     //handle asign
  clock clk_h; 	//declaring new variable
  reset rst_h;
  stimulus stimulus_h;
  
  
  initial begin
    clk=1;
    rst=1;
    //give the handle a new
    clk_h = new();
    rst_h =new();
    stimulus_h=new();
    
  end
  
  initial begin
    fork
      //handle   //task
      clk_h.clk_gen(clk);
      rst_h.rst_gen(rst);
      stimulus_h.stimulus_gen(din);
    join
  end
  
   initial begin
    $monitor("time = [%0t] | clk = %b | din = %b | dout = %b | rst = %b ", $time, clk, din, dout, rst);
    $dumpfile("dump.vcd");
    $dumpvars(1);
   end
endmodule
  
