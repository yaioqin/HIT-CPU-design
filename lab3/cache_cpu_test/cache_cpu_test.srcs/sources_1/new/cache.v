`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/02 16:10:53
// Design Name: 
// Module Name: cache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module cache (
    input            clk             ,  // clock, 100MHz
    input            rst             ,  // active low

    //  Sram-Like接口信号，用于CPU访问Cache
    input         cpu_req      ,    //由CPU发送至Cache
    input  [31:0] cpu_addr     ,    //由CPU发送至Cache
    output reg[31:0] cache_rdata  ,    //由Cache返回给CPU
    output  reg     cache_addr_ok,    //由Cache返回给CPU
    output reg       cache_data_ok,    //由Cache返回给CPU

    //  AXI接口信号，用于Cache访问主存
    output reg [3 :0] arid   ,              //Cache向主存发起读请求时使用的AXI信道的id号
    output reg [31:0] araddr ,              //Cache向主存发起读请求时所使用的地址
    output reg      arvalid,              //Cache向主存发起读请求的请求信号
    input         arready,              //读请求能否被接收的握手信号

    input  [3 :0] rid    ,              //主存向Cache返回数据时使用的AXI信道的id号
    input  [31:0] rdata  ,              //主存向Cache返回的数据
    input         rlast  ,              //是否是主存向Cache返回的最后一个数据
    input         rvalid ,              //主存向Cache返回数据时的数据有效信号
    output  reg   rready                //标识当前的Cache已经准备好可以接收主存返回的数据
);

    /*TODO：完成指令Cache的设计代码*/
    /*
    
    */
//////////////////////////////////////////////////////
reg end_flag;
initial begin
    end_flag<=0;
end
////////////////////////////////////////////////////
    reg start;
    reg stall;
    wire[31:0] cpu_addr_buffer;
    reg miss;
    reg cpu_req_yes;
    initial begin
    miss<=0;
    stall<=0;
    start<=1;
    rready<=0;
    cache_data_ok<=0;
    cache_rdata<=0; 
    cache_addr_ok<=0;
    cpu_req_yes<=0;
    end
    
    always @(negedge cpu_req)begin
        cpu_req_yes<=1;
    end
/*
在流水线未阻塞时，接收CPU发来的地址，并发回cache_addr_ok（1）
*/

    getPCaddr my_getPCaddr(
       .clk(clk),
       .rstn(rst),
       .stall(stall),
       .cpu_req(cpu_req),    //由CPU发送至Cache
        .cpu_addr(cpu_addr),    //由CPU发送至Cache
    //    .cache_addr_ok(cache_addr_ok),    //由Cache返回给CPU
       .cpu_addr_buffer(cpu_addr_buffer) //存储PC
        );
        
  
 ////////////////////////////////////////////
 
    reg [1:0]wea,enb;
    reg [9:0] addra,addrb;
    reg  [31:0] dina;
    wire [31:0] doutb_0,doutb_1;
   initial begin
    wea<=2'b00;
    enb<=2'b00;
    addra<=0;
    addrb<=0;
    dina<=0;

   end
  
    BRAM BRAM_0(
    .clka(clk), 
    .wea(wea[0]), 
    .addra(addra), 
    .dina(dina), 
    .clkb(clk), 
    .enb(enb[0]), 
    .addrb(addrb), 
    .doutb(doutb_0));

    BRAM BRAM_1(
    .clka(clk), 
    .wea(wea[1]), 
    .addra(addra), 
    .dina(dina), 
    .clkb(clk), 
    .enb(enb[1]), 
    .addrb(addrb), 
    .doutb(doutb_1));
    
    reg[31:0] old_cpu_addr;
    reg visit_old_addr;
    always @(posedge cpu_req)begin
        if(rst && !end_flag)
        old_cpu_addr<=cpu_addr_buffer;
        else old_cpu_addr<=0;
    end



//通过cpu_addr[11:2] 获取BRAM的数据字
//组合逻辑
    always @(*)begin
        if(rst && !end_flag) begin
            if(!visit_old_addr) addrb<= cpu_addr[11:2];
            if( visit_old_addr) begin
             addrb<= old_cpu_addr[11:2];
             end
        //将BRAM中的数据存储到寄存器里

         enb<=2'b11;
        end
        else begin
           enb<=0;
           addrb<=0;
        end
    end



///////////////////////////////////////////////////    
    reg [1:0] icache_tagv_table_wen;
    reg  valid_wdata;
    reg [19:0] tag_wdata;
    reg [6:0] windex;
    reg [1:0]icache_tagv_table_eden;
    wire [1:0] hit,valid; 
    reg  [1:0]    replace[0:127];//每个Cache行的替换位
    reg visit_mem;
    genvar i;
    generate
        for(i=0; i < 128; i = i + 1) begin
            initial begin
                replace[i]=0;     
                //将所有的替换位置0
            end
        end
    endgenerate
    
    initial begin
    icache_tagv_table_wen<=2'b00;
    icache_tagv_table_wen<=2'b00;
    visit_mem<=0;
    end
        //判定是否命中
      always @(*)begin
        if(rst)begin
        icache_tagv_table_eden<=2'b11;
        end
        else begin
        icache_tagv_table_eden<=2'b00;
        end
      end
      
     icache_tagv_table icache_tagv_table_0(
    .clk(clk),        //时钟信号
    .resetn(rst),     //低有效复位信号
    .stall(stall),
    //写端口（Cache miss加载新Cache行后）
    .wen(icache_tagv_table_wen[0]),        //写使能
    .valid_wdata(valid_wdata),//写入有效位的值（一般为1）
    .tag_wdata(tag_wdata),  //写入tag的值
    .windex(windex),     //写入Cache行对应的index 7位

    //读端口（Cache第一级流水段提出请求）
    .rden(icache_tagv_table_eden[0]),       //读使能
    .cpu_addr(cpu_addr),   //来自CPU的地址
    .hit(hit[0]) ,                 //命中结果，在上升沿后输出
    .valid(valid[0])
    );   
    
    icache_tagv_table icache_tagv_table_1(
    .clk(clk),        //时钟信号
    .resetn(rst),     //低有效复位信号
    .stall(stall),
    //写端口（Cache miss加载新Cache行后）
    .wen(icache_tagv_table_wen[1]),        //写使能
    .valid_wdata(valid_wdata),//写入有效位的值（一般为1）
    .tag_wdata(tag_wdata),  //写入tag的值
    .windex(windex),     //写入Cache行对应的index 7位

    //读端口（Cache第一级流水段提出请求）
    .rden(icache_tagv_table_eden[1]),       //读使能
    .cpu_addr(cpu_addr),   //来自CPU的地址
    .hit(hit[1]),                  //命中结果，在上升沿后输出
    .valid(valid[1])
    );
  
     reg[2:0] count;
    reg[1:0] state;//标识miss后的状态
    reg [31:0] buffer_data[7:0];//暂存主存送过来的数据
    reg  flag[7:0]; //标识buffer_data[i]写入了miss的数据
 
    reg select_BRAM;//选择需要进行行替换的BRAM
    initial begin
    state<=0;
    count<=0;
    select_BRAM<=0;
    arid<=0;
    arvalid<=0;
    end
    genvar j;
    generate
        for(j=0; j < 8; j = j + 1) begin
            initial begin
                flag[j]=0;     
                //将所有的替换位置0
            end
        end
    endgenerate
    
 always @(*)begin
 if(hit[0] && !end_flag)begin
  cache_rdata<=doutb_0;
 end
 else if(hit[1] && !end_flag)begin
  cache_rdata<=doutb_1;
 end

 
 end
    
  //命中发送数据，不命中置miss为1，stall为1，visit_mem为1
    always @(posedge clk)begin
        if(rst && !end_flag)begin
        if(hit[0]) begin
           
       //     cache_data_ok<=1;
            cache_addr_ok<=1;
            replace[cpu_addr_buffer[11:5]]<=2'b01;
            
        end
        else if(hit[1])begin
           
        //    cache_data_ok<=1;
            cache_addr_ok<=1;
            replace[cpu_addr_buffer[11:5]]<=2'b10;
        end
        else if(hit[0]==0 && hit[1]==0 && cpu_addr_buffer!=-1) begin//cpu开始发送地址
            stall<=1;
      //      cache_data_ok<=0;
           cache_addr_ok<=0;
            miss<=1;
            visit_mem<=1;
        end
        if((hit[0]==1 || hit[1]==1) && count==0) begin //count是buffer_data的索引，这个标识防止cache没拿完miss的数据，hit置一后解除阻塞
            stall<=0;
            miss<=0;
            visit_mem<=0;
        end
       // else if()
        end
    end
       
/////////////////////////////////////////////////////////////////////

//miss后的自动机
//state为0，有miss，进入状态1；
//状态1，准备地址，拉高arvalid，进入状态2；
//状态2且arready为1，拉高rready，拉低arvalid，进入状态3
//状态3，且rvalid && rready &&  visit_mem为真，把数据存进buffer_data[]
//      假如rlast为1，拉低rready;visit_mem;进入状态0

always @(*)begin
    if(state!=0 && stall==0 && !end_flag)
    begin
      state<=0; 
      arvalid<=0;
      rready<=0;
    end

end
always @(posedge clk)begin
    if (rst && !end_flag)
    begin
        if(state==0 && visit_mem)begin
          state<=1;
        end
        if(state==1 &&  visit_mem)
        begin
            arid<=0;
            araddr<={cpu_addr_buffer[31:5],5'b00000};
            arvalid<=1;
            state<=2;
        end
        if(state==2 && arready && arvalid &&  visit_mem) 
        begin
            rready<=1;
            state<=3;
            arvalid<=0;
        end
        
        if(state==3 && rvalid && rready &&  visit_mem)begin
            buffer_data[count]<= rdata;
            flag[count]<=1;
            count=count+1;
            //state<=3
            if(rlast)begin
                rready<=0;
                state<=0;
                visit_mem<=0;
            end
        end  
    end
end
//////////////////////////////////////////////////////////////////////////
    //LRU替换算法，假如有空闲，就随便选空闲的；假如都不空闲，那么谁的replace标志位为0就替换谁
    always @(*)begin
        if(rst && miss && !end_flag)begin
            if(!valid[0])  select_BRAM<=0;
            else if(!valid[1]) select_BRAM<=1;
            else begin
                if(replace[cpu_addr_buffer[11:5]]==2'b01) select_BRAM<=1;
                else if(replace[cpu_addr_buffer[11:5]]==2'b10) select_BRAM<=0;
            end  
        end
    end
/////////////////////////////////////////////////////////////////////

//写数据，tag,有效位，发送cache数据，
    reg [2:0] w_index;
    initial begin
        w_index<=0;
    end 
    
    always @(posedge clk)begin
        if(miss && flag[w_index] && !end_flag)begin
            case(select_BRAM)
                0:
                begin
                    wea<=2'b01;
                    icache_tagv_table_wen<=2'b01;
                end
                1:
                begin 
                    wea<=2'b10;
                    icache_tagv_table_wen<=2'b10;
                end
            endcase
            addra<={cpu_addr_buffer[11:5],3'b000}+ w_index;
            dina<=buffer_data[w_index];
            flag[w_index]<=0;
            //写入tag,,
            if(w_index==6)begin
                valid_wdata<=1;
                tag_wdata<=cpu_addr_buffer[31:12];
                windex<=cpu_addr_buffer[11:5]; 
            end
            //发送数据
            if(w_index==7 && miss)begin

                //输出数据 && 发送数据准备好了
//                cache_rdata<=buffer_data[cpu_addr_buffer[4:2]];
//                cache_data_ok<=1;
//               cache_addr_ok<=1;
                //miss置0；解除阻塞
                miss<=0;
                stall<=0;  
            end
            w_index<=w_index+1;
        end
        else begin
            icache_tagv_table_wen<=0;
            wea<=0;
        end
    end
reg  control;
reg data_ok_stall_1;/////////////////
reg [10:0]count_miss,count_the_last_inst_stall; //控制
initial begin
control<=0;
data_ok_stall_1<=0;//////////////////////
count_miss<=0;
count_the_last_inst_stall<=0;
end
//count_the_last_inst_stall的作用
//根据miss的时钟数来判断是不是最后一条指令
//count_miss的作用
//>=5时，control置1
always @(posedge clk)begin
    if(rst && !end_flag) begin  
    if(miss) count_miss<=count_miss+1;
    if(miss && !arready) count_the_last_inst_stall<=count_the_last_inst_stall+1;
    end
end
always @(negedge miss)begin

    if(rst && count_miss>=5 && !end_flag)
        control<=1;
    count_miss<=0;
end
//control是miss后解除阻塞发送第一条数据时的控制信号，
//假如当是程序开始的第一条指令，那么数据到了，直接发送第二个流水段的地址进行buffer_data的取
//假如不是程序开始的第一条指令，那么数据到了，需要发送old 地址进行buffer_data的取
always @(posedge clk)begin

    if(control && !end_flag)begin
         cache_rdata<=buffer_data[cpu_addr_buffer[4:2]];
         cache_addr_ok<=1;
         control<=0;
         data_ok_stall_1<=1;/*-------------------*/
         start<=0;
         if(!start)
           visit_old_addr<=1;
    end
end 
//发送cache_addr_ok,data_ok
always @(negedge clk)begin
//不是最后一条地址
    if(rst && !end_flag)begin
        //无miss的时候发送在cache_addr_ok置一后的下降沿发data_ok
        if(cache_addr_ok && stall==0 && data_ok_stall_1==0 && cpu_req_yes)/*-------------------*/
        begin
          cache_data_ok<=1; 
          count_the_last_inst_stall<=0;
          visit_old_addr<=0;   
         #5 cache_data_ok<=0;
         cpu_req_yes<=0;
        end
        //data_ok_stall_1，阻塞解除后的第一条返回数据时
        else if(data_ok_stall_1)
        begin
        cache_data_ok<=0;/*-------------------*/
        data_ok_stall_1<=0;
        end
        //最后一条指令
        else if(!cache_addr_ok && stall==1 && cpu_req_yes && count_the_last_inst_stall>=20)
        begin
            cache_data_ok<=1; 
            cpu_req_yes<=0;
           cache_addr_ok<=1;
           arvalid<=0;//
           end_flag<=1;//
           miss<=0;//////////
           stall<=0;
           visit_mem<=0;
           ////////////////////////////////////////////////////
        end
        else cache_data_ok<=0;
    end
end
always @(*)begin
    if(stall) cache_data_ok<=0;
end
/////////////////////////////////////////////////////////////
endmodule