class stimulus;
  task stimulus_gen(ref logic din);
      repeat(25) begin
        din=$urandom_range(0,1);
        #10;
      end
    $finish;
  endtask
endclass
      
