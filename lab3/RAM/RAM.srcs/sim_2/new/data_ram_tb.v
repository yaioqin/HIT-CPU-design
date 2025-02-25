`timescale 1ns / 1ps


module tb_top();

reg         clk;
reg         ram_wen;
reg  [15:0] ram_addr;
reg  [31:0] ram_wdata;
wire [31:0] ram_rdata;


ram_top u_ram_top(
    .clk      (clk       ),
    .ram_wen  (ram_wen   ),
    .ram_addr (ram_addr  ),
    .ram_wdata(ram_wdata ),
    .ram_rdata(ram_rdata ) 
);


initial 
begin
    clk = 1'b1;
end
always #5 clk = ~clk;


initial 
begin
	ram_addr   = 16'd0;
	ram_wdata  = 32'd0;
	ram_wen    =  1'd0;
	#103;
	
	$display("RAM Test Begin");
	
	#10;
	ram_wen    = 1'b0;
	ram_addr   = 16'hf0;
	ram_wdata  = 32'hffffffff;

    #10;
	ram_wen    = 1'b1;
	ram_addr   = 16'hf0;
	ram_wdata  = 32'h11223344;

    #10;
	ram_wen    = 1'b0;
	ram_addr   = 16'hf1;

	#10;
	ram_wen    = 1'b0;
	ram_addr   = 16'hf0;
    
    #10;
	ram_wen    = 1'b1;
	ram_wdata  = 32'hff00;
	ram_addr   = 16'hf0;

	#10;
	ram_wdata  = 32'hff11;
	ram_addr   = 16'hf1;

	#10;
	ram_wdata  = 32'hff22;
	ram_addr   = 16'hf2;

	#10;
	ram_wdata  = 32'hff33;
	ram_addr   = 16'hf3;

	#10;
	ram_wdata  = 32'hff44;
	ram_addr   = 16'hf4;
	#10;

	#10;
	ram_wen    = 1'b0;
	ram_addr   = 16'hf0;
	ram_wdata  = 32'hffffffff;

	#10;
	ram_addr   = 16'hf1;

	#10;
	ram_addr   = 16'hf2;

	#10;
	ram_addr   = 16'hf3;

	#10;
	ram_addr   = 16'hf4;

	#100;
	$display("RAM Test Success");
	$finish;
end

endmodule
