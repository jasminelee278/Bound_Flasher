`timescale 1ns/1ns

module testbench();

reg clk, rst_n, flick;

wire [15:0] LED;

bound_flasher uut(clk,rst_n,flick,LED);

initial
begin

	clk = 0;

	rst_n = 1;
	
	flick = 0;
	
	#2;
	
	rst_n = 0;
	
	#6;
	
	rst_n = 1;
	
	#24;

    flick = 1;
	
	// flick = 1;
	// #500 rst_n=0;
	// #10 rst_n=1;

	#3000 
	$finish;
end

initial begin
  $recordfile ("waves");
  $recordvars ("depth=0", testbench);
end



always #5 clk = ~clk;

endmodule