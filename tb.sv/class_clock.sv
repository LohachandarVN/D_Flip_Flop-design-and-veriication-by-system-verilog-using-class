class clock;
  task clk_gen(ref logic clk);
    forever begin
      #5 clk=~clk;
    end
  endtask
endclass
