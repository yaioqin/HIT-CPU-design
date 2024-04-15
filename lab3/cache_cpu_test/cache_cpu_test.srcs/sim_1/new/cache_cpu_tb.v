`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  @Copyright HIT team
//  Automated test environment
//////////////////////////////////////////////////////////////////////////////////

`define MEM_SIZE    128

module cache_cpu_tb(  );


//----------CONTROL MODULE----------
//-----Control signals-----
reg         clk;
reg         resetn;
//-----Assign control signals-----
initial
begin
    clk 			= 1'b0;
    resetn 		= 1'b0;
    #2000;
    resetn 		= 1'b1;
end
always #5 clk 	= ~clk;
//------------------------------------




//-----AXI signal-----
wire [3 :0] s_axi_arid;
wire [31:0] s_axi_araddr;
wire        s_axi_arvalid;
wire        s_axi_arready;

wire [3 :0] s_axi_rid;
wire [31:0] s_axi_rdata;
wire        s_axi_rlast;
wire        s_axi_rvalid;
wire        s_axi_rready;

wire inst_commit_en;
wire cache_req;
wire cache_miss;

reg[31:0]   tot_cpu_req;
reg[31:0]   tot_cache_miss;
reg[31:0]   tot_clk_cnt;
reg[31:0]   tot_inst_cnt;

always@(posedge clk) begin
    if(~resetn) begin
        tot_cpu_req<=0;
        tot_cache_miss<=0;
        tot_clk_cnt<=0;
        tot_inst_cnt<=0;
    end
    else begin
        tot_clk_cnt<=tot_clk_cnt + 1;
        if(cache_req)
            tot_cpu_req<=tot_cpu_req + 1;
        if(cache_miss)
            tot_cache_miss<=tot_cache_miss + 1;
        if(inst_commit_en)
            tot_inst_cnt<=tot_inst_cnt + 1;
    end
end

wire          data_sram_en;
wire[3:0]     data_sram_wen;
wire[31:0]    data_sram_addr;
wire[31:0]    data_sram_wdata;
reg[31:0]     data_sram_rdata;

