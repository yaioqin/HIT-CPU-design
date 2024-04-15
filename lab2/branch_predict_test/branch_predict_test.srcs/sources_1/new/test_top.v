//////////////////////////////////////////////////////////////////////////////////
//  @Copyright HIT team
//  CPU Automated testing environment
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

`define SUBTASK        2 //Number of subtask
`define MEM_SIZE        128

module test_top(
    input         clk     ,
    input         reset   ,
    output [15 :0] leds
);

    wire          inst_sram_en;
    wire[3:0]     inst_sram_wen;
    wire[31:0]    inst_sram_addr;
    wire[31:0]    inst_sram_wdata;
    reg[31:0]     inst_sram_rdata;    

    wire          data_sram_en;
    wire[3:0]     data_sram_wen;
    wire[31:0]    data_sram_addr;
    wire[31:0]    data_sram_wdata;
    reg[31:0]     data_sram_rdata;

    
    integer tracefile;

    reg[31:0]       i_mem[0:`MEM_SIZE - 1];
    reg[31:0]       d_mem[0:`MEM_SIZE - 1];

    initial begin
        if(`SUBTASK == 0) begin
            $readmemh("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/inst0.txt",i_mem);
            $readmemh("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/data0.txt",d_mem);
            tracefile=$fopen("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/trace0.txt","r");
        end
        else if(`SUBTASK == 1) begin
            $readmemh("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/inst1.txt",i_mem);
            $readmemh("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/data1.txt",d_mem);
            tracefile=$fopen("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/trace1.txt","r");
        end
        else if(`SUBTASK == 2) begin
            $readmemh("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/inst2.txt",i_mem);
            $readmemh("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/data2.txt",d_mem);
            tracefile=$fopen("D:/CPU_design/lab/lab2/branch_predict_test/branch_predict_test.data/trace2.txt","r");
        end
        else begin
            $display("Error: Invalid subtask!");
            #5;
            $finish;
        end
    end

    always@(posedge clk) begin
        if(inst_sram_en)
            inst_sram_rdata<=i_mem[inst_sram_addr[$clog2(`MEM_SIZE) + 1:2]];
        if(data_sram_en)
            data_sram_rdata<=d_mem[data_sram_addr[$clog2(`MEM_SIZE) + 1:2]];
        if(|data_sram_wen)
            d_mem[data_sram_addr[$clog2(`MEM_SIZE) + 1:2]]<=data_sram_wdata;
    end


    // Instantiate the cpu
    wire [31:0] debug_wb_pc;
    wire        debug_wb_rf_wen;
    wire [4 :0] debug_wb_rf_addr;
    wire [31:0] debug_wb_rf_wdata;

    wire          jumpinst_en;
    wire          jumpinst_fail_en;
    wire          inst_commit_en;

    cpu_top U_cpu(
        .clk               (clk               ),
        .resetn            (reset             ),

        .inst_sram_en(inst_sram_en),
        .inst_sram_wen(inst_sram_wen),
        .inst_sram_addr(inst_sram_addr),
        .inst_sram_wdata(inst_sram_wdata),
        .inst_sram_rdata(inst_sram_rdata),
        .data_sram_en(data_sram_en),
        .data_sram_wen(data_sram_wen),
        .data_sram_addr(data_sram_addr),
        .data_sram_wdata(data_sram_wdata),
        .data_sram_rdata(data_sram_rdata),
        .jumpinst_en(jumpinst_en),
        .jumpinst_fail_en(jumpinst_fail_en),
        .inst_commit_en(inst_commit_en),

        .debug_wb_pc       (debug_wb_pc       ),
        .debug_wb_rf_wen   (debug_wb_rf_wen   ),
        .debug_wb_rf_wnum  (debug_wb_rf_addr  ),
        .debug_wb_rf_wdata (debug_wb_rf_wdata )
    );

    //Branch predict summary
    reg[31:0]   tot_jumpinst_cnt;
    reg[31:0]   tot_jumpinst_fail_cnt;
    reg[31:0]   tot_clk_cnt;
    reg[31:0]   tot_inst_cnt;
    wire[31:0]  fail_100=tot_jumpinst_fail_cnt * 100;
    wire[31:0]  fail_rate=fail_100 / tot_jumpinst_cnt;
    always@(posedge clk) begin
        if(~reset) begin
            tot_jumpinst_cnt<=0;
            tot_jumpinst_fail_cnt<=0;
            tot_clk_cnt<=0;
            tot_inst_cnt<=0;
        end
        else begin
            tot_clk_cnt<=tot_clk_cnt + 1;
            if(jumpinst_en)
                tot_jumpinst_cnt<=tot_jumpinst_cnt + 1;
            if(jumpinst_fail_en)
                tot_jumpinst_fail_cnt<=tot_jumpinst_fail_cnt + 1;
            if(inst_commit_en)
                tot_inst_cnt<=tot_inst_cnt + 1;
        end
    end

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

    real f_fail_100;
    real f_tot_jumpinst_cnt;
    real f_fail_rate;
    real f_tot_inst_cnt;
    real f_tot_clk_cnt;
    real f_cpi;

    always @ (posedge clk) begin
        if (!reset) begin
            leds_reg     <= 16'hffff;
            test_err     <= 1'b0;
            test_pass    <= 1'b0;
            test_counter <= 0;
        end
        else if (debug_wb_pc == 32'h00000080 && !test_err) begin
                f_fail_100=tot_jumpinst_fail_cnt * 100;
                f_tot_jumpinst_cnt=tot_jumpinst_cnt;
                f_fail_rate=f_fail_100 / f_tot_jumpinst_cnt;
                f_tot_inst_cnt=tot_inst_cnt;
                f_tot_clk_cnt=tot_clk_cnt;
                f_cpi=f_tot_clk_cnt / f_tot_inst_cnt;
                $display("Test end!");
                $display("CPU Total:            %d insts use %d cycles, avg CPI = %f",tot_inst_cnt,tot_clk_cnt,f_cpi);
                $display("Branch Predict Total: %d failures in %d jump insts, failure rate=%f %%",tot_jumpinst_fail_cnt,tot_jumpinst_cnt,f_fail_rate);
                $display("==============================================================");
                if(fail_rate > 20) begin
                    $display("    ----Reject! Your failure rate is too high!");
                    leds_reg  <= 16'h55aa;
                end
                else begin
                    $display("    ----PASS!!!");
                    leds_reg  <= 16'h0000;
                end
                test_pass <= 1'b1;
                #5;
                $finish;
        end
        
    end

    always@(posedge clk) begin
        if(~reset) begin
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
