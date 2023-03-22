`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:51:17
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
input a,
input b,
input ci,
output s,
output co
    );
    
//    wire wire_last, ab_or_w, cia_w;
    
//    and ab_and(wire_last, a, b);
//    or ab_or(ab_or_w, a, b);
//    and cia_and(cia_w, ci, ab_or_w);
//    or co_or(co, wire_last, cia_w);
    
//    wire ab_or_and_nab, xor_ab, abc_and, w, ncw, nandw, ww;
    
//    wire xor_ab, xnor_ab, one;
    
//    xor xorab(xor_ab, a, b);
////    not nc(ncw, c);
////    and notabc(w, xor_ab, ncw);
////    or abcand(abc_and, a, b, c);
////    nand cnandab(nandw, a, b);
////    and cab(ww, nandw, c);
////    or allor(s, abc_and, w, ww);

//    not nc(ncw, c);
//    or xnorab(xnor_ab, a, b);
//    and notc(one, ncw, xor_ab);
//    and xnorw(two, c, xnor_ab);
//    or allor(s, one, two);
    
    wire y1, y2, y3, y4;
    
    xor abxor(y1, a, b);
    and aband(y2, a, b);
    
    and abcxor(y3, y1, ci);
    
    or cout(co, y3, y2);
    
    xor sout(s, y1, ci);
    
    
endmodule
