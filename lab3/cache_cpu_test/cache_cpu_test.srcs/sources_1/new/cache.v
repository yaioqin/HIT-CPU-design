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

    //  Sram-Like�ӿ��źţ�����CPU����Cache
    input         cpu_req      ,    //��CPU������Cache
    input  [31:0] cpu_addr     ,    //��CPU������Cache
    output reg[31:0] cache_rdata  ,    //��Cache���ظ�CPU
    output  reg     cache_addr_ok,    //��Cache���ظ�CPU
    output reg       cache_data_ok,    //��Cache���ظ�CPU

    //  AXI�ӿ��źţ�����Cache��������
    output reg [3 :0] arid   ,              //Cache�����淢�������ʱʹ�õ�AXI�ŵ���id��
    output reg [31:0] araddr ,              //Cache�����淢�������ʱ��ʹ�õĵ�ַ
    output reg      arvalid,              //Cache�����淢�������������ź�
    input         arready,              //�������ܷ񱻽��յ������ź�

    input  [3 :0] rid    ,              //������Cache��������ʱʹ�õ�AXI�ŵ���id��
    input  [31:0] rdata  ,              //������Cache���ص�����
    input         rlast  ,              //�Ƿ���������Cache���ص����һ������
    input         rvalid ,              //������Cache��������ʱ��������Ч�ź�
    output  reg   rready                //��ʶ��ǰ��Cache�Ѿ�׼���ÿ��Խ������淵�ص�����
);

    /*TODO�����ָ��Cache����ƴ���*/
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
����ˮ��δ����ʱ������CPU�����ĵ�ַ��������cache_addr_ok��1��
*/

    getPCaddr my_getPCaddr(
       .clk(clk),
       .rstn(rst),
       .stall(stall),
       .cpu_req(cpu_req),    //��CPU������Cache
        .cpu_addr(cpu_addr),    //��CPU������Cache
    //    .cache_addr_ok(cache_addr_ok),    //��Cache���ظ�CPU
       .cpu_addr_buffer(cpu_addr_buffer) //�洢PC
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



//ͨ��cpu_addr[11:2] ��ȡBRAM��������
//����߼�
    always @(*)begin
        if(rst && !end_flag) begin
            if(!visit_old_addr) addrb<= cpu_addr[11:2];
            if( visit_old_addr) begin
             addrb<= old_cpu_addr[11:2];
             end
        //��BRAM�е����ݴ洢���Ĵ�����

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
    reg  [1:0]    replace[0:127];//ÿ��Cache�е��滻λ
    reg visit_mem;
    genvar i;
    generate
        for(i=0; i < 128; i = i + 1) begin
            initial begin
                replace[i]=0;     
                //�����е��滻λ��0
            end
        end
    endgenerate
    
    initial begin
    icache_tagv_table_wen<=2'b00;
    icache_tagv_table_wen<=2'b00;
    visit_mem<=0;
    end
        //�ж��Ƿ�����
      always @(*)begin
        if(rst)begin
        icache_tagv_table_eden<=2'b11;
        end
        else begin
        icache_tagv_table_eden<=2'b00;
        end
      end
      
     icache_tagv_table icache_tagv_table_0(
    .clk(clk),        //ʱ���ź�
    .resetn(rst),     //����Ч��λ�ź�
    .stall(stall),
    //д�˿ڣ�Cache miss������Cache�к�
    .wen(icache_tagv_table_wen[0]),        //дʹ��
    .valid_wdata(valid_wdata),//д����Чλ��ֵ��һ��Ϊ1��
    .tag_wdata(tag_wdata),  //д��tag��ֵ
    .windex(windex),     //д��Cache�ж�Ӧ��index 7λ

    //���˿ڣ�Cache��һ����ˮ���������
    .rden(icache_tagv_table_eden[0]),       //��ʹ��
    .cpu_addr(cpu_addr),   //����CPU�ĵ�ַ
    .hit(hit[0]) ,                 //���н�����������غ����
    .valid(valid[0])
    );   
    
    icache_tagv_table icache_tagv_table_1(
    .clk(clk),        //ʱ���ź�
    .resetn(rst),     //����Ч��λ�ź�
    .stall(stall),
    //д�˿ڣ�Cache miss������Cache�к�
    .wen(icache_tagv_table_wen[1]),        //дʹ��
    .valid_wdata(valid_wdata),//д����Чλ��ֵ��һ��Ϊ1��
    .tag_wdata(tag_wdata),  //д��tag��ֵ
    .windex(windex),     //д��Cache�ж�Ӧ��index 7λ

    //���˿ڣ�Cache��һ����ˮ���������
    .rden(icache_tagv_table_eden[1]),       //��ʹ��
    .cpu_addr(cpu_addr),   //����CPU�ĵ�ַ
    .hit(hit[1]),                  //���н�����������غ����
    .valid(valid[1])
    );
  
     reg[2:0] count;
    reg[1:0] state;//��ʶmiss���״̬
    reg [31:0] buffer_data[7:0];//�ݴ������͹���������
    reg  flag[7:0]; //��ʶbuffer_data[i]д����miss������
 
    reg select_BRAM;//ѡ����Ҫ�������滻��BRAM
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
                //�����е��滻λ��0
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
    
  //���з������ݣ���������missΪ1��stallΪ1��visit_memΪ1
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
        else if(hit[0]==0 && hit[1]==0 && cpu_addr_buffer!=-1) begin//cpu��ʼ���͵�ַ
            stall<=1;
      //      cache_data_ok<=0;
           cache_addr_ok<=0;
            miss<=1;
            visit_mem<=1;
        end
        if((hit[0]==1 || hit[1]==1) && count==0) begin //count��buffer_data�������������ʶ��ֹcacheû����miss�����ݣ�hit��һ��������
            stall<=0;
            miss<=0;
            visit_mem<=0;
        end
       // else if()
        end
    end
       
/////////////////////////////////////////////////////////////////////

//miss����Զ���
//stateΪ0����miss������״̬1��
//״̬1��׼����ַ������arvalid������״̬2��
//״̬2��arreadyΪ1������rready������arvalid������״̬3
//״̬3����rvalid && rready &&  visit_memΪ�棬�����ݴ��buffer_data[]
//      ����rlastΪ1������rready;visit_mem;����״̬0

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
    //LRU�滻�㷨�������п��У������ѡ���еģ����綼�����У���ô˭��replace��־λΪ0���滻˭
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

//д���ݣ�tag,��Чλ������cache���ݣ�
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
            //д��tag,,
            if(w_index==6)begin
                valid_wdata<=1;
                tag_wdata<=cpu_addr_buffer[31:12];
                windex<=cpu_addr_buffer[11:5]; 
            end
            //��������
            if(w_index==7 && miss)begin

                //������� && ��������׼������
//                cache_rdata<=buffer_data[cpu_addr_buffer[4:2]];
//                cache_data_ok<=1;
//               cache_addr_ok<=1;
                //miss��0���������
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
reg [10:0]count_miss,count_the_last_inst_stall; //����
initial begin
control<=0;
data_ok_stall_1<=0;//////////////////////
count_miss<=0;
count_the_last_inst_stall<=0;
end
//count_the_last_inst_stall������
//����miss��ʱ�������ж��ǲ������һ��ָ��
//count_miss������
//>=5ʱ��control��1
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
//control��miss�����������͵�һ������ʱ�Ŀ����źţ�
//���統�ǳ���ʼ�ĵ�һ��ָ���ô���ݵ��ˣ�ֱ�ӷ��͵ڶ�����ˮ�εĵ�ַ����buffer_data��ȡ
//���粻�ǳ���ʼ�ĵ�һ��ָ���ô���ݵ��ˣ���Ҫ����old ��ַ����buffer_data��ȡ
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
//����cache_addr_ok,data_ok
always @(negedge clk)begin
//�������һ����ַ
    if(rst && !end_flag)begin
        //��miss��ʱ������cache_addr_ok��һ����½��ط�data_ok
        if(cache_addr_ok && stall==0 && data_ok_stall_1==0 && cpu_req_yes)/*-------------------*/
        begin
          cache_data_ok<=1; 
          count_the_last_inst_stall<=0;
          visit_old_addr<=0;   
         #5 cache_data_ok<=0;
         cpu_req_yes<=0;
        end
        //data_ok_stall_1�����������ĵ�һ����������ʱ
        else if(data_ok_stall_1)
        begin
        cache_data_ok<=0;/*-------------------*/
        data_ok_stall_1<=0;
        end
        //���һ��ָ��
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