reg[31:0]       d_mem[0:`MEM_SIZE - 1];
integer tracefile;
initial begin
    $readmemh("../../../../cache_cpu_test.data/data.txt",d_mem);
    tracefile=$fopen("../../../../cache_cpu_test.data/trace.txt","r");
end

always@(posedge clk) begin
    if(data_sram_en)
        data_sram_rdata<=d_mem[data_sram_addr[$clog2(`MEM_SIZE) + 1:2]];
    if(|data_sram_wen)
        d_mem[data_sram_addr[$clog2(`MEM_SIZE) + 1:2]]<=data_sram_wdata;
end

wire [31:0] debug_wb_pc;
wire        debug_wb_rf_wen;
wire [4 :0] debug_wb_rf_addr;
wire [31:0] debug_wb_rf_wdata;

//-----Module call-----
cpu_top u_cpu(
    //Control signal
    .clk            (clk            ),
    .resetn         (resetn         ),

    //axi interface(from RAM)
    .arid           (s_axi_arid     ),
    .araddr         (s_axi_araddr   ),
    .arvalid        (s_axi_arvalid  ),
    .arready        (s_axi_arready  ),
    .rid            (s_axi_rid      ),
    .rdata          (s_axi_rdata    ),
    .rlast          (s_axi_rlast    ),
    .rvalid         (s_axi_rvalid   ),
    .rready         (s_axi_rready   ),

    .data_sram_en(data_sram_en),
    .data_sram_wen(data_sram_wen),
    .data_sram_addr(data_sram_addr),
    .data_sram_wdata(data_sram_wdata),
    .data_sram_rdata(data_sram_rdata),

    .debug_wb_pc       (debug_wb_pc       ),
    .debug_wb_rf_wen   (debug_wb_rf_wen   ),
    .debug_wb_rf_wnum  (debug_wb_rf_addr  ),
    .debug_wb_rf_wdata (debug_wb_rf_wdata ),

    .cache_req(cache_req),
    .cache_miss(cache_miss),
    .inst_commit_en(inst_commit_en)
    );

    assign arlen   = 8'd7;
    assign arsize  = 3'd2;
    assign arburst = 2'b10;//Wrap Mode
    assign awid    = 4'd0;
    assign awlen   = 8'd0;
    assign awburst = 2'b00;
    assign awsize  = 3'd2;
    assign awaddr  = 32'b0;
    assign awvalid = 4'b0;
    assign wdata   = 32'b0;
    assign wvalid  = 4'b0;
    assign wlast   = 3'b0;
    assign bready  = 4'b0;

axi u_axi(
    .s_aresetn      (resetn         ),//I,1
    .s_aclk         (clk            ),//I,1
    .s_axi_awid     (4'd0   	    ),//I,4
    .s_axi_awaddr   (32'b0       	),//I,32
    .s_axi_awlen    (8'd0         	),//I,8
    .s_axi_awsize   (3'd2        	),//I,3
    .s_axi_awburst  (2'b00      	),//I,2
    .s_axi_awvalid  (1'b0       	),//I,1
    .s_axi_awready  (),               //O,1

    .s_axi_wdata    (32'b0        	),//I,32
    .s_axi_wstrb    (),               //I,4
    .s_axi_wlast    (3'b0         	),//I,1
    .s_axi_wvalid   (4'b0        	),//I,1
    .s_axi_wready   (),               //O,1

    .s_axi_bid      (),               //O,4
    .s_axi_bresp    (),               //O,2
    .s_axi_bvalid   (),               //O,1
    .s_axi_bready   (4'b0	        ),//I,1

    .s_axi_arid     (s_axi_arid   	),//I,4
    .s_axi_araddr   (s_axi_araddr 	),//I,32
    .s_axi_arlen    (8'd7  	        ),//I,8
    .s_axi_arsize   (3'd2 	        ),//I,3
    .s_axi_arburst  (2'b10      	),//I,2
    .s_axi_arvalid  (s_axi_arvalid	),//I,1
    .s_axi_arready  (s_axi_arready  ),//O,1

    .s_axi_rid      (s_axi_rid      ),//O,4
    .s_axi_rresp    (),               //O,2
    .s_axi_rdata    (s_axi_rdata    ),//O,32
    .s_axi_rlast    (s_axi_rlast    ),//O,1
    .s_axi_rvalid   (s_axi_rvalid   ),//O,1
    .s_axi_rready   (s_axi_rready 	) //I,1
);
//------------------------------------




    // Compare the cpu data to the reference data
    reg         test_err;
    reg         test_pass;
    reg [31:0] test_counter;
    reg [15 :0] leds_reg;

    assign leds = leds_reg;

    reg my_wen;
    reg[31:0] my_pc;
    reg[4:0] my_addr;
    reg[31:0] my_data;

    reg[31:0] ref_pc;
    reg[4:0] ref_addr;
    reg[31:0] ref_data;

    real f_tot_cache_miss_100;
    real f_tot_cache_req;
    real f_tot_inst_cnt;
    real f_tot_clk_cnt;
    real f_cpi;
    real f_miss_rate;

    always @ (posedge clk) begin
        if (!resetn) begin
            leds_reg     <= 16'hffff;
            test_err     <= 1'b0;
            test_pass    <= 1'b0;
            test_counter <= 0;
        end
        else if (debug_wb_pc == 32'h00000080 && !test_err) begin
                f_tot_cache_miss_100=tot_cache_miss * 100;
                f_tot_cache_req=tot_cpu_req;
                f_tot_inst_cnt=tot_inst_cnt;
                f_tot_clk_cnt=tot_clk_cnt;
                f_cpi=f_tot_clk_cnt / f_tot_inst_cnt;
                f_miss_rate=f_tot_cache_miss_100 / f_tot_cache_req;
                $display("Test end!");
                $display("CPU Total:   %d insts use %d cycles, avg CPI = %f",tot_inst_cnt,tot_clk_cnt,f_cpi);
                $display("Cache Total: %d CPU requests, %d cache misses, miss rate = %f %%",tot_cpu_req,tot_cache_miss,f_miss_rate);
                $display("    ----PASS!!!");
                leds_reg  <= 16'h0000;
                test_pass <= 1'b1;
                #5;
                $finish;
        end
        
    end

    always@(posedge clk) begin
        if(~resetn) begin
            my_wen<=0;
            my_pc<=0;
            my_addr<=0;
            my_data<=0;
        end
        else begin
            if(my_wen) begin
                $fscanf(tracefile,"%x%x%x",ref_pc,ref_addr,ref_data);
            end
            if(my_wen & ((ref_pc != my_pc) | (ref_addr != my_addr) | (ref_data != my_data))) begin
                $display("--------------------------------------------------------------");
                $display("Error!!!");
                $display("    Reference : PC = 0x%8h, write back reg number = %2d, write back data = 0x%8h", ref_pc, ref_addr, ref_data);
                $display("    Error     : PC = 0x%8h, write back reg number = %2d, write back data = 0x%8h", my_pc, my_addr, my_data);
                $display("--------------------------------------------------------------");
                $display("==============================================================");
                test_err     <= 1'b1;
                #5;
                $finish;
            end
            else begin
                my_wen<=|debug_wb_rf_wen;
                my_pc<=debug_wb_pc;
                my_addr<=debug_wb_rf_addr;
                my_data<=debug_wb_rf_wdata;
            end
        end
    end


endmodule