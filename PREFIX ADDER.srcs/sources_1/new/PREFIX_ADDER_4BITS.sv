`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 23:36:33
// Design Name: 
// Module Name: PREFIX_ADDER_4BITS
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
//A0 SW0, A1 SW1, A2 SW2, A3 SW3
//B0 SW4, B1 SW5, B2 SW6, B3 SW7
//CIN SW8
//S0 LED0, S1 LED1, S2 LED2, S3 LED3
//COUT LED4

module PREFIX_ADDER_4BITS(
    input logic [8:0]sw,
    output logic [4:0]LED
    );
    
    logic p0,p1,p2,p3;
    logic g0,g1,g2,g3;
    logic p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19;
    logic p20,p21,p22,p23;

    //p0
    assign p0=sw[0]^sw[4];
    //g0
    assign g0=sw[0]&sw[4];
    //p1
    assign p1=sw[1]^sw[5];
    //g1
    assign g1=sw[1]&sw[5];
    //p2
    assign p2=sw[2]^sw[6];
    //g2
    assign g2=sw[2]&sw[6];
    //p3
    assign p3=sw[3]^sw[7];
    //g3
    assign g3=sw[3]&sw[7];   
    //1
    assign p4=p0&sw[8];
    //2
    assign p5=p0&p1;
    //3
    assign p6=g0&p1;
    //4
    assign p7=p2&p3;
    //5
    assign p8=p3&g2;
    //6
    assign p9=p4|g0;
    //7
    assign p10=p6|g1;
    //8
    assign p11=p8|g3;
    //9
    assign p12=p10&p2;
    //10
    assign p13=p7&p10;
    //11
    assign p14=p5&p2;
    //12
    assign p15=p12|g2;
    //13
    assign p16=p5&p7;
    //14
    assign p17=p11|p13;
    //15
    assign p18=p5&sw[8];
    //16
    assign p19=p18|p10;
    //17
    assign p20=p14&sw[8];
    //18
    assign p21=p20|p15;
    //19
    assign p22=p16&sw[8];
    //cout
    assign LED[4]=p22|p17;
    //s0
    assign LED[0]=sw[8]^p0;
    //s1
    assign LED[1]=p9^p1;
    //s2
    assign LED[2]=p19^p2;
    //s3
    assign LED[3]=p21^p3;
endmodule
