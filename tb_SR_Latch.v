module nor_latch_tb;

  // Inputs
  reg S_tb;
  reg R_tb;

  // Outputs
  wire Q_tb;
  wire n_Q_tb;

  // Instantiate the NOR latch
  nor_latch nor_latch_inst (
    .S(S_tb),
    .R(R_tb),
    .Q(Q_tb),
    .n_Q(n_Q_tb)
  );

  // Clock generation
 

  // Stimulus generation
  initial begin
    $dumpfile("nor_latch_waveform.vcd");
    $dumpvars(1, nor_latch_tb);

    // Test case 1: Set (S = 1)
    S_tb = 1;
    R_tb = 0;
    #10;
    
    // Test case 2: Reset (R = 1)
    S_tb = 0;
    R_tb = 1;
    #10;
    
    // Test case 3: No change
    S_tb = 0;
    R_tb = 0;
    #10;
    
    // Test case 4: Simultaneous set and reset (conflict)
    S_tb = 1;
    R_tb = 1;
    #10;
    
    // Test case 5: Reset and then set
    S_tb = 0;
    R_tb = 1;
    #10;
    S_tb = 1;
    R_tb = 0;
    #10;
    
    // Test case 6: Set and then reset
    S_tb = 1;
    R_tb = 0;
    #10;
    S_tb = 0;
    R_tb = 1;
    #10;
    
    // Test case 7: Oscillation
    S_tb = 1;
    R_tb = 0;
    #10;
    S_tb = 0;
    R_tb = 1;
    #10;
    
    // Test case 8: Set (S = 1)
    S_tb = 1;
    R_tb = 0;
    #10;

    // End simulation
    $finish;
  end

endmodule
