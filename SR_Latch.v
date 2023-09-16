
module nor_latch (
  input wire S,        
  input wire R,        
  output reg Q,        
  output reg n_Q       
);

  always @(S, R)
  begin
    if (R)
    begin
      Q <= 1'b0;
      n_Q <= 1'b1;
    end
    else if (S)
    begin
      Q <= 1'b1;
      n_Q <= 1'b0;
    end
  end

endmodule



