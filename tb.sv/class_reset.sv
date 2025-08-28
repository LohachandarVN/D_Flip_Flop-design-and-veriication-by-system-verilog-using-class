class reset;
  task rst_gen(ref logic rst);
    #5 rst=0;
  endtask
endclass
