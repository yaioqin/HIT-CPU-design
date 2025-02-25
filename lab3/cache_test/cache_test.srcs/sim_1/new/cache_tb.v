`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  @Copyright HIT team
//  Automated test environment
//////////////////////////////////////////////////////////////////////////////////

`define CACHE_ADDR_TRACE_FILE "../../../../cache_trace.txt"
`define CACHE_DATA_TRACE_FILE "../../../../cache_trace.txt"
`define END_ADDR 32'h0000_0000

module cache_tb(  );

/*
    测试说明:
		自动化测试环境会检测cache功能实现的正确性，以及统计Cache的miss率。
		当Cache功能错误时，会返回错误的数据；
		当出现错误时，控制台会打印相应的信息来，帮助你定位Cache的错误
        若Cache miss率较高，可能是你替换策略的问题

		测试使用IP核Block memory generator 7.3来模拟存储器
		使用CoreMark在mips 32编译器下编译的coe文件来进行指令存储器的填充，
		CoreMark为用于测量嵌入式系统中使用的中央处理器(CPU)的性能的标准Benchmark
		使用AXI4 接口来进行Cache和存储器间的握手通信
		指令访存的顺序与CoreMark运行的顺序一致，从而保证测试的有效性
*/

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



//----------CACHE/AXI MODULE----------
//-----Cache signals-----
//inputs
reg         cpu_req;
reg  [31:0] cpu_addr;
//outputs
wire [31:0] cache_rdata;
wire        cache_addr_ok;
wire        cache_data_ok;

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


reg[31:0]   tot_cpu_req;
reg[31:0]   tot_cache_miss;

//wire[31:0]  tot_cache_miss_100=tot_cache_miss * 100;
//wire[31:0]  avg_cache_miss_rate=tot_cache_miss_100 / tot_cpu_req;

real f_cache_miss_100;
real f_tot_cpu_req;
real f_avg_cache_miss_rate;

always@(posedge clk) begin
    if(~resetn) begin
        tot_cpu_req<=0;
        tot_cache_miss<=0;
    end
    else begin
        if(cache_data_ok)
            tot_cpu_req<=tot_cpu_req + 1;
        if(s_axi_arvalid & s_axi_arready)
            tot_cache_miss<=tot_cache_miss + 1; //当启动一次AXI交互，就认为发生了一次Cache miss
    end
end


//-----Module call-----
cache u_cache(
    //Control signal
    .clk            (clk            ),
    .rst            (resetn         ),

    //Sram-like interface(from CPU core)
    .cpu_req        (cpu_req        ),
    .cpu_addr       (cpu_addr       ),
    .cache_rdata    (cache_rdata    ),
    .cache_addr_ok  (cache_addr_ok  ),
    .cache_data_ok  (cache_data_ok  ),

    //axi interface(from RAM)
    .arid           (s_axi_arid     ),
    .araddr         (s_axi_araddr   ),
    .arvalid        (s_axi_arvalid  ),
    .arready        (s_axi_arready  ),
    .rid            (s_axi_rid      ),
    .rdata          (s_axi_rdata    ),
    .rlast          (s_axi_rlast    ),
    .rvalid         (s_axi_rvalid   ),
    .rready         (s_axi_rready   )
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
    .s_axi_awvalid  (4'b0       	),//I,1
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




//----------TEST MODULE----------
//-----test signals-----
reg         test_err;
reg         test_end;

//-----open trace file-----
integer cache_addr_trace_ref;
integer cache_data_trace_ref;
initial begin
    cache_addr_trace_ref = $fopen(`CACHE_ADDR_TRACE_FILE, "r");
    cache_data_trace_ref = $fopen(`CACHE_ADDR_TRACE_FILE, "r");
    $fscanf(cache_addr_trace_ref, "%h %h", cpu_req, cpu_addr);
end

//-----read input data(Simulate CPU)-----
always @(posedge clk)
begin
    if(cache_addr_ok)
    begin
        if(!($feof(cache_addr_trace_ref)) && resetn)
        begin
            #1;
            $fscanf(cache_addr_trace_ref, "%h %h", cpu_req, cpu_addr);
        end
    end
end

//-----read reference data-----
reg         invalid_num;
reg [31:0]  ref_cache_data;
always @(posedge clk)
begin
    #1;
    if(cache_data_ok)
    begin
        if(!($feof(cache_data_trace_ref)) && resetn)
        begin
            $fscanf(cache_data_trace_ref, "%h %h", invalid_num, ref_cache_data);
        end
    end
end

//-----compare the cache data to the reference data-----
always @(posedge clk)
begin
    #2;
    if(!resetn)
    begin
        test_err <= 1'b0;
    end
    else if(!test_end && cache_data_ok)
    begin
        if (cache_rdata!==ref_cache_data)
        begin
            $display("--------------------------------------------------------------");
            $display("[%t] Error!!!",$time);
            $display("    Cache Address = 0x%8h", cpu_addr);
            $display("    Reference Cache Data = 0x%8h, Error Cache Data = 0x%8h",ref_cache_data, cache_rdata);
            $display("--------------------------------------------------------------");
            test_err <= 1'b1;
            #40;
            $finish;
        end
    end
end

//-----monitor test-----
initial
begin
    $timeformat(-9,0," ns",10);
    while(resetn) #5;
    $display("==============================================================");
    $display("Test begin!");

    #10000;
end

//-----Finish the test-----
always @(posedge clk)
begin
    if (!resetn)
    begin
        test_end <= 1'b0;
    end
    else if(cpu_addr==`END_ADDR && !test_end)
    begin
        test_end <= 1'b1;
        $display("==============================================================");
        $display("Test end!");
        #40;
        $fclose(cache_addr_trace_ref);
        $fclose(cache_data_trace_ref);
        if (test_err)
        begin
            $display("Fail!!! Cache function errors! Check your code!");
        end
        else
        begin
            f_cache_miss_100=tot_cache_miss * 100;
            f_tot_cpu_req=tot_cpu_req;
            f_avg_cache_miss_rate=f_cache_miss_100 / f_tot_cpu_req;
            $display("Total: %d CPU requests, %d cache misses, miss rate = %f %%",tot_cpu_req,tot_cache_miss,f_avg_cache_miss_rate);
            $display("----PASS!!!");
        end
	    $finish;
	end
end
//-------------------------------


endmodule