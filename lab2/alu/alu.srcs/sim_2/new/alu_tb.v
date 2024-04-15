`timescale 1ns / 1ps


module ALU_td;

    reg  [31:0]A;   //运算数
    reg  [31:0]B;   //运算数
    reg  [4:0]Card; //操作码
    reg  Cin;       //进位

    wire [31:0]F;   //结果
    wire Cout;      //进位信号
    wire Zero;      //零信号
    //实例化
    alu u_alu(
        .A(A),
        .B(B),
        .Card(Card),
        .Cin(Cin),
        .F(F),
        .Cout(Cout),
        .Zero(Zero)
    );
    initial begin
        // ADD A+B 
            Card = 5'b00001;    A = 32'h00000012;     B=32'h00000013;     Cin=0;
        #5  Card = 5'b00001;    A = 32'h00000012;     B=32'h00000013;     Cin=1;
        #5  Card = 5'b00001;    A = 32'hffffffff;     B=32'h00000001;     Cin=0;
        #5  Card = 5'b00001;    A = 32'hffffffff;     B=32'h00000010;     Cin=0;
        #5  Card = 5'b00001;    A = 32'h00000000;     B=32'h00000000;     Cin=0;       
        // ADDC A+B+Cin
        #5  Card = 5'b00010;    A = 32'h00000012;     B=32'h00000013;     Cin=0;
        #5  Card = 5'b00010;    A = 32'h00000012;     B=32'h00000013;     Cin=1;
        #5  Card = 5'b00010;    A = 32'hffffffff;     B=32'h00000001;     Cin=0;
        #5  Card = 5'b00010;    A = 32'hffffffff;     B=32'h00000001;     Cin=1;
        #5  Card = 5'b00010;    A = 32'h00000000;     B=32'h00000000;     Cin=0;        
        // SL A-B
        #5  Card = 5'b00011;    A = 32'h00000012;     B=32'h00000010;     Cin=0;
        #5  Card = 5'b00011;    A = 32'h00000012;     B=32'h00000010;     Cin=1;
        #5  Card = 5'b00011;    A = 32'h00000012;     B=32'h00000012;     Cin=0;
        #5  Card = 5'b00011;    A = 32'h0fffffff;     B=32'hffffffff;     Cin=0;          
        // SLC A-B-Cin
        #5  Card = 5'b00100;    A = 32'h00000012;     B=32'h00000010;     Cin=0;
        #5  Card = 5'b00100;    A = 32'h00000012;     B=32'h00000010;     Cin=1;
        #5  Card = 5'b00100;    A = 32'h00000012;     B=32'h00000011;     Cin=1;
        #5  Card = 5'b00100;    A = 32'h0fffffff;     B=32'hffffffff;     Cin=1;        
        // SR B-A
        #5  Card = 5'b00101;    A = 32'h0000000f;     B=32'h00000010;     Cin=0;
        #5  Card = 5'b00101;    A = 32'h0000000f;     B=32'h00000010;     Cin=1;
        #5  Card = 5'b00101;    A = 32'h00000010;     B=32'h00000010;     Cin=1;
        #5  Card = 5'b00101;    A = 32'hffffffff;     B=32'h0fffffff;     Cin=1;
        // SRC B-A-Cin
        #5  Card = 5'b00110;    A = 32'h0000000f;     B=32'h00000010;     Cin=0;
        #5  Card = 5'b00110;    A = 32'h0000000f;     B=32'h00000010;     Cin=1;    
        #5  Card = 5'b00110;    A = 32'h00000010;     B=32'h00000010;     Cin=1;       
        #5  Card = 5'b00110;    A = 32'hffffffff;     B=32'h0fffffff;     Cin=1;
        // ETL A
        #5 //F=A=h0000000f Zero=0
        Card = 5'b00111;    A = 32'h0000000f;     B=32'h00000010;     Cin=0;
        #5 //F=A=h00000000 Zero=1
        Card = 5'b00111;    A = 32'h00000000;     B=32'h00000010;     Cin=0;
        // ETR B
        #5 // F=B=h00000010 Zero=0
        Card = 5'b01000;    A = 32'h0000000f;     B=32'h00000010;     Cin=0;      
        #5 // F=B=h00000000 Zero=1
        Card = 5'b01000;    A = 32'h0000000f;     B=32'h00000000;     Cin=0;  
        // NONL
        #5  Card = 5'b01001;    A = 32'h11000101;     B=32'h00000010;     Cin=0;
        #5  Card = 5'b01001;    A = 32'hffffffff;     B=32'h00000010;     Cin=0;
        // NONR
        #5  Card = 5'b01010;    A = 32'h00000001;     B=32'h00000010;     Cin=0;
        #5  Card = 5'b01010;    A = 32'h00000001;     B=32'hffffffff;     Cin=0;       
        // OR
        #5  Card = 5'b01011;    A = 32'b11000001;     B=32'b00000010;     Cin=0;
        #5  Card = 5'b01011;    A = 32'b00000000;     B=32'b00000000;     Cin=0;
        // AND
        #5  Card = 5'b01100;    A = 32'b00010001;     B=32'b00010000;     Cin=0;  
        #5  Card = 5'b01100;    A = 32'b00010001;     B=32'b10001000;     Cin=0;   
        // SOR
        #5  Card = 5'b01101;    A = 32'h10000000;     B=32'h000000ff;     Cin=0;  
        #5  Card = 5'b01101;    A = 32'h0f0f0f0f;     B=32'hf0f0f0f0;     Cin=0;
        // EOR
        #5  Card = 5'b01110;    A = 32'b10000001;     B=32'b00011000;     Cin=0;
        #5  Card = 5'b01110;    A = 32'b11111111;     B=32'b11111111;     Cin=0;
        // ANON
        #5  Card = 5'b01111;    A = 32'h00010001;     B=32'h00010000;     Cin=0;  
        #5  Card = 5'b01111;    A = 32'hffffffff;     B=32'hffffffff;     Cin=0;   
        // ETZ
        #5  Card = 5'b10000;    A = 32'b00010001;     B=32'b00010000;     Cin=0;
        end            
endmodule













