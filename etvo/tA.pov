 #include "colors.inc" 
 #include "shapes.inc" 
 #include "math.inc" 
 #include "functions.inc" 
 #declare surfCXY = color rgb<0.6,0.6,0.6>;
 #declare surfCZ = color rgb<0.6,0.6,0.6>;
 #declare mainColor = color rgb<0.8,0.3,0.3>;
 #declare axisColor = color rgb<0,0,0>;
 camera {location <-20,20,-20>
look_at <0,2,0>}
light_source{<-100,100,-80> rgb<1,1,1>*2}
background{rgb<0.9,0.9,0.9>}
text { 
 ttf "timrom.ttf" "E-shift" 0.1, 0
 pigment { rgb<0.1,0.1,0.1> }
 rotate +90*y
rotate -90*z 
 translate -1.5*z 
 translate 0.1*y scale 1} 
text { 
 ttf "timrom.ttf" "I-time" 0.1, 0
 pigment { rgb<0.1,0.1,0.1> }
     rotate +90*x
 translate -z 
  translate 1*x
 scale 1 }text { 
 ttf "timrom.ttf" "O-time" 0.1, 0
 pigment { rgb<0.1,0.1,0.1> }
   rotate +90*z   
   rotate +90*y 
   translate -1*z 
   translate +2*y scale 1 } 
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate 6*z scale 1 } 
text {ttf "timrom.ttf" "10 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate 11*z scale 1 } 
text {ttf "timrom.ttf" "15 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate 16*z scale 1 } 
text {ttf "timrom.ttf" "20 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate 21*z scale 1 } 
text {ttf "timrom.ttf" "25 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate 26*z scale 1 } 
text {ttf "timrom.ttf" "30 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate 31*z scale 1 } 
text {ttf "timrom.ttf" "35 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate 36*z scale 1 } 
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 5*x scale 1 }
text {ttf "timrom.ttf" "10 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 10*x scale 1 }
text {ttf "timrom.ttf" "15 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 15*x scale 1 }
text {ttf "timrom.ttf" "20 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 20*x scale 1 }
text {ttf "timrom.ttf" "25 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 25*x scale 1 }
text {ttf "timrom.ttf" "30 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 30*x scale 1 }
text {ttf "timrom.ttf" "35 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 35*x scale 1 }
cylinder{<0,0,0>,<40,0,0>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,40>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,40>,<0,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,0>,<1,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,40>,<1,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,0>,<2,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,40>,<2,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,0>,<3,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,40>,<3,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,0>,<4,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,40>,<4,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,0>,<5,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,40>,<5,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,0>,<6,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,40>,<6,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,0>,<7,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,40>,<7,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,0>,<8,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,40>,<8,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,0>,<9,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,40>,<9,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,0>,<10,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,40>,<10,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,0,0>,<11,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,0,40>,<11,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,0,0>,<12,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,0,40>,<12,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,0,0>,<13,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,0,40>,<13,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,0,0>,<14,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,0,40>,<14,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,0>,<15,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,40>,<15,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,0,0>,<16,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,0,40>,<16,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,0,0>,<17,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,0,40>,<17,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,0,0>,<18,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,0,40>,<18,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,0,0>,<19,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,0,40>,<19,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,0>,<20,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,40>,<20,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,0,0>,<21,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,0,40>,<21,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,0,0>,<22,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,0,40>,<22,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,0,0>,<23,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,0,40>,<23,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,0,0>,<24,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,0,40>,<24,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,0>,<25,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,40>,<25,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,0,0>,<26,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,0,40>,<26,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,0,0>,<27,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,0,40>,<27,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,0,0>,<28,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,0,40>,<28,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,0,0>,<29,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,0,40>,<29,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,0>,<30,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,40>,<30,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,0,0>,<31,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,0,40>,<31,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,0,0>,<32,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,0,40>,<32,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,0,0>,<33,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,0,40>,<33,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,0,0>,<34,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,0,40>,<34,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,0,0>,<35,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,0,40>,<35,40,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,0,0>,<36,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,0,40>,<36,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,0,0>,<37,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,0,40>,<37,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,0,0>,<38,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,0,40>,<38,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,0,0>,<39,0,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,0,40>,<39,40,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<40,0,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,0>,<40,40,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,1>,<40,0,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,1>,<40,40,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<40,0,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,2>,<40,40,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,3>,<40,0,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,3>,<40,40,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<40,0,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,4>,<40,40,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<40,0,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,5>,<40,40,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<40,0,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,6>,<40,40,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,7>,<40,0,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,7>,<40,40,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<40,0,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,8>,<40,40,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,9>,<40,0,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,9>,<40,40,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,10>,<40,0,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,10>,<40,40,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,11>,<40,0,11>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,11>,<40,40,11>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<40,0,12>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,12>,<40,40,12>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,13>,<40,0,13>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,13>,<40,40,13>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,14>,<40,0,14>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,14>,<40,40,14>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,15>,<40,0,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,15>,<40,40,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,16>,<40,0,16>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,16>,<40,40,16>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,17>,<40,0,17>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,17>,<40,40,17>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,18>,<40,0,18>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,18>,<40,40,18>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,19>,<40,0,19>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,19>,<40,40,19>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<40,0,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,20>,<40,40,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,21>,<40,0,21>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,21>,<40,40,21>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,22>,<40,0,22>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,22>,<40,40,22>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,23>,<40,0,23>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,23>,<40,40,23>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,24>,<40,0,24>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,24>,<40,40,24>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,25>,<40,0,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,25>,<40,40,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,26>,<40,0,26>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,26>,<40,40,26>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,27>,<40,0,27>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,27>,<40,40,27>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,28>,<40,0,28>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,28>,<40,40,28>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,29>,<40,0,29>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,29>,<40,40,29>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,30>,<40,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,30>,<40,40,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,31>,<40,0,31>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,31>,<40,40,31>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,32>,<40,0,32>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,32>,<40,40,32>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,33>,<40,0,33>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,33>,<40,40,33>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,34>,<40,0,34>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,34>,<40,40,34>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,35>,<40,0,35>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,35>,<40,40,35>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,36>,<40,0,36>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,36>,<40,40,36>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,37>,<40,0,37>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,37>,<40,40,37>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,38>,<40,0,38>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,38>,<40,40,38>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,39>,<40,0,39>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,39>,<40,40,39>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,40>,<40,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,0>,<40,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,40>,<40,1,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,1,0>,<40,1,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,40>,<40,2,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,2,0>,<40,2,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,40>,<40,3,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,3,0>,<40,3,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,40>,<40,4,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,4,0>,<40,4,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,40>,<40,5,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,5,0>,<40,5,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,40>,<40,6,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,6,0>,<40,6,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,40>,<40,7,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,7,0>,<40,7,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,40>,<40,8,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,8,0>,<40,8,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,40>,<40,9,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,9,0>,<40,9,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,40>,<40,10,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,10,0>,<40,10,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,40>,<40,11,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,11,0>,<40,11,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,40>,<40,12,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,12,0>,<40,12,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,40>,<40,13,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,13,0>,<40,13,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,40>,<40,14,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,14,0>,<40,14,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,40>,<40,15,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,15,0>,<40,15,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,40>,<40,16,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,16,0>,<40,16,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,40>,<40,17,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,17,0>,<40,17,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,40>,<40,18,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,18,0>,<40,18,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,40>,<40,19,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,19,0>,<40,19,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,40>,<40,20,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,20,0>,<40,20,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,40>,<40,21,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,21,0>,<40,21,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,40>,<40,22,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,22,0>,<40,22,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,40>,<40,23,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,23,0>,<40,23,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,40>,<40,24,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,24,0>,<40,24,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,40>,<40,25,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,25,0>,<40,25,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,40>,<40,26,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,26,0>,<40,26,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,40>,<40,27,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,27,0>,<40,27,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,40>,<40,28,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,28,0>,<40,28,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,40>,<40,29,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,29,0>,<40,29,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,40>,<40,30,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,30,0>,<40,30,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,40>,<40,31,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,31,0>,<40,31,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,40>,<40,32,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,32,0>,<40,32,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,40>,<40,33,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,33,0>,<40,33,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,40>,<40,34,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,34,0>,<40,34,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,40>,<40,35,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,35,0>,<40,35,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,36,40>,<40,36,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,36,0>,<40,36,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,37,40>,<40,37,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,37,0>,<40,37,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,40>,<40,38,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,38,0>,<40,38,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,39,40>,<40,39,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,39,0>,<40,39,40>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,2,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,2,0><40,2,0><40,0,0><0,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<0,2,0><0,2,40><0,0,40><0,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<0,2,0><40,2,0><40,2,40><0,2,40>pigment { color surfCZ}}
cylinder{<0,2,0>,<0,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,0>,<40,2,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,0>,<40,1,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<40,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,0>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,0>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,0>,<0,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,1>,<0,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,2>,<0,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,3>,<0,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,4>,<0,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,5>,<0,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,6>,<0,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,7>,<0,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,5,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,5,0><40,5,0><40,0,0><1,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<1,5,0><1,5,40><1,0,40><1,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<1,5,0><40,5,0><40,5,40><1,5,40>pigment { color surfCZ}}
cylinder{<1,5,0>,<1,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,5,0>,<2,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,0>,<40,5,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,4,0>,<40,4,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,3,0>,<40,3,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,0>,<40,2,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,0>,<1,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,4,0>,<1,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,3,0>,<1,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,0>,<1,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,0>,<1,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,1>,<1,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,2>,<1,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,3>,<1,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,4>,<1,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,5>,<1,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,6>,<1,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,7>,<1,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,9>,<1,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,5,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,7,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,7,0><40,7,0><40,0,0><3,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<3,7,0><3,7,40><3,0,40><3,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<3,7,0><40,7,0><40,7,40><3,7,40>pigment { color surfCZ}}
cylinder{<3,7,0>,<3,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,0>,<4,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,7,0>,<5,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,0>,<40,7,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,6,0>,<40,6,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,5,0>,<40,5,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,0>,<3,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,6,0>,<3,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,5,0>,<3,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,0>,<3,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,1>,<3,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,2>,<3,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,3>,<3,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,4>,<3,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,5>,<3,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,6>,<3,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,7>,<3,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,8>,<3,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,9>,<3,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,10>,<3,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,11>,<3,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,7,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,7,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,7,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,10,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,10,0><40,10,0><40,0,0><6,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<6,10,0><6,10,40><6,0,40><6,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<6,10,0><40,10,0><40,10,40><6,10,40>pigment { color surfCZ}}
cylinder{<6,10,0>,<6,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,10,0>,<7,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,0>,<40,10,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,9,0>,<40,9,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,8,0>,<40,8,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,7,0>,<40,7,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,0>,<6,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,9,0>,<6,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,8,0>,<6,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,7,0>,<6,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,0>,<6,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,1>,<6,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,2>,<6,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,3>,<6,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,4>,<6,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,5>,<6,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,6>,<6,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,7>,<6,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,8>,<6,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,9>,<6,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,10>,<6,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,11>,<6,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,10,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,12,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,12,0><40,12,0><40,0,0><8,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<8,12,0><8,12,40><8,0,40><8,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<8,12,0><40,12,0><40,12,40><8,12,40>pigment { color surfCZ}}
cylinder{<8,12,0>,<8,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,12,0>,<9,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,12,0>,<10,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,0>,<40,12,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,0>,<40,11,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,10,0>,<40,10,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,0>,<8,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,0>,<8,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,10,0>,<8,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,0>,<8,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,1>,<8,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,2>,<8,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,3>,<8,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,4>,<8,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,5>,<8,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,6>,<8,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,7>,<8,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,9>,<8,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,12,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,12,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,12,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,15,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,15,0><40,15,0><40,0,0><11,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<11,15,0><11,15,40><11,0,40><11,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<11,15,0><40,15,0><40,15,40><11,15,40>pigment { color surfCZ}}
cylinder{<11,15,0>,<11,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,0>,<12,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,0>,<40,15,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,14,0>,<40,14,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,13,0>,<40,13,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,12,0>,<40,12,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,0>,<11,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,14,0>,<11,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,13,0>,<11,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,12,0>,<11,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,0>,<11,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,1>,<11,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,2>,<11,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,3>,<11,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,4>,<11,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,5>,<11,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,6>,<11,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,7>,<11,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,8>,<11,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,9>,<11,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,10>,<11,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,11>,<11,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,15,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,17,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,17,0><40,17,0><40,0,0><13,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<13,17,0><13,17,40><13,0,40><13,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<13,17,0><40,17,0><40,17,40><13,17,40>pigment { color surfCZ}}
cylinder{<13,17,0>,<13,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,17,0>,<14,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,17,0>,<15,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,0>,<40,17,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,16,0>,<40,16,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,15,0>,<40,15,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,0>,<13,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,16,0>,<13,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,15,0>,<13,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,0>,<13,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,1>,<13,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,2>,<13,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,3>,<13,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,4>,<13,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,5>,<13,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,6>,<13,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,7>,<13,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,9>,<13,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,17,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,17,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,17,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,20,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,20,0><40,20,0><40,0,0><16,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<16,20,0><16,20,40><16,0,40><16,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<16,20,0><40,20,0><40,20,40><16,20,40>pigment { color surfCZ}}
cylinder{<16,20,0>,<16,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,20,0>,<17,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,0>,<40,20,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,0>,<40,19,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,18,0>,<40,18,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,0>,<40,17,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,0>,<16,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,0>,<16,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,18,0>,<16,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,0>,<16,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,0>,<16,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,1>,<16,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,2>,<16,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,3>,<16,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,4>,<16,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,5>,<16,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,6>,<16,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,7>,<16,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,9>,<16,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,31>,<16,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,32>,<16,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,33>,<16,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,35>,<16,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,36>,<16,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,37>,<16,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,38>,<16,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,39>,<16,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,40>,<16,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,20,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,22,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,22,0><40,22,0><40,0,0><18,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<18,22,0><18,22,40><18,0,40><18,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<18,22,0><40,22,0><40,22,40><18,22,40>pigment { color surfCZ}}
cylinder{<18,22,0>,<18,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,22,0>,<19,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,22,0>,<20,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,0>,<40,22,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,21,0>,<40,21,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,20,0>,<40,20,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,0>,<18,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,21,0>,<18,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,20,0>,<18,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,0>,<18,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,1>,<18,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,2>,<18,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,3>,<18,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,4>,<18,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,5>,<18,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,6>,<18,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,7>,<18,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,8>,<18,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,9>,<18,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,10>,<18,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,11>,<18,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,12>,<18,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,13>,<18,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,14>,<18,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,15>,<18,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,16>,<18,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,17>,<18,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,18>,<18,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,19>,<18,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,20>,<18,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,21>,<18,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,22>,<18,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,23>,<18,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,24>,<18,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,25>,<18,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,26>,<18,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,27>,<18,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,28>,<18,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,29>,<18,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,30>,<18,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,31>,<18,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,32>,<18,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,33>,<18,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,34>,<18,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,35>,<18,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,36>,<18,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,37>,<18,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,38>,<18,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,39>,<18,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,40>,<18,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,22,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,22,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,25,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,25,0><40,25,0><40,0,0><21,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<21,25,0><21,25,40><21,0,40><21,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<21,25,0><40,25,0><40,25,40><21,25,40>pigment { color surfCZ}}
cylinder{<21,25,0>,<21,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,25,0>,<22,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,0>,<40,25,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,24,0>,<40,24,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,23,0>,<40,23,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,0>,<40,22,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,0>,<21,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,24,0>,<21,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,23,0>,<21,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,0>,<21,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,0>,<21,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,1>,<21,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,2>,<21,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,3>,<21,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,4>,<21,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,5>,<21,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,6>,<21,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,7>,<21,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,9>,<21,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,10>,<21,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,11>,<21,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,12>,<21,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,13>,<21,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,14>,<21,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,15>,<21,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,16>,<21,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,17>,<21,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,18>,<21,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,19>,<21,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,20>,<21,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,21>,<21,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,22>,<21,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,23>,<21,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,24>,<21,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,25>,<21,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,26>,<21,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,27>,<21,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,28>,<21,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,29>,<21,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,30>,<21,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,31>,<21,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,32>,<21,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,33>,<21,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,34>,<21,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,35>,<21,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,36>,<21,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,37>,<21,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,38>,<21,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,39>,<21,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,40>,<21,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,25,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,27,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,27,0><40,27,0><40,0,0><23,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<23,27,0><23,27,40><23,0,40><23,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<23,27,0><40,27,0><40,27,40><23,27,40>pigment { color surfCZ}}
cylinder{<23,27,0>,<23,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,0>,<24,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,27,0>,<25,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,0>,<40,27,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,26,0>,<40,26,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,25,0>,<40,25,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,0>,<23,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,26,0>,<23,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,25,0>,<23,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,0>,<23,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,1>,<23,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,2>,<23,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,3>,<23,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,4>,<23,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,5>,<23,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,6>,<23,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,7>,<23,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,8>,<23,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,9>,<23,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,10>,<23,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,11>,<23,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,12>,<23,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,13>,<23,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,14>,<23,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,15>,<23,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,16>,<23,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,17>,<23,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,18>,<23,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,19>,<23,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,20>,<23,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,21>,<23,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,22>,<23,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,23>,<23,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,24>,<23,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,25>,<23,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,26>,<23,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,27>,<23,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,28>,<23,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,29>,<23,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,30>,<23,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,31>,<23,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,32>,<23,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,33>,<23,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,34>,<23,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,35>,<23,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,36>,<23,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,37>,<23,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,38>,<23,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,39>,<23,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,27,40>,<23,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,27,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,27,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,30,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<26,30,0><40,30,0><40,0,0><26,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<26,30,0><26,30,40><26,0,40><26,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<26,30,0><40,30,0><40,30,40><26,30,40>pigment { color surfCZ}}
cylinder{<26,30,0>,<26,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,30,0>,<27,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,0>,<40,30,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,29,0>,<40,29,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,28,0>,<40,28,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,27,0>,<40,27,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,0>,<26,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,29,0>,<26,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,28,0>,<26,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,27,0>,<26,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,0>,<26,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,1>,<26,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,2>,<26,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,3>,<26,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,4>,<26,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,5>,<26,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,6>,<26,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,7>,<26,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,8>,<26,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,9>,<26,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,10>,<26,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,11>,<26,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,12>,<26,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,13>,<26,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,14>,<26,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,15>,<26,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,16>,<26,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,17>,<26,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,18>,<26,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,19>,<26,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,20>,<26,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,21>,<26,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,22>,<26,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,23>,<26,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,24>,<26,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,25>,<26,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,26>,<26,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,27>,<26,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,28>,<26,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,29>,<26,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,30>,<26,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,31>,<26,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,32>,<26,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,33>,<26,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,34>,<26,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,35>,<26,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,36>,<26,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,37>,<26,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,38>,<26,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,39>,<26,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,40>,<26,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<27,30,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<28,32,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<28,32,0><40,32,0><40,0,0><28,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<28,32,0><28,32,40><28,0,40><28,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<28,32,0><40,32,0><40,32,40><28,32,40>pigment { color surfCZ}}
cylinder{<28,32,0>,<28,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,32,0>,<29,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,32,0>,<30,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,0>,<40,32,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,31,0>,<40,31,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,30,0>,<40,30,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,0>,<28,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,31,0>,<28,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,30,0>,<28,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,0>,<28,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,1>,<28,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,2>,<28,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,3>,<28,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,4>,<28,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,5>,<28,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,6>,<28,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,7>,<28,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,8>,<28,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,9>,<28,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,10>,<28,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,11>,<28,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,12>,<28,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,13>,<28,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,14>,<28,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,15>,<28,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,16>,<28,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,17>,<28,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,18>,<28,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,19>,<28,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,20>,<28,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,21>,<28,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,22>,<28,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,23>,<28,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,24>,<28,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,25>,<28,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,26>,<28,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,27>,<28,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,28>,<28,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,29>,<28,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,30>,<28,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,31>,<28,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,32>,<28,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,33>,<28,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,34>,<28,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,35>,<28,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,36>,<28,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,37>,<28,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,38>,<28,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,39>,<28,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,40>,<28,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<29,32,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<30,32,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<31,35,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<31,35,0><40,35,0><40,0,0><31,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<31,35,0><31,35,40><31,0,40><31,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<31,35,0><40,35,0><40,35,40><31,35,40>pigment { color surfCZ}}
cylinder{<31,35,0>,<31,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,35,0>,<32,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,0>,<40,35,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,34,0>,<40,34,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,33,0>,<40,33,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,32,0>,<40,32,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,0>,<31,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,34,0>,<31,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,33,0>,<31,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,32,0>,<31,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,0>,<31,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,1>,<31,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,2>,<31,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,3>,<31,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,4>,<31,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,5>,<31,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,6>,<31,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,7>,<31,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,8>,<31,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,9>,<31,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,10>,<31,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,11>,<31,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,12>,<31,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,13>,<31,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,14>,<31,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,15>,<31,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,16>,<31,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,17>,<31,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,18>,<31,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,19>,<31,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,20>,<31,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,21>,<31,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,22>,<31,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,23>,<31,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,24>,<31,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,25>,<31,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,26>,<31,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,27>,<31,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,28>,<31,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,29>,<31,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,30>,<31,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,31>,<31,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,32>,<31,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,33>,<31,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,34>,<31,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,35>,<31,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,36>,<31,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,37>,<31,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,38>,<31,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,39>,<31,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,40>,<31,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<32,35,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<33,37,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<33,37,0><40,37,0><40,0,0><33,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<33,37,0><33,37,40><33,0,40><33,0,0>pigment { color surfCXY}}
polygon { 
 4, 
<33,37,0><40,37,0><40,37,40><33,37,40>pigment { color surfCZ}}
cylinder{<33,37,0>,<33,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,37,0>,<34,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,37,0>,<35,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,0>,<40,37,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,36,0>,<40,36,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,35,0>,<40,35,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,0>,<33,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,36,0>,<33,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,35,0>,<33,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,0>,<33,0,0>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,1>,<33,0,1>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,2>,<33,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,3>,<33,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,4>,<33,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,5>,<33,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,6>,<33,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,7>,<33,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,8>,<33,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,9>,<33,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,10>,<33,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,11>,<33,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,12>,<33,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,13>,<33,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,14>,<33,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,15>,<33,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,16>,<33,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,17>,<33,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,18>,<33,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,19>,<33,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,20>,<33,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,21>,<33,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,22>,<33,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,23>,<33,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,24>,<33,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,25>,<33,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,26>,<33,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,27>,<33,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,28>,<33,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,29>,<33,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,30>,<33,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,31>,<33,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,32>,<33,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,33>,<33,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,34>,<33,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,35>,<33,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,36>,<33,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,37>,<33,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,38>,<33,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,39>,<33,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,40>,<33,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<34,37,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<35,37,0>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,5,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,5,2><40,5,2><40,0,2><0,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<0,5,2><0,5,40><0,0,40><0,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<0,5,2><40,5,2><40,5,40><0,5,40>pigment { color surfCZ}}
cylinder{<0,5,2>,<0,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,2>,<40,5,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,2>,<40,4,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,2>,<40,3,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,2>,<40,2,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,2>,<40,1,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<40,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,2>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,2>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,2>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,2>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,2>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,2>,<0,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,3>,<0,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,4>,<0,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,5>,<0,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,6>,<0,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,7>,<0,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,8,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,8,2><40,8,2><40,0,2><1,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<1,8,2><1,8,40><1,0,40><1,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<1,8,2><40,8,2><40,8,40><1,8,40>pigment { color surfCZ}}
cylinder{<1,8,2>,<1,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,8,2>,<2,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,2>,<40,8,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,7,2>,<40,7,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,6,2>,<40,6,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,2>,<40,5,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,2>,<1,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,7,2>,<1,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,6,2>,<1,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,2>,<1,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,2>,<1,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,3>,<1,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,4>,<1,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,5>,<1,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,6>,<1,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,7>,<1,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,9>,<1,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,8,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,10,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,10,2><40,10,2><40,0,2><3,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<3,10,2><3,10,40><3,0,40><3,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<3,10,2><40,10,2><40,10,40><3,10,40>pigment { color surfCZ}}
cylinder{<3,10,2>,<3,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,10,2>,<4,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,10,2>,<5,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,2>,<40,10,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,9,2>,<40,9,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,8,2>,<40,8,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,2>,<3,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,9,2>,<3,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,8,2>,<3,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,2>,<3,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,3>,<3,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,4>,<3,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,5>,<3,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,6>,<3,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,7>,<3,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,8>,<3,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,9>,<3,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,10>,<3,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,11>,<3,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,10,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,10,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,13,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,13,2><40,13,2><40,0,2><6,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<6,13,2><6,13,40><6,0,40><6,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<6,13,2><40,13,2><40,13,40><6,13,40>pigment { color surfCZ}}
cylinder{<6,13,2>,<6,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,13,2>,<7,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,2>,<40,13,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,12,2>,<40,12,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,11,2>,<40,11,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,2>,<40,10,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,2>,<6,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,12,2>,<6,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,11,2>,<6,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,2>,<6,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,2>,<6,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,3>,<6,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,4>,<6,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,5>,<6,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,6>,<6,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,7>,<6,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,8>,<6,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,9>,<6,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,10>,<6,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,11>,<6,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,13,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,15,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,15,2><40,15,2><40,0,2><8,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<8,15,2><8,15,40><8,0,40><8,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<8,15,2><40,15,2><40,15,40><8,15,40>pigment { color surfCZ}}
cylinder{<8,15,2>,<8,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,15,2>,<9,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,15,2>,<10,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,2>,<40,15,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,14,2>,<40,14,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,13,2>,<40,13,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,2>,<8,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,14,2>,<8,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,13,2>,<8,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,2>,<8,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,3>,<8,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,4>,<8,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,5>,<8,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,6>,<8,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,7>,<8,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,9>,<8,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,15,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,15,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,18,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,18,2><40,18,2><40,0,2><11,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<11,18,2><11,18,40><11,0,40><11,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<11,18,2><40,18,2><40,18,40><11,18,40>pigment { color surfCZ}}
cylinder{<11,18,2>,<11,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,18,2>,<12,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,2>,<40,18,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,17,2>,<40,17,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,16,2>,<40,16,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,2>,<40,15,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,2>,<11,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,17,2>,<11,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,16,2>,<11,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,2>,<11,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,2>,<11,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,3>,<11,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,4>,<11,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,5>,<11,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,6>,<11,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,7>,<11,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,8>,<11,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,9>,<11,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,10>,<11,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,11>,<11,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,18,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,20,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,20,2><40,20,2><40,0,2><13,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<13,20,2><13,20,40><13,0,40><13,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<13,20,2><40,20,2><40,20,40><13,20,40>pigment { color surfCZ}}
cylinder{<13,20,2>,<13,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,20,2>,<14,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,20,2>,<15,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,2>,<40,20,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,19,2>,<40,19,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,18,2>,<40,18,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,2>,<13,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,19,2>,<13,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,18,2>,<13,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,2>,<13,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,3>,<13,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,4>,<13,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,5>,<13,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,6>,<13,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,7>,<13,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,9>,<13,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,20,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,20,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,20,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,23,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,23,2><40,23,2><40,0,2><16,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<16,23,2><16,23,40><16,0,40><16,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<16,23,2><40,23,2><40,23,40><16,23,40>pigment { color surfCZ}}
cylinder{<16,23,2>,<16,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,23,2>,<17,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,2>,<40,23,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,22,2>,<40,22,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,21,2>,<40,21,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,2>,<40,20,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,2>,<16,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,22,2>,<16,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,21,2>,<16,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,2>,<16,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,2>,<16,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,3>,<16,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,4>,<16,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,5>,<16,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,6>,<16,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,7>,<16,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,9>,<16,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,31>,<16,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,32>,<16,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,33>,<16,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,35>,<16,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,36>,<16,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,37>,<16,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,38>,<16,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,39>,<16,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,40>,<16,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,23,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,25,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,25,2><40,25,2><40,0,2><18,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<18,25,2><18,25,40><18,0,40><18,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<18,25,2><40,25,2><40,25,40><18,25,40>pigment { color surfCZ}}
cylinder{<18,25,2>,<18,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,25,2>,<19,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,25,2>,<20,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,2>,<40,25,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,24,2>,<40,24,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,23,2>,<40,23,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,2>,<18,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,24,2>,<18,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,23,2>,<18,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,2>,<18,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,3>,<18,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,4>,<18,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,5>,<18,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,6>,<18,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,7>,<18,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,8>,<18,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,9>,<18,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,10>,<18,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,11>,<18,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,12>,<18,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,13>,<18,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,14>,<18,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,15>,<18,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,16>,<18,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,17>,<18,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,18>,<18,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,19>,<18,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,20>,<18,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,21>,<18,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,22>,<18,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,23>,<18,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,24>,<18,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,25>,<18,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,26>,<18,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,27>,<18,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,28>,<18,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,29>,<18,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,30>,<18,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,31>,<18,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,32>,<18,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,33>,<18,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,34>,<18,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,35>,<18,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,36>,<18,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,37>,<18,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,38>,<18,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,39>,<18,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,40>,<18,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,25,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,25,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,28,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,28,2><40,28,2><40,0,2><21,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<21,28,2><21,28,40><21,0,40><21,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<21,28,2><40,28,2><40,28,40><21,28,40>pigment { color surfCZ}}
cylinder{<21,28,2>,<21,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,28,2>,<22,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,2>,<40,28,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,27,2>,<40,27,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,26,2>,<40,26,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,2>,<40,25,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,2>,<21,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,27,2>,<21,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,26,2>,<21,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,25,2>,<21,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,2>,<21,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,3>,<21,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,4>,<21,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,5>,<21,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,6>,<21,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,7>,<21,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,9>,<21,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,10>,<21,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,11>,<21,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,12>,<21,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,13>,<21,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,14>,<21,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,15>,<21,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,16>,<21,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,17>,<21,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,18>,<21,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,19>,<21,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,20>,<21,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,21>,<21,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,22>,<21,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,23>,<21,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,24>,<21,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,25>,<21,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,26>,<21,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,27>,<21,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,28>,<21,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,29>,<21,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,30>,<21,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,31>,<21,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,32>,<21,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,33>,<21,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,34>,<21,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,35>,<21,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,36>,<21,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,37>,<21,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,38>,<21,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,39>,<21,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,40>,<21,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,28,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,30,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,30,2><40,30,2><40,0,2><23,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<23,30,2><23,30,40><23,0,40><23,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<23,30,2><40,30,2><40,30,40><23,30,40>pigment { color surfCZ}}
cylinder{<23,30,2>,<23,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,30,2>,<24,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,30,2>,<25,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,2>,<40,30,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,29,2>,<40,29,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,28,2>,<40,28,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,2>,<23,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,29,2>,<23,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,28,2>,<23,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,2>,<23,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,3>,<23,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,4>,<23,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,5>,<23,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,6>,<23,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,7>,<23,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,8>,<23,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,9>,<23,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,10>,<23,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,11>,<23,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,12>,<23,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,13>,<23,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,14>,<23,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,15>,<23,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,16>,<23,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,17>,<23,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,18>,<23,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,19>,<23,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,20>,<23,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,21>,<23,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,22>,<23,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,23>,<23,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,24>,<23,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,25>,<23,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,26>,<23,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,27>,<23,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,28>,<23,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,29>,<23,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,30>,<23,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,31>,<23,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,32>,<23,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,33>,<23,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,34>,<23,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,35>,<23,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,36>,<23,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,37>,<23,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,38>,<23,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,39>,<23,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,30,40>,<23,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,30,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,30,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,33,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<26,33,2><40,33,2><40,0,2><26,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<26,33,2><26,33,40><26,0,40><26,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<26,33,2><40,33,2><40,33,40><26,33,40>pigment { color surfCZ}}
cylinder{<26,33,2>,<26,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,33,2>,<27,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,2>,<40,33,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,32,2>,<40,32,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,31,2>,<40,31,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,2>,<40,30,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,2>,<26,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,32,2>,<26,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,31,2>,<26,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,30,2>,<26,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,2>,<26,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,3>,<26,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,4>,<26,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,5>,<26,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,6>,<26,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,7>,<26,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,8>,<26,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,9>,<26,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,10>,<26,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,11>,<26,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,12>,<26,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,13>,<26,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,14>,<26,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,15>,<26,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,16>,<26,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,17>,<26,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,18>,<26,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,19>,<26,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,20>,<26,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,21>,<26,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,22>,<26,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,23>,<26,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,24>,<26,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,25>,<26,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,26>,<26,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,27>,<26,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,28>,<26,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,29>,<26,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,30>,<26,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,31>,<26,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,32>,<26,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,33>,<26,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,34>,<26,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,35>,<26,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,36>,<26,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,37>,<26,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,38>,<26,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,39>,<26,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,40>,<26,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<27,33,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<28,35,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<28,35,2><40,35,2><40,0,2><28,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<28,35,2><28,35,40><28,0,40><28,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<28,35,2><40,35,2><40,35,40><28,35,40>pigment { color surfCZ}}
cylinder{<28,35,2>,<28,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,35,2>,<29,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,35,2>,<30,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,2>,<40,35,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,34,2>,<40,34,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,33,2>,<40,33,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,2>,<28,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,34,2>,<28,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,33,2>,<28,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,2>,<28,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,3>,<28,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,4>,<28,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,5>,<28,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,6>,<28,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,7>,<28,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,8>,<28,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,9>,<28,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,10>,<28,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,11>,<28,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,12>,<28,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,13>,<28,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,14>,<28,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,15>,<28,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,16>,<28,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,17>,<28,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,18>,<28,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,19>,<28,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,20>,<28,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,21>,<28,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,22>,<28,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,23>,<28,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,24>,<28,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,25>,<28,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,26>,<28,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,27>,<28,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,28>,<28,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,29>,<28,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,30>,<28,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,31>,<28,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,32>,<28,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,33>,<28,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,34>,<28,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,35>,<28,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,36>,<28,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,37>,<28,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,38>,<28,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,39>,<28,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,40>,<28,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<29,35,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<30,35,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<31,38,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<31,38,2><40,38,2><40,0,2><31,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<31,38,2><31,38,40><31,0,40><31,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<31,38,2><40,38,2><40,38,40><31,38,40>pigment { color surfCZ}}
cylinder{<31,38,2>,<31,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,38,2>,<32,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,2>,<40,38,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,37,2>,<40,37,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,36,2>,<40,36,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,2>,<40,35,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,2>,<31,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,37,2>,<31,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,36,2>,<31,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,35,2>,<31,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,2>,<31,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,3>,<31,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,4>,<31,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,5>,<31,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,6>,<31,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,7>,<31,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,8>,<31,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,9>,<31,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,10>,<31,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,11>,<31,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,12>,<31,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,13>,<31,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,14>,<31,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,15>,<31,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,16>,<31,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,17>,<31,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,18>,<31,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,19>,<31,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,20>,<31,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,21>,<31,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,22>,<31,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,23>,<31,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,24>,<31,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,25>,<31,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,26>,<31,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,27>,<31,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,28>,<31,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,29>,<31,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,30>,<31,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,31>,<31,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,32>,<31,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,33>,<31,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,34>,<31,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,35>,<31,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,36>,<31,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,37>,<31,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,38>,<31,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,39>,<31,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,38,40>,<31,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<32,38,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,8,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,8,4><40,8,4><40,0,4><0,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<0,8,4><0,8,40><0,0,40><0,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<0,8,4><40,8,4><40,8,40><0,8,40>pigment { color surfCZ}}
cylinder{<0,8,4>,<0,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,4>,<40,8,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,4>,<40,7,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,4>,<40,6,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,4>,<40,5,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,4>,<40,4,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,4>,<40,3,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,4>,<40,2,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,4>,<40,1,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<40,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,4>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,4>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,4>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,4>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,4>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,4>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,4>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,4>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,4>,<0,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,5>,<0,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,6>,<0,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,7>,<0,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,11,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,11,4><40,11,4><40,0,4><1,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<1,11,4><1,11,40><1,0,40><1,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<1,11,4><40,11,4><40,11,40><1,11,40>pigment { color surfCZ}}
cylinder{<1,11,4>,<1,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,11,4>,<2,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,4>,<40,11,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,10,4>,<40,10,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,9,4>,<40,9,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,4>,<40,8,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,4>,<1,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,10,4>,<1,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,9,4>,<1,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,4>,<1,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,4>,<1,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,5>,<1,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,6>,<1,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,7>,<1,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,9>,<1,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,11,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,13,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,13,4><40,13,4><40,0,4><3,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<3,13,4><3,13,40><3,0,40><3,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<3,13,4><40,13,4><40,13,40><3,13,40>pigment { color surfCZ}}
cylinder{<3,13,4>,<3,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,13,4>,<4,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,13,4>,<5,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,4>,<40,13,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,12,4>,<40,12,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,11,4>,<40,11,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,4>,<3,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,12,4>,<3,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,11,4>,<3,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,4>,<3,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,5>,<3,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,6>,<3,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,7>,<3,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,8>,<3,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,9>,<3,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,10>,<3,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,11>,<3,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,13,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,13,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,16,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,16,4><40,16,4><40,0,4><6,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<6,16,4><6,16,40><6,0,40><6,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<6,16,4><40,16,4><40,16,40><6,16,40>pigment { color surfCZ}}
cylinder{<6,16,4>,<6,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,16,4>,<7,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,4>,<40,16,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,15,4>,<40,15,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,14,4>,<40,14,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,4>,<40,13,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,4>,<6,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,15,4>,<6,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,14,4>,<6,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,4>,<6,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,4>,<6,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,5>,<6,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,6>,<6,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,7>,<6,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,8>,<6,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,9>,<6,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,10>,<6,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,11>,<6,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,16,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,18,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,18,4><40,18,4><40,0,4><8,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<8,18,4><8,18,40><8,0,40><8,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<8,18,4><40,18,4><40,18,40><8,18,40>pigment { color surfCZ}}
cylinder{<8,18,4>,<8,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,18,4>,<9,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,18,4>,<10,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,4>,<40,18,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,17,4>,<40,17,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,16,4>,<40,16,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,4>,<8,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,17,4>,<8,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,16,4>,<8,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,4>,<8,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,5>,<8,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,6>,<8,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,7>,<8,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,9>,<8,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,18,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,18,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,21,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,21,4><40,21,4><40,0,4><11,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<11,21,4><11,21,40><11,0,40><11,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<11,21,4><40,21,4><40,21,40><11,21,40>pigment { color surfCZ}}
cylinder{<11,21,4>,<11,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,21,4>,<12,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,4>,<40,21,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,20,4>,<40,20,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,19,4>,<40,19,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,4>,<40,18,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,4>,<11,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,20,4>,<11,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,19,4>,<11,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,4>,<11,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,4>,<11,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,5>,<11,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,6>,<11,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,7>,<11,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,8>,<11,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,9>,<11,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,10>,<11,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,11>,<11,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,21,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,23,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,23,4><40,23,4><40,0,4><13,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<13,23,4><13,23,40><13,0,40><13,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<13,23,4><40,23,4><40,23,40><13,23,40>pigment { color surfCZ}}
cylinder{<13,23,4>,<13,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,23,4>,<14,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,23,4>,<15,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,4>,<40,23,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,22,4>,<40,22,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,21,4>,<40,21,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,4>,<13,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,22,4>,<13,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,21,4>,<13,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,4>,<13,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,5>,<13,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,6>,<13,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,7>,<13,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,9>,<13,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,23,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,23,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,26,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,26,4><40,26,4><40,0,4><16,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<16,26,4><16,26,40><16,0,40><16,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<16,26,4><40,26,4><40,26,40><16,26,40>pigment { color surfCZ}}
cylinder{<16,26,4>,<16,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,26,4>,<17,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,4>,<40,26,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,25,4>,<40,25,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,24,4>,<40,24,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,4>,<40,23,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,4>,<16,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,25,4>,<16,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,24,4>,<16,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,4>,<16,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,4>,<16,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,5>,<16,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,6>,<16,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,7>,<16,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,9>,<16,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,31>,<16,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,32>,<16,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,33>,<16,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,35>,<16,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,36>,<16,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,37>,<16,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,38>,<16,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,39>,<16,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,40>,<16,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,26,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,28,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,28,4><40,28,4><40,0,4><18,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<18,28,4><18,28,40><18,0,40><18,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<18,28,4><40,28,4><40,28,40><18,28,40>pigment { color surfCZ}}
cylinder{<18,28,4>,<18,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,28,4>,<19,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,28,4>,<20,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,4>,<40,28,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,27,4>,<40,27,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,26,4>,<40,26,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,4>,<18,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,27,4>,<18,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,26,4>,<18,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,4>,<18,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,5>,<18,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,6>,<18,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,7>,<18,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,8>,<18,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,9>,<18,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,10>,<18,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,11>,<18,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,12>,<18,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,13>,<18,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,14>,<18,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,15>,<18,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,16>,<18,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,17>,<18,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,18>,<18,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,19>,<18,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,20>,<18,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,21>,<18,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,22>,<18,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,23>,<18,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,24>,<18,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,25>,<18,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,26>,<18,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,27>,<18,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,28>,<18,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,29>,<18,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,30>,<18,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,31>,<18,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,32>,<18,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,33>,<18,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,34>,<18,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,35>,<18,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,36>,<18,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,37>,<18,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,38>,<18,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,39>,<18,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,40>,<18,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,28,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,28,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,31,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,31,4><40,31,4><40,0,4><21,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<21,31,4><21,31,40><21,0,40><21,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<21,31,4><40,31,4><40,31,40><21,31,40>pigment { color surfCZ}}
cylinder{<21,31,4>,<21,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,31,4>,<22,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,4>,<40,31,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,30,4>,<40,30,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,29,4>,<40,29,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,4>,<40,28,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,4>,<21,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,30,4>,<21,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,29,4>,<21,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,4>,<21,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,4>,<21,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,5>,<21,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,6>,<21,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,7>,<21,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,9>,<21,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,10>,<21,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,11>,<21,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,12>,<21,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,13>,<21,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,14>,<21,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,15>,<21,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,16>,<21,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,17>,<21,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,18>,<21,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,19>,<21,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,20>,<21,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,21>,<21,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,22>,<21,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,23>,<21,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,24>,<21,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,25>,<21,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,26>,<21,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,27>,<21,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,28>,<21,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,29>,<21,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,30>,<21,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,31>,<21,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,32>,<21,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,33>,<21,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,34>,<21,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,35>,<21,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,36>,<21,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,37>,<21,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,38>,<21,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,39>,<21,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,40>,<21,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,31,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,33,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,33,4><40,33,4><40,0,4><23,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<23,33,4><23,33,40><23,0,40><23,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<23,33,4><40,33,4><40,33,40><23,33,40>pigment { color surfCZ}}
cylinder{<23,33,4>,<23,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,33,4>,<24,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,33,4>,<25,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,4>,<40,33,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,32,4>,<40,32,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,31,4>,<40,31,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,4>,<23,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,32,4>,<23,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,31,4>,<23,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,4>,<23,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,5>,<23,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,6>,<23,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,7>,<23,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,8>,<23,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,9>,<23,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,10>,<23,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,11>,<23,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,12>,<23,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,13>,<23,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,14>,<23,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,15>,<23,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,16>,<23,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,17>,<23,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,18>,<23,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,19>,<23,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,20>,<23,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,21>,<23,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,22>,<23,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,23>,<23,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,24>,<23,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,25>,<23,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,26>,<23,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,27>,<23,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,28>,<23,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,29>,<23,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,30>,<23,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,31>,<23,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,32>,<23,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,33>,<23,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,34>,<23,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,35>,<23,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,36>,<23,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,37>,<23,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,38>,<23,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,39>,<23,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,33,40>,<23,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,33,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,33,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,36,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<26,36,4><40,36,4><40,0,4><26,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<26,36,4><26,36,40><26,0,40><26,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<26,36,4><40,36,4><40,36,40><26,36,40>pigment { color surfCZ}}
cylinder{<26,36,4>,<26,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,36,4>,<27,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,4>,<40,36,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,35,4>,<40,35,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,34,4>,<40,34,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,4>,<40,33,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,4>,<26,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,35,4>,<26,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,34,4>,<26,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,33,4>,<26,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,4>,<26,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,5>,<26,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,6>,<26,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,7>,<26,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,8>,<26,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,9>,<26,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,10>,<26,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,11>,<26,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,12>,<26,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,13>,<26,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,14>,<26,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,15>,<26,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,16>,<26,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,17>,<26,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,18>,<26,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,19>,<26,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,20>,<26,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,21>,<26,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,22>,<26,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,23>,<26,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,24>,<26,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,25>,<26,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,26>,<26,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,27>,<26,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,28>,<26,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,29>,<26,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,30>,<26,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,31>,<26,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,32>,<26,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,33>,<26,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,34>,<26,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,35>,<26,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,36>,<26,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,37>,<26,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,38>,<26,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,39>,<26,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,40>,<26,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<27,36,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<28,38,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<28,38,4><40,38,4><40,0,4><28,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<28,38,4><28,38,40><28,0,40><28,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<28,38,4><40,38,4><40,38,40><28,38,40>pigment { color surfCZ}}
cylinder{<28,38,4>,<28,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,38,4>,<29,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,38,4>,<30,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,4>,<40,38,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,37,4>,<40,37,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,36,4>,<40,36,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,4>,<28,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,37,4>,<28,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,36,4>,<28,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,4>,<28,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,5>,<28,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,6>,<28,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,7>,<28,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,8>,<28,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,9>,<28,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,10>,<28,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,11>,<28,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,12>,<28,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,13>,<28,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,14>,<28,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,15>,<28,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,16>,<28,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,17>,<28,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,18>,<28,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,19>,<28,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,20>,<28,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,21>,<28,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,22>,<28,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,23>,<28,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,24>,<28,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,25>,<28,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,26>,<28,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,27>,<28,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,28>,<28,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,29>,<28,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,30>,<28,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,31>,<28,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,32>,<28,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,33>,<28,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,34>,<28,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,35>,<28,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,36>,<28,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,37>,<28,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,38>,<28,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,39>,<28,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,38,40>,<28,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<29,38,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<30,38,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,11,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,11,6><40,11,6><40,0,6><0,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<0,11,6><0,11,40><0,0,40><0,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<0,11,6><40,11,6><40,11,40><0,11,40>pigment { color surfCZ}}
cylinder{<0,11,6>,<0,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,6>,<40,11,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,6>,<40,10,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,6>,<40,9,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,6>,<40,8,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,6>,<40,7,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,6>,<40,6,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,6>,<40,5,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,6>,<40,4,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,6>,<40,3,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,6>,<40,2,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,6>,<40,1,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<40,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,6>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,6>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,6>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,6>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,6>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,6>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,6>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,6>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,6>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,6>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,6>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,6>,<0,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,7>,<0,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,14,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,14,6><40,14,6><40,0,6><1,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<1,14,6><1,14,40><1,0,40><1,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<1,14,6><40,14,6><40,14,40><1,14,40>pigment { color surfCZ}}
cylinder{<1,14,6>,<1,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,14,6>,<2,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,6>,<40,14,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,13,6>,<40,13,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,12,6>,<40,12,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,6>,<40,11,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,6>,<1,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,13,6>,<1,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,12,6>,<1,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,6>,<1,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,6>,<1,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,7>,<1,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,9>,<1,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,14,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,16,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,16,6><40,16,6><40,0,6><3,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<3,16,6><3,16,40><3,0,40><3,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<3,16,6><40,16,6><40,16,40><3,16,40>pigment { color surfCZ}}
cylinder{<3,16,6>,<3,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,16,6>,<4,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,16,6>,<5,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,6>,<40,16,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,15,6>,<40,15,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,14,6>,<40,14,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,6>,<3,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,15,6>,<3,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,14,6>,<3,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,6>,<3,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,7>,<3,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,8>,<3,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,9>,<3,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,10>,<3,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,11>,<3,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,16,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,16,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,19,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,19,6><40,19,6><40,0,6><6,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<6,19,6><6,19,40><6,0,40><6,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<6,19,6><40,19,6><40,19,40><6,19,40>pigment { color surfCZ}}
cylinder{<6,19,6>,<6,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,19,6>,<7,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,6>,<40,19,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,18,6>,<40,18,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,17,6>,<40,17,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,6>,<40,16,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,6>,<6,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,18,6>,<6,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,17,6>,<6,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,16,6>,<6,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,6>,<6,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,7>,<6,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,8>,<6,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,9>,<6,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,10>,<6,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,11>,<6,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,19,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,21,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,21,6><40,21,6><40,0,6><8,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<8,21,6><8,21,40><8,0,40><8,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<8,21,6><40,21,6><40,21,40><8,21,40>pigment { color surfCZ}}
cylinder{<8,21,6>,<8,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,21,6>,<9,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,21,6>,<10,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,6>,<40,21,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,20,6>,<40,20,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,19,6>,<40,19,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,6>,<8,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,20,6>,<8,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,19,6>,<8,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,6>,<8,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,7>,<8,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,9>,<8,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,21,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,21,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,24,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,24,6><40,24,6><40,0,6><11,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<11,24,6><11,24,40><11,0,40><11,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<11,24,6><40,24,6><40,24,40><11,24,40>pigment { color surfCZ}}
cylinder{<11,24,6>,<11,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,24,6>,<12,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,6>,<40,24,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,23,6>,<40,23,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,22,6>,<40,22,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,6>,<40,21,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,6>,<11,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,23,6>,<11,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,22,6>,<11,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,6>,<11,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,6>,<11,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,7>,<11,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,8>,<11,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,9>,<11,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,10>,<11,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,11>,<11,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,24,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,26,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,26,6><40,26,6><40,0,6><13,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<13,26,6><13,26,40><13,0,40><13,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<13,26,6><40,26,6><40,26,40><13,26,40>pigment { color surfCZ}}
cylinder{<13,26,6>,<13,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,26,6>,<14,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,26,6>,<15,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,6>,<40,26,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,25,6>,<40,25,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,24,6>,<40,24,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,6>,<13,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,25,6>,<13,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,24,6>,<13,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,6>,<13,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,7>,<13,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,9>,<13,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,26,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,26,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,29,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,29,6><40,29,6><40,0,6><16,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<16,29,6><16,29,40><16,0,40><16,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<16,29,6><40,29,6><40,29,40><16,29,40>pigment { color surfCZ}}
cylinder{<16,29,6>,<16,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,29,6>,<17,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,6>,<40,29,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,28,6>,<40,28,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,27,6>,<40,27,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,6>,<40,26,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,6>,<16,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,28,6>,<16,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,27,6>,<16,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,6>,<16,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,6>,<16,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,7>,<16,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,9>,<16,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,31>,<16,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,32>,<16,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,33>,<16,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,35>,<16,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,36>,<16,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,37>,<16,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,38>,<16,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,39>,<16,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,40>,<16,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,29,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,31,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,31,6><40,31,6><40,0,6><18,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<18,31,6><18,31,40><18,0,40><18,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<18,31,6><40,31,6><40,31,40><18,31,40>pigment { color surfCZ}}
cylinder{<18,31,6>,<18,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,31,6>,<19,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,31,6>,<20,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,6>,<40,31,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,30,6>,<40,30,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,29,6>,<40,29,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,6>,<18,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,30,6>,<18,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,29,6>,<18,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,6>,<18,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,7>,<18,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,8>,<18,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,9>,<18,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,10>,<18,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,11>,<18,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,12>,<18,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,13>,<18,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,14>,<18,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,15>,<18,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,16>,<18,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,17>,<18,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,18>,<18,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,19>,<18,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,20>,<18,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,21>,<18,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,22>,<18,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,23>,<18,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,24>,<18,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,25>,<18,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,26>,<18,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,27>,<18,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,28>,<18,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,29>,<18,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,30>,<18,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,31>,<18,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,32>,<18,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,33>,<18,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,34>,<18,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,35>,<18,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,36>,<18,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,37>,<18,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,38>,<18,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,39>,<18,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,40>,<18,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,31,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,31,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,34,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,34,6><40,34,6><40,0,6><21,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<21,34,6><21,34,40><21,0,40><21,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<21,34,6><40,34,6><40,34,40><21,34,40>pigment { color surfCZ}}
cylinder{<21,34,6>,<21,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,34,6>,<22,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,6>,<40,34,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,33,6>,<40,33,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,32,6>,<40,32,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,6>,<40,31,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,6>,<21,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,33,6>,<21,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,32,6>,<21,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,6>,<21,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,6>,<21,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,7>,<21,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,9>,<21,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,10>,<21,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,11>,<21,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,12>,<21,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,13>,<21,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,14>,<21,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,15>,<21,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,16>,<21,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,17>,<21,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,18>,<21,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,19>,<21,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,20>,<21,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,21>,<21,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,22>,<21,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,23>,<21,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,24>,<21,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,25>,<21,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,26>,<21,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,27>,<21,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,28>,<21,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,29>,<21,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,30>,<21,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,31>,<21,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,32>,<21,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,33>,<21,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,34>,<21,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,35>,<21,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,36>,<21,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,37>,<21,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,38>,<21,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,39>,<21,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,40>,<21,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,34,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,36,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,36,6><40,36,6><40,0,6><23,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<23,36,6><23,36,40><23,0,40><23,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<23,36,6><40,36,6><40,36,40><23,36,40>pigment { color surfCZ}}
cylinder{<23,36,6>,<23,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,36,6>,<24,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,36,6>,<25,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,6>,<40,36,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,35,6>,<40,35,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,34,6>,<40,34,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,6>,<23,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,35,6>,<23,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,34,6>,<23,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,6>,<23,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,7>,<23,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,8>,<23,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,9>,<23,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,10>,<23,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,11>,<23,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,12>,<23,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,13>,<23,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,14>,<23,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,15>,<23,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,16>,<23,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,17>,<23,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,18>,<23,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,19>,<23,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,20>,<23,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,21>,<23,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,22>,<23,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,23>,<23,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,24>,<23,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,25>,<23,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,26>,<23,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,27>,<23,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,28>,<23,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,29>,<23,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,30>,<23,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,31>,<23,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,32>,<23,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,33>,<23,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,34>,<23,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,35>,<23,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,36>,<23,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,37>,<23,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,38>,<23,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,39>,<23,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,36,40>,<23,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,36,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,36,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,39,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<26,39,6><40,39,6><40,0,6><26,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<26,39,6><26,39,40><26,0,40><26,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<26,39,6><40,39,6><40,39,40><26,39,40>pigment { color surfCZ}}
cylinder{<26,39,6>,<26,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,39,6>,<27,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,6>,<40,39,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,38,6>,<40,38,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,37,6>,<40,37,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,6>,<40,36,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,6>,<26,39,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,38,6>,<26,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,37,6>,<26,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,36,6>,<26,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,6>,<26,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,7>,<26,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,8>,<26,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,9>,<26,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,10>,<26,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,11>,<26,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,12>,<26,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,13>,<26,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,14>,<26,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,15>,<26,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,16>,<26,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,17>,<26,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,18>,<26,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,19>,<26,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,20>,<26,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,21>,<26,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,22>,<26,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,23>,<26,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,24>,<26,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,25>,<26,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,26>,<26,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,27>,<26,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,28>,<26,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,29>,<26,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,30>,<26,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,31>,<26,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,32>,<26,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,33>,<26,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,34>,<26,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,35>,<26,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,36>,<26,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,37>,<26,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,38>,<26,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,39>,<26,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,39,40>,<26,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<27,39,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,14,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,14,8><40,14,8><40,0,8><0,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<0,14,8><0,14,40><0,0,40><0,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<0,14,8><40,14,8><40,14,40><0,14,40>pigment { color surfCZ}}
cylinder{<0,14,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,8>,<40,14,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,8>,<40,13,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,8>,<40,12,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,8>,<40,11,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,8>,<40,10,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,8>,<40,9,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,8>,<40,8,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,8>,<40,7,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,8>,<40,6,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,8>,<40,5,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,8>,<40,4,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,8>,<40,3,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,8>,<40,2,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,8>,<40,1,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<40,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,8>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,8>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,8>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,8>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,8>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,8>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,8>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,8>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,8>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,8>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,8>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,8>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,8>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,8>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,17,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,17,8><40,17,8><40,0,8><1,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<1,17,8><1,17,40><1,0,40><1,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<1,17,8><40,17,8><40,17,40><1,17,40>pigment { color surfCZ}}
cylinder{<1,17,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,17,8>,<2,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,8>,<40,17,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,16,8>,<40,16,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,8>,<40,15,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,8>,<40,14,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,8>,<1,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,16,8>,<1,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,8>,<1,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,8>,<1,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,9>,<1,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,17,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,19,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,19,8><40,19,8><40,0,8><3,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<3,19,8><3,19,40><3,0,40><3,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<3,19,8><40,19,8><40,19,40><3,19,40>pigment { color surfCZ}}
cylinder{<3,19,8>,<3,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,19,8>,<4,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,8>,<5,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,8>,<40,19,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,18,8>,<40,18,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,17,8>,<40,17,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,8>,<3,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,18,8>,<3,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,17,8>,<3,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,8>,<3,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,9>,<3,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,10>,<3,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,11>,<3,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,19,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,19,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,19,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,22,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,22,8><40,22,8><40,0,8><6,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<6,22,8><6,22,40><6,0,40><6,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<6,22,8><40,22,8><40,22,40><6,22,40>pigment { color surfCZ}}
cylinder{<6,22,8>,<6,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,22,8>,<7,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,8>,<40,22,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,21,8>,<40,21,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,8>,<40,20,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,8>,<40,19,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,8>,<6,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,21,8>,<6,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,8>,<6,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,8>,<6,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,8>,<6,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,9>,<6,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,10>,<6,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,11>,<6,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,22,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,24,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,24,8><40,24,8><40,0,8><8,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<8,24,8><8,24,40><8,0,40><8,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<8,24,8><40,24,8><40,24,40><8,24,40>pigment { color surfCZ}}
cylinder{<8,24,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,24,8>,<9,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,8>,<10,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,8>,<40,24,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,23,8>,<40,23,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,8>,<40,22,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,8>,<8,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,23,8>,<8,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,8>,<8,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,9>,<8,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,24,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,24,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,27,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,27,8><40,27,8><40,0,8><11,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<11,27,8><11,27,40><11,0,40><11,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<11,27,8><40,27,8><40,27,40><11,27,40>pigment { color surfCZ}}
cylinder{<11,27,8>,<11,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,27,8>,<12,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,8>,<40,27,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,26,8>,<40,26,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,25,8>,<40,25,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,8>,<40,24,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,8>,<11,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,26,8>,<11,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,25,8>,<11,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,8>,<11,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,8>,<11,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,9>,<11,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,10>,<11,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,11>,<11,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,27,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,29,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,29,8><40,29,8><40,0,8><13,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<13,29,8><13,29,40><13,0,40><13,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<13,29,8><40,29,8><40,29,40><13,29,40>pigment { color surfCZ}}
cylinder{<13,29,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,29,8>,<14,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,29,8>,<15,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,8>,<40,29,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,28,8>,<40,28,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,8>,<40,27,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,8>,<13,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,28,8>,<13,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,8>,<13,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,9>,<13,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,29,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,29,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,32,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,32,8><40,32,8><40,0,8><16,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<16,32,8><16,32,40><16,0,40><16,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<16,32,8><40,32,8><40,32,40><16,32,40>pigment { color surfCZ}}
cylinder{<16,32,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,32,8>,<17,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,8>,<40,32,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,31,8>,<40,31,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,30,8>,<40,30,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,8>,<40,29,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,8>,<16,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,31,8>,<16,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,30,8>,<16,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,8>,<16,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,9>,<16,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,31>,<16,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,32>,<16,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,33>,<16,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,35>,<16,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,36>,<16,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,37>,<16,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,38>,<16,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,39>,<16,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,40>,<16,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,32,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,34,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,34,8><40,34,8><40,0,8><18,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<18,34,8><18,34,40><18,0,40><18,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<18,34,8><40,34,8><40,34,40><18,34,40>pigment { color surfCZ}}
cylinder{<18,34,8>,<18,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,34,8>,<19,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,34,8>,<20,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,8>,<40,34,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,33,8>,<40,33,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,32,8>,<40,32,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,8>,<18,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,33,8>,<18,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,32,8>,<18,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,8>,<18,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,9>,<18,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,10>,<18,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,11>,<18,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,12>,<18,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,13>,<18,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,14>,<18,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,15>,<18,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,16>,<18,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,17>,<18,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,18>,<18,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,19>,<18,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,20>,<18,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,21>,<18,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,22>,<18,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,23>,<18,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,24>,<18,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,25>,<18,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,26>,<18,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,27>,<18,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,28>,<18,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,29>,<18,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,30>,<18,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,31>,<18,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,32>,<18,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,33>,<18,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,34>,<18,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,35>,<18,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,36>,<18,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,37>,<18,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,38>,<18,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,39>,<18,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,40>,<18,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,34,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,34,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,37,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,37,8><40,37,8><40,0,8><21,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<21,37,8><21,37,40><21,0,40><21,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<21,37,8><40,37,8><40,37,40><21,37,40>pigment { color surfCZ}}
cylinder{<21,37,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,37,8>,<22,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,8>,<40,37,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,36,8>,<40,36,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,35,8>,<40,35,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,8>,<40,34,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,8>,<21,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,36,8>,<21,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,35,8>,<21,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,8>,<21,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,9>,<21,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,10>,<21,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,11>,<21,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,12>,<21,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,13>,<21,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,14>,<21,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,15>,<21,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,16>,<21,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,17>,<21,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,18>,<21,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,19>,<21,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,20>,<21,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,21>,<21,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,22>,<21,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,23>,<21,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,24>,<21,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,25>,<21,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,26>,<21,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,27>,<21,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,28>,<21,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,29>,<21,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,30>,<21,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,31>,<21,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,32>,<21,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,33>,<21,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,34>,<21,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,35>,<21,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,36>,<21,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,37>,<21,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,38>,<21,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,39>,<21,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,37,40>,<21,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,37,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,39,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,39,8><40,39,8><40,0,8><23,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<23,39,8><23,39,40><23,0,40><23,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<23,39,8><40,39,8><40,39,40><23,39,40>pigment { color surfCZ}}
cylinder{<23,39,8>,<23,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,39,8>,<24,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,39,8>,<25,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,8>,<40,39,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,38,8>,<40,38,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,37,8>,<40,37,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,8>,<23,39,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,38,8>,<23,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,37,8>,<23,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,8>,<23,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,9>,<23,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,10>,<23,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,11>,<23,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,12>,<23,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,13>,<23,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,14>,<23,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,15>,<23,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,16>,<23,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,17>,<23,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,18>,<23,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,19>,<23,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,20>,<23,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,21>,<23,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,22>,<23,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,23>,<23,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,24>,<23,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,25>,<23,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,26>,<23,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,27>,<23,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,28>,<23,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,29>,<23,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,30>,<23,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,31>,<23,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,32>,<23,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,33>,<23,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,34>,<23,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,35>,<23,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,36>,<23,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,37>,<23,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,38>,<23,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,39>,<23,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,39,40>,<23,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,39,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,39,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,17,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,17,10><40,17,10><40,0,10><0,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<0,17,10><0,17,40><0,0,40><0,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<0,17,10><40,17,10><40,17,40><0,17,40>pigment { color surfCZ}}
cylinder{<0,17,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,10>,<40,17,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,10>,<40,16,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,10>,<40,15,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,10>,<40,14,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,10>,<40,13,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,10>,<40,12,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,10>,<40,11,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,10>,<40,10,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,10>,<40,9,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,10>,<40,8,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,10>,<40,7,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,10>,<40,6,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,10>,<40,5,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,10>,<40,4,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,10>,<40,3,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,10>,<40,2,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,10>,<40,1,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,10>,<40,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,10>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,10>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,10>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,10>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,10>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,10>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,10>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,10>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,10>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,10>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,10>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,10>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,10>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,10>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,10>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,10>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,10>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,10>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,20,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,20,10><40,20,10><40,0,10><1,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<1,20,10><1,20,40><1,0,40><1,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<1,20,10><40,20,10><40,20,40><1,20,40>pigment { color surfCZ}}
cylinder{<1,20,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,20,10>,<2,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,10>,<40,20,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,19,10>,<40,19,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,18,10>,<40,18,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,10>,<40,17,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,10>,<1,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,19,10>,<1,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,18,10>,<1,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,10>,<1,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,20,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,22,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,22,10><40,22,10><40,0,10><3,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<3,22,10><3,22,40><3,0,40><3,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<3,22,10><40,22,10><40,22,40><3,22,40>pigment { color surfCZ}}
cylinder{<3,22,10>,<3,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,22,10>,<4,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,22,10>,<5,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,10>,<40,22,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,21,10>,<40,21,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,20,10>,<40,20,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,10>,<3,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,21,10>,<3,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,20,10>,<3,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,10>,<3,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,11>,<3,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,22,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,22,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,25,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,25,10><40,25,10><40,0,10><6,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<6,25,10><6,25,40><6,0,40><6,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<6,25,10><40,25,10><40,25,40><6,25,40>pigment { color surfCZ}}
cylinder{<6,25,10>,<6,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,25,10>,<7,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,10>,<40,25,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,24,10>,<40,24,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,23,10>,<40,23,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,10>,<40,22,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,10>,<6,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,24,10>,<6,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,23,10>,<6,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,10>,<6,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,10>,<6,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,11>,<6,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,25,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,27,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,27,10><40,27,10><40,0,10><8,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<8,27,10><8,27,40><8,0,40><8,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<8,27,10><40,27,10><40,27,40><8,27,40>pigment { color surfCZ}}
cylinder{<8,27,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,27,10>,<9,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,27,10>,<10,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,10>,<40,27,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,26,10>,<40,26,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,25,10>,<40,25,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,10>,<8,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,26,10>,<8,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,25,10>,<8,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,27,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,27,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,30,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,30,10><40,30,10><40,0,10><11,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<11,30,10><11,30,40><11,0,40><11,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<11,30,10><40,30,10><40,30,40><11,30,40>pigment { color surfCZ}}
cylinder{<11,30,10>,<11,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,30,10>,<12,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,10>,<40,30,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,29,10>,<40,29,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,28,10>,<40,28,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,10>,<40,27,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,10>,<11,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,29,10>,<11,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,28,10>,<11,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,10>,<11,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,10>,<11,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,11>,<11,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,30,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,32,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,32,10><40,32,10><40,0,10><13,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<13,32,10><13,32,40><13,0,40><13,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<13,32,10><40,32,10><40,32,40><13,32,40>pigment { color surfCZ}}
cylinder{<13,32,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,32,10>,<14,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,32,10>,<15,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,10>,<40,32,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,31,10>,<40,31,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,30,10>,<40,30,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,10>,<13,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,31,10>,<13,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,30,10>,<13,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,32,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,32,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,35,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,35,10><40,35,10><40,0,10><16,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<16,35,10><16,35,40><16,0,40><16,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<16,35,10><40,35,10><40,35,40><16,35,40>pigment { color surfCZ}}
cylinder{<16,35,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,35,10>,<17,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,10>,<40,35,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,34,10>,<40,34,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,33,10>,<40,33,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,10>,<40,32,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,10>,<16,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,34,10>,<16,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,33,10>,<16,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,32,10>,<16,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,31>,<16,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,32>,<16,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,33>,<16,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,35>,<16,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,36>,<16,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,37>,<16,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,38>,<16,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,39>,<16,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,40>,<16,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,35,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,37,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,37,10><40,37,10><40,0,10><18,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<18,37,10><18,37,40><18,0,40><18,0,10>pigment { color surfCXY}}
polygon { 
 4, 
<18,37,10><40,37,10><40,37,40><18,37,40>pigment { color surfCZ}}
cylinder{<18,37,10>,<18,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,37,10>,<19,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,37,10>,<20,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,10>,<40,37,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,36,10>,<40,36,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,35,10>,<40,35,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,10>,<18,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,36,10>,<18,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,35,10>,<18,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,10>,<18,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,11>,<18,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,12>,<18,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,13>,<18,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,14>,<18,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,15>,<18,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,16>,<18,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,17>,<18,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,18>,<18,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,19>,<18,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,20>,<18,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,21>,<18,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,22>,<18,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,23>,<18,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,24>,<18,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,25>,<18,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,26>,<18,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,27>,<18,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,28>,<18,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,29>,<18,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,30>,<18,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,31>,<18,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,32>,<18,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,33>,<18,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,34>,<18,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,35>,<18,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,36>,<18,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,37>,<18,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,38>,<18,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,39>,<18,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,40>,<18,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,37,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,37,10>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,20,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,20,12><40,20,12><40,0,12><0,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<0,20,12><0,20,40><0,0,40><0,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<0,20,12><40,20,12><40,20,40><0,20,40>pigment { color surfCZ}}
cylinder{<0,20,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,12>,<40,20,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,12>,<40,19,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,12>,<40,18,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,12>,<40,17,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,12>,<40,16,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,12>,<40,15,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,12>,<40,14,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,12>,<40,13,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,12>,<40,12,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,12>,<40,11,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,12>,<40,10,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,12>,<40,9,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,12>,<40,8,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,12>,<40,7,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,12>,<40,6,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,12>,<40,5,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,12>,<40,4,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,12>,<40,3,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,12>,<40,2,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,12>,<40,1,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<40,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,12>,<0,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,12>,<0,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,12>,<0,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,12>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,12>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,12>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,12>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,12>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,12>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,12>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,12>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,12>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,12>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,12>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,12>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,12>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,12>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,12>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,12>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,12>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,23,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,23,12><40,23,12><40,0,12><1,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<1,23,12><1,23,40><1,0,40><1,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<1,23,12><40,23,12><40,23,40><1,23,40>pigment { color surfCZ}}
cylinder{<1,23,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,23,12>,<2,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,12>,<40,23,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,22,12>,<40,22,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,21,12>,<40,21,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,12>,<40,20,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,12>,<1,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,22,12>,<1,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,21,12>,<1,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,12>,<1,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,23,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,25,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,25,12><40,25,12><40,0,12><3,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<3,25,12><3,25,40><3,0,40><3,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<3,25,12><40,25,12><40,25,40><3,25,40>pigment { color surfCZ}}
cylinder{<3,25,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,25,12>,<4,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,25,12>,<5,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,12>,<40,25,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,24,12>,<40,24,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,23,12>,<40,23,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,12>,<3,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,24,12>,<3,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,23,12>,<3,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,25,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,25,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,28,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,28,12><40,28,12><40,0,12><6,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<6,28,12><6,28,40><6,0,40><6,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<6,28,12><40,28,12><40,28,40><6,28,40>pigment { color surfCZ}}
cylinder{<6,28,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,28,12>,<7,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,12>,<40,28,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,27,12>,<40,27,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,26,12>,<40,26,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,12>,<40,25,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,12>,<6,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,27,12>,<6,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,26,12>,<6,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,12>,<6,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,28,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,30,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,30,12><40,30,12><40,0,12><8,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<8,30,12><8,30,40><8,0,40><8,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<8,30,12><40,30,12><40,30,40><8,30,40>pigment { color surfCZ}}
cylinder{<8,30,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,30,12>,<9,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,30,12>,<10,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,12>,<40,30,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,29,12>,<40,29,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,28,12>,<40,28,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,12>,<8,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,29,12>,<8,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,28,12>,<8,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,30,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,30,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,30,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,33,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,33,12><40,33,12><40,0,12><11,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<11,33,12><11,33,40><11,0,40><11,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<11,33,12><40,33,12><40,33,40><11,33,40>pigment { color surfCZ}}
cylinder{<11,33,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,33,12>,<12,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,12>,<40,33,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,32,12>,<40,32,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,31,12>,<40,31,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,12>,<40,30,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,12>,<11,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,32,12>,<11,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,31,12>,<11,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,12>,<11,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,33,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,35,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,35,12><40,35,12><40,0,12><13,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<13,35,12><13,35,40><13,0,40><13,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<13,35,12><40,35,12><40,35,40><13,35,40>pigment { color surfCZ}}
cylinder{<13,35,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,35,12>,<14,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,35,12>,<15,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,12>,<40,35,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,34,12>,<40,34,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,33,12>,<40,33,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,12>,<13,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,34,12>,<13,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,33,12>,<13,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,35,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,35,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,35,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,38,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,38,12><40,38,12><40,0,12><16,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<16,38,12><16,38,40><16,0,40><16,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<16,38,12><40,38,12><40,38,40><16,38,40>pigment { color surfCZ}}
cylinder{<16,38,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,38,12>,<17,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,12>,<40,38,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,37,12>,<40,37,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,36,12>,<40,36,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,12>,<40,35,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,12>,<16,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,37,12>,<16,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,36,12>,<16,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,35,12>,<16,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,31>,<16,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,32>,<16,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,33>,<16,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,35>,<16,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,36>,<16,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,37>,<16,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,38>,<16,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,39>,<16,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,40>,<16,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,38,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,23,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,23,14><40,23,14><40,0,14><0,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<0,23,14><0,23,40><0,0,40><0,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<0,23,14><40,23,14><40,23,40><0,23,40>pigment { color surfCZ}}
cylinder{<0,23,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,14>,<40,23,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,14>,<40,22,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,14>,<40,21,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,14>,<40,20,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,14>,<40,19,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,14>,<40,18,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,14>,<40,17,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,14>,<40,16,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,14>,<40,15,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,14>,<40,14,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,14>,<40,13,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,14>,<40,12,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,14>,<40,11,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,14>,<40,10,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,14>,<40,9,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,14>,<40,8,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,14>,<40,7,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,14>,<40,6,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,14>,<40,5,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,14>,<40,4,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,14>,<40,3,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,14>,<40,2,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,14>,<40,1,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,14>,<40,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,14>,<0,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,14>,<0,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,14>,<0,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,14>,<0,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,14>,<0,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,14>,<0,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,14>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,14>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,14>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,14>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,14>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,14>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,14>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,14>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,14>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,14>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,14>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,14>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,14>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,14>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,14>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,14>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,14>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,14>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,26,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,26,14><40,26,14><40,0,14><1,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<1,26,14><1,26,40><1,0,40><1,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<1,26,14><40,26,14><40,26,40><1,26,40>pigment { color surfCZ}}
cylinder{<1,26,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,26,14>,<2,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,14>,<40,26,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,25,14>,<40,25,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,24,14>,<40,24,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,14>,<40,23,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,14>,<1,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,25,14>,<1,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,24,14>,<1,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,14>,<1,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,26,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,28,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,28,14><40,28,14><40,0,14><3,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<3,28,14><3,28,40><3,0,40><3,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<3,28,14><40,28,14><40,28,40><3,28,40>pigment { color surfCZ}}
cylinder{<3,28,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,28,14>,<4,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,28,14>,<5,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,14>,<40,28,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,27,14>,<40,27,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,26,14>,<40,26,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,14>,<3,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,27,14>,<3,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,26,14>,<3,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,28,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,28,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,28,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,31,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,31,14><40,31,14><40,0,14><6,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<6,31,14><6,31,40><6,0,40><6,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<6,31,14><40,31,14><40,31,40><6,31,40>pigment { color surfCZ}}
cylinder{<6,31,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,31,14>,<7,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,14>,<40,31,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,30,14>,<40,30,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,29,14>,<40,29,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,14>,<40,28,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,14>,<6,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,30,14>,<6,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,29,14>,<6,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,14>,<6,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,31,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,33,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,33,14><40,33,14><40,0,14><8,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<8,33,14><8,33,40><8,0,40><8,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<8,33,14><40,33,14><40,33,40><8,33,40>pigment { color surfCZ}}
cylinder{<8,33,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,33,14>,<9,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,33,14>,<10,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,14>,<40,33,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,32,14>,<40,32,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,31,14>,<40,31,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,14>,<8,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,32,14>,<8,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,31,14>,<8,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,33,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,33,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,33,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,36,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,36,14><40,36,14><40,0,14><11,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<11,36,14><11,36,40><11,0,40><11,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<11,36,14><40,36,14><40,36,40><11,36,40>pigment { color surfCZ}}
cylinder{<11,36,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,36,14>,<12,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,14>,<40,36,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,35,14>,<40,35,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,34,14>,<40,34,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,14>,<40,33,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,14>,<11,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,35,14>,<11,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,34,14>,<11,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,14>,<11,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,36,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,38,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,38,14><40,38,14><40,0,14><13,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<13,38,14><13,38,40><13,0,40><13,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<13,38,14><40,38,14><40,38,40><13,38,40>pigment { color surfCZ}}
cylinder{<13,38,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,38,14>,<14,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,38,14>,<15,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,14>,<40,38,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,37,14>,<40,37,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,36,14>,<40,36,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,14>,<13,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,37,14>,<13,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,36,14>,<13,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,31>,<13,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,32>,<13,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,33>,<13,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,35>,<13,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,36>,<13,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,37>,<13,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,39>,<13,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,38,40>,<13,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,38,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,38,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,26,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,26,16><40,26,16><40,0,16><0,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<0,26,16><0,26,40><0,0,40><0,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<0,26,16><40,26,16><40,26,40><0,26,40>pigment { color surfCZ}}
cylinder{<0,26,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,16>,<40,26,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,16>,<40,25,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,16>,<40,24,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,16>,<40,23,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,16>,<40,22,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,16>,<40,21,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,16>,<40,20,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,16>,<40,19,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,16>,<40,18,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,16>,<40,17,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,16>,<40,16,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,16>,<40,15,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,16>,<40,14,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,16>,<40,13,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,16>,<40,12,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,16>,<40,11,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,16>,<40,10,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,16>,<40,9,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,16>,<40,8,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,16>,<40,7,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,16>,<40,6,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,16>,<40,5,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,16>,<40,4,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,16>,<40,3,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,16>,<40,2,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,16>,<40,1,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,16>,<40,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,16>,<0,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,16>,<0,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,16>,<0,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,16>,<0,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,16>,<0,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,16>,<0,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,16>,<0,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,16>,<0,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,16>,<0,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,16>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,16>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,16>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,16>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,16>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,16>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,16>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,16>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,16>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,16>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,16>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,16>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,16>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,16>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,16>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,16>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,16>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,16>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,29,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,29,16><40,29,16><40,0,16><1,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<1,29,16><1,29,40><1,0,40><1,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<1,29,16><40,29,16><40,29,40><1,29,40>pigment { color surfCZ}}
cylinder{<1,29,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,29,16>,<2,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,16>,<40,29,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,28,16>,<40,28,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,27,16>,<40,27,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,16>,<40,26,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,16>,<1,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,28,16>,<1,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,27,16>,<1,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,26,16>,<1,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,29,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,31,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,31,16><40,31,16><40,0,16><3,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<3,31,16><3,31,40><3,0,40><3,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<3,31,16><40,31,16><40,31,40><3,31,40>pigment { color surfCZ}}
cylinder{<3,31,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,31,16>,<4,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,31,16>,<5,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,16>,<40,31,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,30,16>,<40,30,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,29,16>,<40,29,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,16>,<3,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,30,16>,<3,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,29,16>,<3,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,16>,<3,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,31,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,31,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,31,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,34,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,34,16><40,34,16><40,0,16><6,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<6,34,16><6,34,40><6,0,40><6,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<6,34,16><40,34,16><40,34,40><6,34,40>pigment { color surfCZ}}
cylinder{<6,34,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,34,16>,<7,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,16>,<40,34,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,33,16>,<40,33,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,32,16>,<40,32,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,16>,<40,31,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,16>,<6,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,33,16>,<6,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,32,16>,<6,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,16>,<6,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,34,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,36,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,36,16><40,36,16><40,0,16><8,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<8,36,16><8,36,40><8,0,40><8,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<8,36,16><40,36,16><40,36,40><8,36,40>pigment { color surfCZ}}
cylinder{<8,36,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,36,16>,<9,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,36,16>,<10,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,16>,<40,36,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,35,16>,<40,35,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,34,16>,<40,34,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,16>,<8,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,35,16>,<8,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,34,16>,<8,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,36,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,36,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,36,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,39,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,39,16><40,39,16><40,0,16><11,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<11,39,16><11,39,40><11,0,40><11,0,16>pigment { color surfCXY}}
polygon { 
 4, 
<11,39,16><40,39,16><40,39,40><11,39,40>pigment { color surfCZ}}
cylinder{<11,39,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,39,16>,<12,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,16>,<40,39,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,38,16>,<40,38,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,37,16>,<40,37,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,16>,<40,36,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,16>,<11,39,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,38,16>,<11,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,37,16>,<11,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,36,16>,<11,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,16>,<11,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,18>,<11,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,20>,<11,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,22>,<11,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,23>,<11,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,24>,<11,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,27>,<11,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,28>,<11,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,29>,<11,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,31>,<11,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,32>,<11,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,33>,<11,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,35>,<11,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,36>,<11,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,37>,<11,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,39>,<11,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,39,40>,<11,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,39,16>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,29,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,29,18><40,29,18><40,0,18><0,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<0,29,18><0,29,40><0,0,40><0,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<0,29,18><40,29,18><40,29,40><0,29,40>pigment { color surfCZ}}
cylinder{<0,29,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,18>,<40,29,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,18>,<40,28,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,18>,<40,27,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,18>,<40,26,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,18>,<40,25,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,18>,<40,24,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,18>,<40,23,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,18>,<40,22,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,18>,<40,21,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,18>,<40,20,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,18>,<40,19,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,18>,<40,18,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,18>,<40,17,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,18>,<40,16,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,18>,<40,15,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,18>,<40,14,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,18>,<40,13,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,18>,<40,12,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,18>,<40,11,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,18>,<40,10,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,18>,<40,9,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,18>,<40,8,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,18>,<40,7,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,18>,<40,6,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,18>,<40,5,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,18>,<40,4,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,18>,<40,3,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,18>,<40,2,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,18>,<40,1,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,18>,<40,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,18>,<0,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,18>,<0,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,18>,<0,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,18>,<0,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,18>,<0,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,18>,<0,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,18>,<0,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,18>,<0,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,18>,<0,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,18>,<0,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,18>,<0,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,18>,<0,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,18>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,18>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,18>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,18>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,18>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,18>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,18>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,18>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,18>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,18>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,18>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,18>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,18>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,18>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,18>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,18>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,18>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,18>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,32,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,32,18><40,32,18><40,0,18><1,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<1,32,18><1,32,40><1,0,40><1,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<1,32,18><40,32,18><40,32,40><1,32,40>pigment { color surfCZ}}
cylinder{<1,32,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,32,18>,<2,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,18>,<40,32,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,31,18>,<40,31,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,30,18>,<40,30,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,18>,<40,29,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,18>,<1,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,31,18>,<1,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,30,18>,<1,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,29,18>,<1,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,32,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,34,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,34,18><40,34,18><40,0,18><3,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<3,34,18><3,34,40><3,0,40><3,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<3,34,18><40,34,18><40,34,40><3,34,40>pigment { color surfCZ}}
cylinder{<3,34,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,34,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,34,18>,<5,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,18>,<40,34,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,33,18>,<40,33,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,32,18>,<40,32,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,18>,<3,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,33,18>,<3,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,32,18>,<3,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,18>,<3,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,34,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,34,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,37,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,37,18><40,37,18><40,0,18><6,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<6,37,18><6,37,40><6,0,40><6,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<6,37,18><40,37,18><40,37,40><6,37,40>pigment { color surfCZ}}
cylinder{<6,37,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,37,18>,<7,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,18>,<40,37,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,36,18>,<40,36,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,35,18>,<40,35,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,18>,<40,34,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,18>,<6,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,36,18>,<6,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,35,18>,<6,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,18>,<6,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,31>,<6,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,32>,<6,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,33>,<6,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,35>,<6,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,36>,<6,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,37>,<6,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,39>,<6,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,40>,<6,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,37,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,39,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,39,18><40,39,18><40,0,18><8,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<8,39,18><8,39,40><8,0,40><8,0,18>pigment { color surfCXY}}
polygon { 
 4, 
<8,39,18><40,39,18><40,39,40><8,39,40>pigment { color surfCZ}}
cylinder{<8,39,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,39,18>,<9,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,39,18>,<10,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,18>,<40,39,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,38,18>,<40,38,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,37,18>,<40,37,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,18>,<8,39,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,38,18>,<8,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,37,18>,<8,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,31>,<8,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,32>,<8,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,33>,<8,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,35>,<8,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,36>,<8,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,37>,<8,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,39>,<8,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,39,40>,<8,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,39,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,39,18>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,32,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,32,20><40,32,20><40,0,20><0,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<0,32,20><0,32,40><0,0,40><0,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<0,32,20><40,32,20><40,32,40><0,32,40>pigment { color surfCZ}}
cylinder{<0,32,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,20>,<40,32,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,20>,<40,31,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,20>,<40,30,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,20>,<40,29,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,20>,<40,28,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,20>,<40,27,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,20>,<40,26,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,20>,<40,25,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,20>,<40,24,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,20>,<40,23,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,20>,<40,22,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,20>,<40,21,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,20>,<40,20,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,20>,<40,19,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,20>,<40,18,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,20>,<40,17,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,20>,<40,16,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,20>,<40,15,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,20>,<40,14,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,20>,<40,13,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,20>,<40,12,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,20>,<40,11,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,20>,<40,10,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,20>,<40,9,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,20>,<40,8,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,20>,<40,7,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,20>,<40,6,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,20>,<40,5,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,20>,<40,4,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,20>,<40,3,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,20>,<40,2,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,20>,<40,1,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<40,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,20>,<0,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,20>,<0,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,20>,<0,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,20>,<0,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,20>,<0,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,20>,<0,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,20>,<0,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,20>,<0,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,20>,<0,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,20>,<0,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,20>,<0,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,20>,<0,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,20>,<0,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,20>,<0,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,20>,<0,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,20>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,20>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,20>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,20>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,20>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,20>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,20>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,20>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,20>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,20>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,20>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,20>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,20>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,20>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,20>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,20>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,20>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,35,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,35,20><40,35,20><40,0,20><1,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<1,35,20><1,35,40><1,0,40><1,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<1,35,20><40,35,20><40,35,40><1,35,40>pigment { color surfCZ}}
cylinder{<1,35,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,35,20>,<2,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,20>,<40,35,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,34,20>,<40,34,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,33,20>,<40,33,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,20>,<40,32,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,20>,<1,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,34,20>,<1,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,33,20>,<1,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,20>,<1,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,35,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,37,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,37,20><40,37,20><40,0,20><3,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<3,37,20><3,37,40><3,0,40><3,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<3,37,20><40,37,20><40,37,40><3,37,40>pigment { color surfCZ}}
cylinder{<3,37,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,37,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,37,20>,<5,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,20>,<40,37,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,36,20>,<40,36,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,35,20>,<40,35,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,20>,<3,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,36,20>,<3,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,35,20>,<3,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,22>,<3,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,23>,<3,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,24>,<3,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,27>,<3,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,28>,<3,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,29>,<3,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,31>,<3,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,32>,<3,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,33>,<3,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,35>,<3,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,36>,<3,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,37>,<3,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,39>,<3,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,40>,<3,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,37,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,37,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,35,22>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,35,22><40,35,22><40,0,22><0,0,22>pigment { color surfCXY}}
polygon { 
 4, 
<0,35,22><0,35,40><0,0,40><0,0,22>pigment { color surfCXY}}
polygon { 
 4, 
<0,35,22><40,35,22><40,35,40><0,35,40>pigment { color surfCZ}}
cylinder{<0,35,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,22>,<40,35,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,22>,<40,34,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,22>,<40,33,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,22>,<40,32,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,22>,<40,31,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,22>,<40,30,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,22>,<40,29,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,22>,<40,28,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,22>,<40,27,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,22>,<40,26,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,22>,<40,25,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,22>,<40,24,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,22>,<40,23,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,22>,<40,22,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,22>,<40,21,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,22>,<40,20,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,22>,<40,19,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,22>,<40,18,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,22>,<40,17,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,22>,<40,16,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,22>,<40,15,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,22>,<40,14,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,22>,<40,13,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,22>,<40,12,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,22>,<40,11,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,22>,<40,10,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,22>,<40,9,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,22>,<40,8,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,22>,<40,7,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,22>,<40,6,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,22>,<40,5,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,22>,<40,4,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,22>,<40,3,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,22>,<40,2,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,22>,<40,1,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,22>,<40,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,22>,<0,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,22>,<0,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,22>,<0,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,22>,<0,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,22>,<0,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,22>,<0,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,22>,<0,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,22>,<0,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,22>,<0,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,22>,<0,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,22>,<0,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,22>,<0,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,22>,<0,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,22>,<0,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,22>,<0,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,22>,<0,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,22>,<0,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,22>,<0,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,22>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,22>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,22>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,22>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,22>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,22>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,22>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,22>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,22>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,22>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,22>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,22>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,22>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,22>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,22>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,22>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,22>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,22>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,38,22>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,38,22><40,38,22><40,0,22><1,0,22>pigment { color surfCXY}}
polygon { 
 4, 
<1,38,22><1,38,40><1,0,40><1,0,22>pigment { color surfCXY}}
polygon { 
 4, 
<1,38,22><40,38,22><40,38,40><1,38,40>pigment { color surfCZ}}
cylinder{<1,38,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,38,22>,<2,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,22>,<40,38,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,37,22>,<40,37,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,36,22>,<40,36,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,22>,<40,35,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,22>,<1,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,37,22>,<1,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,36,22>,<1,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,22>,<1,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,31>,<1,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,32>,<1,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,33>,<1,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,35>,<1,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,36>,<1,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,37>,<1,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,39>,<1,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,38,40>,<1,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,38,22>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,38,24>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,38,24><40,38,24><40,0,24><0,0,24>pigment { color surfCXY}}
polygon { 
 4, 
<0,38,24><0,38,40><0,0,40><0,0,24>pigment { color surfCXY}}
polygon { 
 4, 
<0,38,24><40,38,24><40,38,40><0,38,40>pigment { color surfCZ}}
cylinder{<0,38,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,24>,<40,38,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,37,24>,<40,37,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,36,24>,<40,36,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,24>,<40,35,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,24>,<40,34,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,24>,<40,33,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,24>,<40,32,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,24>,<40,31,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,24>,<40,30,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,24>,<40,29,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,24>,<40,28,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,24>,<40,27,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,24>,<40,26,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,24>,<40,25,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,24>,<40,24,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,24>,<40,23,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,24>,<40,22,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,24>,<40,21,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,24>,<40,20,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,24>,<40,19,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,24>,<40,18,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,24>,<40,17,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,24>,<40,16,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,24>,<40,15,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,24>,<40,14,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,24>,<40,13,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,24>,<40,12,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,24>,<40,11,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,24>,<40,10,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,24>,<40,9,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,24>,<40,8,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,24>,<40,7,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,24>,<40,6,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,24>,<40,5,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,24>,<40,4,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,24>,<40,3,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,24>,<40,2,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,24>,<40,1,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,24>,<40,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,24>,<0,38,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,37,24>,<0,37,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,36,24>,<0,36,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,24>,<0,35,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,24>,<0,34,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,24>,<0,33,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,24>,<0,32,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,24>,<0,31,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,24>,<0,30,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,24>,<0,29,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,24>,<0,28,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,24>,<0,27,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,24>,<0,26,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,24>,<0,25,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,24>,<0,24,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,24>,<0,23,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,24>,<0,22,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,24>,<0,21,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,24>,<0,20,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,24>,<0,19,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,24>,<0,18,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,24>,<0,17,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,24>,<0,16,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,24>,<0,15,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,24>,<0,14,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,24>,<0,13,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,24>,<0,12,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,24>,<0,11,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,24>,<0,10,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,24>,<0,9,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,24>,<0,8,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,24>,<0,7,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,24>,<0,6,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,24>,<0,5,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,24>,<0,4,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,24>,<0,3,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,24>,<0,2,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,24>,<0,1,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,24>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,31>,<0,0,31>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,32>,<0,0,32>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,33>,<0,0,33>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,35>,<0,0,35>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,36>,<0,0,36>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,37>,<0,0,37>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,39>,<0,0,39>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,40>,<0,0,40>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
