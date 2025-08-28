// Code your design here
module dff_class(
  input din,
  //input clk,
  input rst,clk,
  output reg dout);
			
  always@(posedge clk)
    begin
      if(rst)begin
        dout<=0;
      end
      else begin
        dout<=din;
      end
    end
endmodule
