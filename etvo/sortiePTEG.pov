 #include "colors.inc" 
 #include "shapes.inc" 
 #include "math.inc" 
 #include "functions.inc" 
 #declare surfCXY = color rgb<0.6,0.6,0.6>;
 #declare surfCZ = color rgb<0.6,0.6,0.6>;
 #declare mainColor = color rgb<0.8,0.3,0.3>;
 #declare axisColor = color rgb<0,0,0>;
 camera {location <-20,20,-20>
look_at <0,10,0>}
light_source{<-100,100,-80> rgb<1,1,1>*2}
background{rgb<0.9,0.9,0.9>}
text { 
 ttf "timrom.ttf" "E-shift" 0.1, 0
 pigment { rgb<0.1,0.1,0.1> }
 rotate +90*y
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
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 5*z scale 1 } 
text {ttf "timrom.ttf" "10 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 10*z scale 1 } 
text {ttf "timrom.ttf" "15 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 15*z scale 1 } 
text {ttf "timrom.ttf" "20 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 20*z scale 1 } 
text {ttf "timrom.ttf" "25 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 25*z scale 1 } 
text {ttf "timrom.ttf" "30 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 30*z scale 1 } 
text {ttf "timrom.ttf" "35 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 35*z scale 1 } 
text {ttf "timrom.ttf" "40 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 40*z scale 1 } 
text {ttf "timrom.ttf" "45 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*y  translate 45*z scale 1 } 
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 5*x scale 1 }
text {ttf "timrom.ttf" "10 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 10*x scale 1 }
text {ttf "timrom.ttf" "15 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 15*x scale 1 }
text {ttf "timrom.ttf" "20 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 20*x scale 1 }
text {ttf "timrom.ttf" "25 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 25*x scale 1 }
text {ttf "timrom.ttf" "30 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 30*x scale 1 }
text {ttf "timrom.ttf" "35 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 35*x scale 1 }
text {ttf "timrom.ttf" "40 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 40*x scale 1 }
text {ttf "timrom.ttf" "45 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 45*x scale 1 }
cylinder{<0,0,0>,<50,0,0>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,50>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,50>,<0,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,0>,<1,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,50>,<1,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,0>,<2,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,50>,<2,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,0>,<3,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,50>,<3,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,0>,<4,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,50>,<4,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,0>,<5,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,50>,<5,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,0>,<6,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,50>,<6,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,0>,<7,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,50>,<7,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,0>,<8,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,50>,<8,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,0>,<9,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,50>,<9,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,0>,<10,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,50>,<10,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,0,0>,<11,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,0,50>,<11,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,0,0>,<12,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,0,50>,<12,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,0,0>,<13,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,0,50>,<13,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,0,0>,<14,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,0,50>,<14,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,0>,<15,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,50>,<15,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,0,0>,<16,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,0,50>,<16,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,0,0>,<17,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,0,50>,<17,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,0,0>,<18,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,0,50>,<18,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,0,0>,<19,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,0,50>,<19,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,0>,<20,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,50>,<20,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,0,0>,<21,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,0,50>,<21,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,0,0>,<22,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,0,50>,<22,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,0,0>,<23,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,0,50>,<23,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,0,0>,<24,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,0,50>,<24,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,0>,<25,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,50>,<25,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,0,0>,<26,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,0,50>,<26,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,0,0>,<27,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,0,50>,<27,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,0,0>,<28,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,0,50>,<28,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,0,0>,<29,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,0,50>,<29,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,0>,<30,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,50>,<30,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,0,0>,<31,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,0,50>,<31,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,0,0>,<32,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,0,50>,<32,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,0,0>,<33,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,0,50>,<33,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,0,0>,<34,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,0,50>,<34,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,0,0>,<35,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,0,50>,<35,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,0,0>,<36,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,0,50>,<36,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,0,0>,<37,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,0,50>,<37,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,0,0>,<38,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,0,50>,<38,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,0,0>,<39,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,0,50>,<39,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,0>,<40,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,50>,<40,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,0,0>,<41,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,0,50>,<41,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,0,0>,<42,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,0,50>,<42,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<43,0,0>,<43,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<43,0,50>,<43,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<44,0,0>,<44,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<44,0,50>,<44,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<45,0,0>,<45,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<45,0,50>,<45,50,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<46,0,0>,<46,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<46,0,50>,<46,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<47,0,0>,<47,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<47,0,50>,<47,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<48,0,0>,<48,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<48,0,50>,<48,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<49,0,0>,<49,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<49,0,50>,<49,50,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<50,0,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,0>,<50,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,1>,<50,0,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,1>,<50,50,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<50,0,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,2>,<50,50,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,3>,<50,0,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,3>,<50,50,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<50,0,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,4>,<50,50,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<50,0,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,5>,<50,50,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<50,0,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,6>,<50,50,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,7>,<50,0,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,7>,<50,50,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<50,0,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,8>,<50,50,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,9>,<50,0,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,9>,<50,50,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,10>,<50,0,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,10>,<50,50,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,11>,<50,0,11>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,11>,<50,50,11>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<50,0,12>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,12>,<50,50,12>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,13>,<50,0,13>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,13>,<50,50,13>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,14>,<50,0,14>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,14>,<50,50,14>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,15>,<50,0,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,15>,<50,50,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,16>,<50,0,16>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,16>,<50,50,16>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,17>,<50,0,17>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,17>,<50,50,17>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,18>,<50,0,18>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,18>,<50,50,18>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,19>,<50,0,19>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,19>,<50,50,19>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<50,0,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,20>,<50,50,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,21>,<50,0,21>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,21>,<50,50,21>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,22>,<50,0,22>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,22>,<50,50,22>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,23>,<50,0,23>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,23>,<50,50,23>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,24>,<50,0,24>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,24>,<50,50,24>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,25>,<50,0,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,25>,<50,50,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,26>,<50,0,26>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,26>,<50,50,26>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,27>,<50,0,27>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,27>,<50,50,27>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,28>,<50,0,28>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,28>,<50,50,28>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,29>,<50,0,29>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,29>,<50,50,29>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,30>,<50,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,30>,<50,50,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,31>,<50,0,31>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,31>,<50,50,31>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,32>,<50,0,32>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,32>,<50,50,32>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,33>,<50,0,33>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,33>,<50,50,33>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,34>,<50,0,34>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,34>,<50,50,34>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,35>,<50,0,35>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,35>,<50,50,35>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,36>,<50,0,36>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,36>,<50,50,36>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,37>,<50,0,37>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,37>,<50,50,37>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,38>,<50,0,38>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,38>,<50,50,38>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,39>,<50,0,39>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,39>,<50,50,39>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,40>,<50,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,40>,<50,50,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,41>,<50,0,41>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,41>,<50,50,41>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,42>,<50,0,42>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,42>,<50,50,42>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,43>,<50,0,43>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,43>,<50,50,43>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,44>,<50,0,44>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,44>,<50,50,44>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,45>,<50,0,45>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,45>,<50,50,45>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,46>,<50,0,46>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,46>,<50,50,46>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,47>,<50,0,47>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,47>,<50,50,47>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,48>,<50,0,48>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,48>,<50,50,48>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,49>,<50,0,49>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,49>,<50,50,49>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,50>,<50,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,0,0>,<50,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,50>,<50,1,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,1,0>,<50,1,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,50>,<50,2,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,2,0>,<50,2,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,50>,<50,3,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,3,0>,<50,3,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,50>,<50,4,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,4,0>,<50,4,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,50>,<50,5,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,5,0>,<50,5,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,50>,<50,6,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,6,0>,<50,6,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,50>,<50,7,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,7,0>,<50,7,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,50>,<50,8,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,8,0>,<50,8,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,50>,<50,9,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,9,0>,<50,9,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,50>,<50,10,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,10,0>,<50,10,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,50>,<50,11,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,11,0>,<50,11,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,50>,<50,12,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,12,0>,<50,12,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,50>,<50,13,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,13,0>,<50,13,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,50>,<50,14,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,14,0>,<50,14,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,50>,<50,15,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,15,0>,<50,15,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,50>,<50,16,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,16,0>,<50,16,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,50>,<50,17,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,17,0>,<50,17,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,50>,<50,18,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,18,0>,<50,18,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,50>,<50,19,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,19,0>,<50,19,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,50>,<50,20,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,20,0>,<50,20,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,50>,<50,21,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,21,0>,<50,21,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,50>,<50,22,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,22,0>,<50,22,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,50>,<50,23,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,23,0>,<50,23,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,50>,<50,24,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,24,0>,<50,24,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,50>,<50,25,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,25,0>,<50,25,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,50>,<50,26,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,26,0>,<50,26,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,50>,<50,27,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,27,0>,<50,27,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,50>,<50,28,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,28,0>,<50,28,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,50>,<50,29,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,29,0>,<50,29,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,50>,<50,30,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,30,0>,<50,30,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,50>,<50,31,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,31,0>,<50,31,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,50>,<50,32,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,32,0>,<50,32,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,50>,<50,33,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,33,0>,<50,33,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,50>,<50,34,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,34,0>,<50,34,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,50>,<50,35,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,35,0>,<50,35,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,36,50>,<50,36,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,36,0>,<50,36,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,37,50>,<50,37,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,37,0>,<50,37,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,50>,<50,38,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,38,0>,<50,38,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,39,50>,<50,39,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,39,0>,<50,39,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,40,50>,<50,40,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,40,0>,<50,40,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,41,50>,<50,41,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,41,0>,<50,41,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,42,50>,<50,42,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,42,0>,<50,42,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,43,50>,<50,43,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,43,0>,<50,43,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,44,50>,<50,44,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,44,0>,<50,44,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,45,50>,<50,45,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,45,0>,<50,45,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,46,50>,<50,46,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,46,0>,<50,46,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,47,50>,<50,47,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,47,0>,<50,47,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,48,50>,<50,48,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,48,0>,<50,48,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,49,50>,<50,49,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<50,49,0>,<50,49,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,5,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,5,7><50,5,7><50,0,7><0,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<0,5,7><0,5,50><0,0,50><0,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<0,5,7><50,5,7><50,5,50><0,5,50>pigment { color surfCZ}}
cylinder{<0,5,7>,<0,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,7>,<50,5,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,7>,<50,4,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,7>,<50,3,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,7>,<50,2,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,7>,<50,1,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,7>,<50,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,6,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,6,7><50,6,7><50,0,7><1,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<1,6,7><1,6,50><1,0,50><1,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<1,6,7><50,6,7><50,6,50><1,6,50>pigment { color surfCZ}}
cylinder{<1,6,7>,<1,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,6,7>,<2,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,6,7>,<3,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,6,7>,<4,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,7>,<5,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,6,7>,<50,6,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,5,7>,<50,5,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,6,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,6,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,6,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,6,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,10,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,10,7><50,10,7><50,0,7><6,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<6,10,7><6,10,50><6,0,50><6,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<6,10,7><50,10,7><50,10,50><6,10,50>pigment { color surfCZ}}
cylinder{<6,10,7>,<6,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,10,7>,<7,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,10,7>,<8,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,10,7>,<50,10,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,9,7>,<50,9,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,8,7>,<50,8,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,7,7>,<50,7,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,6,7>,<50,6,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,10,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,10,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,14,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,14,7><50,14,7><50,0,7><9,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<9,14,7><9,14,50><9,0,50><9,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<9,14,7><50,14,7><50,14,50><9,14,50>pigment { color surfCZ}}
cylinder{<9,14,7>,<9,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,14,7>,<50,14,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,13,7>,<50,13,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,12,7>,<50,12,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,11,7>,<50,11,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,7>,<50,10,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,15,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,15,7><50,15,7><50,0,7><10,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<10,15,7><10,15,50><10,0,50><10,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<10,15,7><50,15,7><50,15,50><10,15,50>pigment { color surfCZ}}
cylinder{<10,15,7>,<10,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,15,7>,<11,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,7>,<12,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,15,7>,<13,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,15,7>,<14,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,15,7>,<50,15,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,14,7>,<50,14,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,15,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,15,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,15,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,15,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,19,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<15,19,7><50,19,7><50,0,7><15,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<15,19,7><15,19,50><15,0,50><15,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<15,19,7><50,19,7><50,19,50><15,19,50>pigment { color surfCZ}}
cylinder{<15,19,7>,<15,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,7>,<16,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,19,7>,<17,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,19,7>,<50,19,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,18,7>,<50,18,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,17,7>,<50,17,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,16,7>,<50,16,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,15,7>,<50,15,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<16,19,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<17,19,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,23,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,23,7><50,23,7><50,0,7><18,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<18,23,7><18,23,50><18,0,50><18,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<18,23,7><50,23,7><50,23,50><18,23,50>pigment { color surfCZ}}
cylinder{<18,23,7>,<18,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,23,7>,<50,23,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,7>,<50,22,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,21,7>,<50,21,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,20,7>,<50,20,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,19,7>,<50,19,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,24,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<19,24,7><50,24,7><50,0,7><19,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<19,24,7><19,24,50><19,0,50><19,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<19,24,7><50,24,7><50,24,50><19,24,50>pigment { color surfCZ}}
cylinder{<19,24,7>,<19,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,24,7>,<20,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,24,7>,<21,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,24,7>,<22,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,24,7>,<23,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,24,7>,<50,24,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,23,7>,<50,23,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<20,24,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,24,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,24,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,24,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<24,28,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<24,28,7><50,28,7><50,0,7><24,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<24,28,7><24,28,50><24,0,50><24,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<24,28,7><50,28,7><50,28,50><24,28,50>pigment { color surfCZ}}
cylinder{<24,28,7>,<24,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,28,7>,<25,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,28,7>,<26,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,28,7>,<50,28,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,7>,<50,27,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,26,7>,<50,26,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,7>,<50,25,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,24,7>,<50,24,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<25,28,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,28,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,32,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<27,32,7><50,32,7><50,0,7><27,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<27,32,7><27,32,50><27,0,50><27,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<27,32,7><50,32,7><50,32,50><27,32,50>pigment { color surfCZ}}
cylinder{<27,32,7>,<27,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,32,7>,<50,32,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,31,7>,<50,31,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,30,7>,<50,30,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,29,7>,<50,29,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,28,7>,<50,28,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<28,33,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<28,33,7><50,33,7><50,0,7><28,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<28,33,7><28,33,50><28,0,50><28,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<28,33,7><50,33,7><50,33,50><28,33,50>pigment { color surfCZ}}
cylinder{<28,33,7>,<28,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,33,7>,<29,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,33,7>,<30,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,33,7>,<31,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,33,7>,<32,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,33,7>,<50,33,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,32,7>,<50,32,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<29,33,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<30,33,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<31,33,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<32,33,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<33,37,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<33,37,7><50,37,7><50,0,7><33,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<33,37,7><33,37,50><33,0,50><33,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<33,37,7><50,37,7><50,37,50><33,37,50>pigment { color surfCZ}}
cylinder{<33,37,7>,<33,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,37,7>,<34,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,37,7>,<35,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,37,7>,<50,37,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,36,7>,<50,36,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,35,7>,<50,35,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,34,7>,<50,34,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,33,7>,<50,33,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<34,37,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<35,37,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<36,41,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<36,41,7><50,41,7><50,0,7><36,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<36,41,7><36,41,50><36,0,50><36,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<36,41,7><50,41,7><50,41,50><36,41,50>pigment { color surfCZ}}
cylinder{<36,41,7>,<36,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,41,7>,<50,41,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,40,7>,<50,40,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,39,7>,<50,39,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,38,7>,<50,38,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,37,7>,<50,37,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<37,42,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<37,42,7><50,42,7><50,0,7><37,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<37,42,7><37,42,50><37,0,50><37,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<37,42,7><50,42,7><50,42,50><37,42,50>pigment { color surfCZ}}
cylinder{<37,42,7>,<37,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,42,7>,<38,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,42,7>,<39,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,42,7>,<40,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,42,7>,<41,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,42,7>,<50,42,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,41,7>,<50,41,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<38,42,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<39,42,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<40,42,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<41,42,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<42,46,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<42,46,7><50,46,7><50,0,7><42,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<42,46,7><42,46,50><42,0,50><42,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<42,46,7><50,46,7><50,46,50><42,46,50>pigment { color surfCZ}}
cylinder{<42,46,7>,<42,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<43,46,7>,<43,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<44,46,7>,<44,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,46,7>,<50,46,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,45,7>,<50,45,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,44,7>,<50,44,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,43,7>,<50,43,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,42,7>,<50,42,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<43,46,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<44,46,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,8,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,8,11><50,8,11><50,0,11><0,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<0,8,11><0,8,50><0,0,50><0,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<0,8,11><50,8,11><50,8,50><0,8,50>pigment { color surfCZ}}
cylinder{<0,8,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,8,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,11>,<50,8,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,11>,<50,7,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,11>,<50,6,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,11>,<50,5,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,11>,<50,4,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,11>,<50,3,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,11>,<50,2,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,11>,<50,1,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,11>,<50,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,8,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,9,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,9,11><50,9,11><50,0,11><2,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<2,9,11><2,9,50><2,0,50><2,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<2,9,11><50,9,11><50,9,50><2,9,50>pigment { color surfCZ}}
cylinder{<2,9,11>,<2,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,11>,<50,9,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,8,11>,<50,8,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,10,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,10,11><50,10,11><50,0,11><3,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<3,10,11><3,10,50><3,0,50><3,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<3,10,11><50,10,11><50,10,50><3,10,50>pigment { color surfCZ}}
cylinder{<3,10,11>,<3,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,10,11>,<4,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,11>,<50,10,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,9,11>,<50,9,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,10,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,11,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,11,11><50,11,11><50,0,11><5,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<5,11,11><5,11,50><5,0,50><5,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<5,11,11><50,11,11><50,11,50><5,11,50>pigment { color surfCZ}}
cylinder{<5,11,11>,<5,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,11,11>,<6,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,11,11>,<7,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,11,11>,<50,11,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,10,11>,<50,10,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,11,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,11,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,11,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,17,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,17,11><50,17,11><50,0,11><9,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<9,17,11><9,17,50><9,0,50><9,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<9,17,11><50,17,11><50,17,50><9,17,50>pigment { color surfCZ}}
cylinder{<9,17,11>,<9,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,11>,<10,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,17,11>,<50,17,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,16,11>,<50,16,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,15,11>,<50,15,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,14,11>,<50,14,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,13,11>,<50,13,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,12,11>,<50,12,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,11,11>,<50,11,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,17,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,18,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,18,11><50,18,11><50,0,11><11,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<11,18,11><11,18,50><11,0,50><11,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<11,18,11><50,18,11><50,18,50><11,18,50>pigment { color surfCZ}}
cylinder{<11,18,11>,<11,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,11>,<50,18,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,17,11>,<50,17,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,19,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,19,11><50,19,11><50,0,11><12,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<12,19,11><12,19,50><12,0,50><12,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<12,19,11><50,19,11><50,19,50><12,19,50>pigment { color surfCZ}}
cylinder{<12,19,11>,<12,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,19,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,11>,<50,19,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,18,11>,<50,18,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,19,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,20,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,20,11><50,20,11><50,0,11><14,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<14,20,11><14,20,50><14,0,50><14,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<14,20,11><50,20,11><50,20,50><14,20,50>pigment { color surfCZ}}
cylinder{<14,20,11>,<14,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,20,11>,<15,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,20,11>,<17,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,20,11>,<50,20,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,19,11>,<50,19,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,20,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,20,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<17,20,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,26,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,26,11><50,26,11><50,0,11><18,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<18,26,11><18,26,50><18,0,50><18,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<18,26,11><50,26,11><50,26,50><18,26,50>pigment { color surfCZ}}
cylinder{<18,26,11>,<18,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,26,11>,<19,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,26,11>,<50,26,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,11>,<50,25,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,24,11>,<50,24,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,23,11>,<50,23,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,22,11>,<50,22,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,21,11>,<50,21,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,20,11>,<50,20,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,26,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,27,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,27,11><50,27,11><50,0,11><20,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<20,27,11><20,27,50><20,0,50><20,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<20,27,11><50,27,11><50,27,50><20,27,50>pigment { color surfCZ}}
cylinder{<20,27,11>,<20,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,11>,<50,27,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,26,11>,<50,26,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,28,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,28,11><50,28,11><50,0,11><21,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<21,28,11><21,28,50><21,0,50><21,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<21,28,11><50,28,11><50,28,50><21,28,50>pigment { color surfCZ}}
cylinder{<21,28,11>,<21,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,28,11>,<22,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,11>,<50,28,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,27,11>,<50,27,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,28,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,29,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,29,11><50,29,11><50,0,11><23,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<23,29,11><23,29,50><23,0,50><23,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<23,29,11><50,29,11><50,29,50><23,29,50>pigment { color surfCZ}}
cylinder{<23,29,11>,<23,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,29,11>,<24,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,29,11>,<25,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,29,11>,<26,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,29,11>,<50,29,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,28,11>,<50,28,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,29,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,29,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,29,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,35,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<27,35,11><50,35,11><50,0,11><27,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<27,35,11><27,35,50><27,0,50><27,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<27,35,11><50,35,11><50,35,50><27,35,50>pigment { color surfCZ}}
cylinder{<27,35,11>,<27,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,35,11>,<28,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,35,11>,<50,35,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,34,11>,<50,34,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,33,11>,<50,33,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,32,11>,<50,32,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,31,11>,<50,31,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,30,11>,<50,30,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,29,11>,<50,29,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<28,35,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<29,36,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<29,36,11><50,36,11><50,0,11><29,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<29,36,11><29,36,50><29,0,50><29,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<29,36,11><50,36,11><50,36,50><29,36,50>pigment { color surfCZ}}
cylinder{<29,36,11>,<29,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,36,11>,<50,36,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,35,11>,<50,35,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<30,37,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<30,37,11><50,37,11><50,0,11><30,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<30,37,11><30,37,50><30,0,50><30,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<30,37,11><50,37,11><50,37,50><30,37,50>pigment { color surfCZ}}
cylinder{<30,37,11>,<30,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,37,11>,<31,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,37,11>,<50,37,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,36,11>,<50,36,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<31,37,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<32,38,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<32,38,11><50,38,11><50,0,11><32,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<32,38,11><32,38,50><32,0,50><32,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<32,38,11><50,38,11><50,38,50><32,38,50>pigment { color surfCZ}}
cylinder{<32,38,11>,<32,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,38,11>,<33,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,38,11>,<34,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,38,11>,<35,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,38,11>,<50,38,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,37,11>,<50,37,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<33,38,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<34,38,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<35,38,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<36,44,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<36,44,11><50,44,11><50,0,11><36,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<36,44,11><36,44,50><36,0,50><36,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<36,44,11><50,44,11><50,44,50><36,44,50>pigment { color surfCZ}}
cylinder{<36,44,11>,<36,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,44,11>,<37,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,44,11>,<50,44,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,43,11>,<50,43,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,42,11>,<50,42,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,41,11>,<50,41,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,40,11>,<50,40,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,39,11>,<50,39,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,38,11>,<50,38,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<37,44,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<38,45,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<38,45,11><50,45,11><50,0,11><38,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<38,45,11><38,45,50><38,0,50><38,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<38,45,11><50,45,11><50,45,50><38,45,50>pigment { color surfCZ}}
cylinder{<38,45,11>,<38,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,45,11>,<50,45,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,44,11>,<50,44,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<39,46,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<39,46,11><50,46,11><50,0,11><39,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<39,46,11><39,46,50><39,0,50><39,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<39,46,11><50,46,11><50,46,50><39,46,50>pigment { color surfCZ}}
cylinder{<39,46,11>,<39,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,46,11>,<40,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,46,11>,<50,46,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,45,11>,<50,45,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<40,46,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<41,47,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<41,47,11><50,47,11><50,0,11><41,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<41,47,11><41,47,50><41,0,50><41,0,11>pigment { color surfCXY}}
polygon { 
 4, 
<41,47,11><50,47,11><50,47,50><41,47,50>pigment { color surfCZ}}
cylinder{<41,47,11>,<41,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,47,11>,<42,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<43,47,11>,<43,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<44,47,11>,<44,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,47,11>,<50,47,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,46,11>,<50,46,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<42,47,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<43,47,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<44,47,11>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,9,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,9,14><50,9,14><50,0,14><0,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<0,9,14><0,9,50><0,0,50><0,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<0,9,14><50,9,14><50,9,50><0,9,50>pigment { color surfCZ}}
cylinder{<0,9,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,9,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,14>,<50,9,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,14>,<50,8,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,14>,<50,7,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,14>,<50,6,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,14>,<50,5,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,14>,<50,4,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,14>,<50,3,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,14>,<50,2,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,14>,<50,1,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,14>,<50,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,9,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,10,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,10,14><50,10,14><50,0,14><2,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<2,10,14><2,10,50><2,0,50><2,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<2,10,14><50,10,14><50,10,50><2,10,50>pigment { color surfCZ}}
cylinder{<2,10,14>,<2,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,10,14>,<3,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,10,14>,<4,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,10,14>,<50,10,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,14>,<50,9,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,10,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,10,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,11,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,11,14><50,11,14><50,0,14><5,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<5,11,14><5,11,50><5,0,50><5,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<5,11,14><50,11,14><50,11,50><5,11,50>pigment { color surfCZ}}
cylinder{<5,11,14>,<5,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,11,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,11,14>,<50,11,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,10,14>,<50,10,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,11,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,16,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,16,14><50,16,14><50,0,14><7,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<7,16,14><7,16,50><7,0,50><7,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<7,16,14><50,16,14><50,16,50><7,16,50>pigment { color surfCZ}}
cylinder{<7,16,14>,<7,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,16,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,16,14>,<50,16,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,15,14>,<50,15,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,14,14>,<50,14,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,13,14>,<50,13,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,12,14>,<50,12,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,11,14>,<50,11,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,16,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,18,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,18,14><50,18,14><50,0,14><9,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<9,18,14><9,18,50><9,0,50><9,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<9,18,14><50,18,14><50,18,50><9,18,50>pigment { color surfCZ}}
cylinder{<9,18,14>,<9,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,18,14>,<10,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,18,14>,<50,18,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,17,14>,<50,17,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,16,14>,<50,16,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,18,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,19,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,19,14><50,19,14><50,0,14><11,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<11,19,14><11,19,50><11,0,50><11,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<11,19,14><50,19,14><50,19,50><11,19,50>pigment { color surfCZ}}
cylinder{<11,19,14>,<11,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,14>,<12,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,19,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,19,14>,<50,19,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,18,14>,<50,18,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,19,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,19,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,20,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,20,14><50,20,14><50,0,14><14,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<14,20,14><14,20,50><14,0,50><14,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<14,20,14><50,20,14><50,20,50><14,20,50>pigment { color surfCZ}}
cylinder{<14,20,14>,<14,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,20,14>,<15,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,20,14>,<50,20,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,19,14>,<50,19,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,20,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,25,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,25,14><50,25,14><50,0,14><16,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<16,25,14><16,25,50><16,0,50><16,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<16,25,14><50,25,14><50,25,50><16,25,50>pigment { color surfCZ}}
cylinder{<16,25,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,25,14>,<17,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,25,14>,<50,25,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,24,14>,<50,24,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,14>,<50,23,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,22,14>,<50,22,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,21,14>,<50,21,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,20,14>,<50,20,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,25,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,27,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,27,14><50,27,14><50,0,14><18,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<18,27,14><18,27,50><18,0,50><18,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<18,27,14><50,27,14><50,27,50><18,27,50>pigment { color surfCZ}}
cylinder{<18,27,14>,<18,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,27,14>,<19,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,27,14>,<50,27,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,26,14>,<50,26,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,14>,<50,25,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,27,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,28,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,28,14><50,28,14><50,0,14><20,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<20,28,14><20,28,50><20,0,50><20,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<20,28,14><50,28,14><50,28,50><20,28,50>pigment { color surfCZ}}
cylinder{<20,28,14>,<20,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,28,14>,<21,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,28,14>,<22,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,28,14>,<50,28,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,14>,<50,27,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,28,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,28,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,29,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,29,14><50,29,14><50,0,14><23,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<23,29,14><23,29,50><23,0,50><23,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<23,29,14><50,29,14><50,29,50><23,29,50>pigment { color surfCZ}}
cylinder{<23,29,14>,<23,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,29,14>,<24,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,29,14>,<50,29,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,28,14>,<50,28,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,29,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,34,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<25,34,14><50,34,14><50,0,14><25,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<25,34,14><25,34,50><25,0,50><25,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<25,34,14><50,34,14><50,34,50><25,34,50>pigment { color surfCZ}}
cylinder{<25,34,14>,<25,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,34,14>,<26,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,34,14>,<50,34,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,33,14>,<50,33,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,32,14>,<50,32,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,31,14>,<50,31,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,30,14>,<50,30,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,29,14>,<50,29,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<26,34,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,36,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<27,36,14><50,36,14><50,0,14><27,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<27,36,14><27,36,50><27,0,50><27,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<27,36,14><50,36,14><50,36,50><27,36,50>pigment { color surfCZ}}
cylinder{<27,36,14>,<27,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,36,14>,<28,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,36,14>,<50,36,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,35,14>,<50,35,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,34,14>,<50,34,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<28,36,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<29,37,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<29,37,14><50,37,14><50,0,14><29,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<29,37,14><29,37,50><29,0,50><29,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<29,37,14><50,37,14><50,37,50><29,37,50>pigment { color surfCZ}}
cylinder{<29,37,14>,<29,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,37,14>,<30,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,37,14>,<31,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,37,14>,<50,37,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,36,14>,<50,36,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<30,37,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<31,37,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<32,38,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<32,38,14><50,38,14><50,0,14><32,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<32,38,14><32,38,50><32,0,50><32,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<32,38,14><50,38,14><50,38,50><32,38,50>pigment { color surfCZ}}
cylinder{<32,38,14>,<32,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,38,14>,<33,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,38,14>,<50,38,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,37,14>,<50,37,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<33,38,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<34,43,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<34,43,14><50,43,14><50,0,14><34,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<34,43,14><34,43,50><34,0,50><34,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<34,43,14><50,43,14><50,43,50><34,43,50>pigment { color surfCZ}}
cylinder{<34,43,14>,<34,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,43,14>,<35,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,43,14>,<50,43,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,42,14>,<50,42,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,41,14>,<50,41,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,40,14>,<50,40,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,39,14>,<50,39,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,38,14>,<50,38,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<35,43,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<36,45,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<36,45,14><50,45,14><50,0,14><36,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<36,45,14><36,45,50><36,0,50><36,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<36,45,14><50,45,14><50,45,50><36,45,50>pigment { color surfCZ}}
cylinder{<36,45,14>,<36,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,45,14>,<37,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,45,14>,<50,45,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,44,14>,<50,44,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,43,14>,<50,43,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<37,45,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<38,46,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<38,46,14><50,46,14><50,0,14><38,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<38,46,14><38,46,50><38,0,50><38,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<38,46,14><50,46,14><50,46,50><38,46,50>pigment { color surfCZ}}
cylinder{<38,46,14>,<38,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,46,14>,<39,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,46,14>,<40,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,46,14>,<50,46,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,45,14>,<50,45,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<39,46,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<40,46,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<41,47,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<41,47,14><50,47,14><50,0,14><41,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<41,47,14><41,47,50><41,0,50><41,0,14>pigment { color surfCXY}}
polygon { 
 4, 
<41,47,14><50,47,14><50,47,50><41,47,50>pigment { color surfCZ}}
cylinder{<41,47,14>,<41,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,47,14>,<42,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,47,14>,<50,47,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,46,14>,<50,46,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<42,47,14>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,12,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,12,17><50,12,17><50,0,17><0,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<0,12,17><0,12,50><0,0,50><0,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<0,12,17><50,12,17><50,12,50><0,12,50>pigment { color surfCZ}}
cylinder{<0,12,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,12,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,12,17>,<2,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,17>,<50,12,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,17>,<50,11,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,17>,<50,10,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,17>,<50,9,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,17>,<50,8,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,17>,<50,7,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,17>,<50,6,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,17>,<50,5,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,17>,<50,4,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,17>,<50,3,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,17>,<50,2,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,17>,<50,1,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,17>,<50,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,12,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,12,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,16,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,16,17><50,16,17><50,0,17><3,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<3,16,17><3,16,50><3,0,50><3,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<3,16,17><50,16,17><50,16,50><3,16,50>pigment { color surfCZ}}
cylinder{<3,16,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,17>,<50,16,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,15,17>,<50,15,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,14,17>,<50,14,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,13,17>,<50,13,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,12,17>,<50,12,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,17,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,17,17><50,17,17><50,0,17><4,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<4,17,17><4,17,50><4,0,50><4,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<4,17,17><50,17,17><50,17,50><4,17,50>pigment { color surfCZ}}
cylinder{<4,17,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,17,17>,<5,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,17,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,17,17>,<50,17,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,16,17>,<50,16,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,17,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,17,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,19,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,19,17><50,19,17><50,0,17><7,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<7,19,17><7,19,50><7,0,50><7,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<7,19,17><50,19,17><50,19,50><7,19,50>pigment { color surfCZ}}
cylinder{<7,19,17>,<7,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,19,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,19,17>,<50,19,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,18,17>,<50,18,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,17,17>,<50,17,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,19,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,21,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,21,17><50,21,17><50,0,17><9,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<9,21,17><9,21,50><9,0,50><9,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<9,21,17><50,21,17><50,21,50><9,21,50>pigment { color surfCZ}}
cylinder{<9,21,17>,<9,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,21,17>,<10,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,21,17>,<50,21,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,20,17>,<50,20,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,17>,<50,19,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,21,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,21,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,25,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,25,17><50,25,17><50,0,17><12,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<12,25,17><12,25,50><12,0,50><12,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<12,25,17><50,25,17><50,25,50><12,25,50>pigment { color surfCZ}}
cylinder{<12,25,17>,<12,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,25,17>,<50,25,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,24,17>,<50,24,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,23,17>,<50,23,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,17>,<50,22,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,21,17>,<50,21,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,26,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,26,17><50,26,17><50,0,17><13,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<13,26,17><13,26,50><13,0,50><13,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<13,26,17><50,26,17><50,26,50><13,26,50>pigment { color surfCZ}}
cylinder{<13,26,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,26,17>,<14,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,26,17>,<15,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,17>,<50,26,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,25,17>,<50,25,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,26,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,26,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,28,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,28,17><50,28,17><50,0,17><16,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<16,28,17><16,28,50><16,0,50><16,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<16,28,17><50,28,17><50,28,50><16,28,50>pigment { color surfCZ}}
cylinder{<16,28,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,28,17>,<17,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,28,17>,<50,28,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,27,17>,<50,27,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,17>,<50,26,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,28,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,30,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,30,17><50,30,17><50,0,17><18,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<18,30,17><18,30,50><18,0,50><18,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<18,30,17><50,30,17><50,30,50><18,30,50>pigment { color surfCZ}}
cylinder{<18,30,17>,<18,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,30,17>,<19,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,30,17>,<20,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,30,17>,<50,30,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,29,17>,<50,29,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,17>,<50,28,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,30,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,30,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,34,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,34,17><50,34,17><50,0,17><21,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<21,34,17><21,34,50><21,0,50><21,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<21,34,17><50,34,17><50,34,50><21,34,50>pigment { color surfCZ}}
cylinder{<21,34,17>,<21,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,17>,<50,34,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,33,17>,<50,33,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,32,17>,<50,32,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,31,17>,<50,31,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,30,17>,<50,30,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,35,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<22,35,17><50,35,17><50,0,17><22,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<22,35,17><22,35,50><22,0,50><22,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<22,35,17><50,35,17><50,35,50><22,35,50>pigment { color surfCZ}}
cylinder{<22,35,17>,<22,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,35,17>,<23,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,35,17>,<24,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,35,17>,<50,35,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,34,17>,<50,34,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<23,35,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<24,35,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,37,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<25,37,17><50,37,17><50,0,17><25,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<25,37,17><25,37,50><25,0,50><25,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<25,37,17><50,37,17><50,37,50><25,37,50>pigment { color surfCZ}}
cylinder{<25,37,17>,<25,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,37,17>,<26,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,37,17>,<50,37,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,36,17>,<50,36,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,35,17>,<50,35,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<26,37,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,39,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<27,39,17><50,39,17><50,0,17><27,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<27,39,17><27,39,50><27,0,50><27,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<27,39,17><50,39,17><50,39,50><27,39,50>pigment { color surfCZ}}
cylinder{<27,39,17>,<27,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,39,17>,<28,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,39,17>,<29,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,39,17>,<50,39,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,38,17>,<50,38,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,37,17>,<50,37,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<28,39,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<29,39,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<30,43,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<30,43,17><50,43,17><50,0,17><30,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<30,43,17><30,43,50><30,0,50><30,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<30,43,17><50,43,17><50,43,50><30,43,50>pigment { color surfCZ}}
cylinder{<30,43,17>,<30,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,43,17>,<50,43,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,42,17>,<50,42,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,41,17>,<50,41,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,40,17>,<50,40,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,39,17>,<50,39,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<31,44,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<31,44,17><50,44,17><50,0,17><31,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<31,44,17><31,44,50><31,0,50><31,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<31,44,17><50,44,17><50,44,50><31,44,50>pigment { color surfCZ}}
cylinder{<31,44,17>,<31,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,44,17>,<32,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,44,17>,<33,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,44,17>,<50,44,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,43,17>,<50,43,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<32,44,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<33,44,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<34,46,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<34,46,17><50,46,17><50,0,17><34,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<34,46,17><34,46,50><34,0,50><34,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<34,46,17><50,46,17><50,46,50><34,46,50>pigment { color surfCZ}}
cylinder{<34,46,17>,<34,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,46,17>,<35,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,46,17>,<50,46,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,45,17>,<50,45,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,44,17>,<50,44,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<35,46,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<36,48,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<36,48,17><50,48,17><50,0,17><36,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<36,48,17><36,48,50><36,0,50><36,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<36,48,17><50,48,17><50,48,50><36,48,50>pigment { color surfCZ}}
cylinder{<36,48,17>,<36,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,48,17>,<37,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,48,17>,<38,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,48,17>,<50,48,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,47,17>,<50,47,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,46,17>,<50,46,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<37,48,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<38,48,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,12,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,12,19><50,12,19><50,0,19><0,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<0,12,19><0,12,50><0,0,50><0,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<0,12,19><50,12,19><50,12,50><0,12,50>pigment { color surfCZ}}
cylinder{<0,12,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,12,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,19>,<50,12,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,19>,<50,11,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,19>,<50,10,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,19>,<50,9,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,19>,<50,8,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,19>,<50,7,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,19>,<50,6,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,19>,<50,5,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,19>,<50,4,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,19>,<50,3,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,19>,<50,2,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,19>,<50,1,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,19>,<50,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,12,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,16,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,16,19><50,16,19><50,0,19><2,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<2,16,19><2,16,50><2,0,50><2,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<2,16,19><50,16,19><50,16,50><2,16,50>pigment { color surfCZ}}
cylinder{<2,16,19>,<2,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,19>,<3,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,19>,<50,16,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,15,19>,<50,15,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,14,19>,<50,14,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,13,19>,<50,13,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,12,19>,<50,12,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,16,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,17,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,17,19><50,17,19><50,0,19><4,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<4,17,19><4,17,50><4,0,50><4,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<4,17,19><50,17,19><50,17,50><4,17,50>pigment { color surfCZ}}
cylinder{<4,17,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,17,19>,<5,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,17,19>,<50,17,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,16,19>,<50,16,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,17,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,18,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,18,19><50,18,19><50,0,19><6,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<6,18,19><6,18,50><6,0,50><6,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<6,18,19><50,18,19><50,18,50><6,18,50>pigment { color surfCZ}}
cylinder{<6,18,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,18,19>,<50,18,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,17,19>,<50,17,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,19,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,19,19><50,19,19><50,0,19><7,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<7,19,19><7,19,50><7,0,50><7,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<7,19,19><50,19,19><50,19,50><7,19,50>pigment { color surfCZ}}
cylinder{<7,19,19>,<7,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,19,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,19,19>,<50,19,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,18,19>,<50,18,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,19,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,21,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,21,19><50,21,19><50,0,19><9,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<9,21,19><9,21,50><9,0,50><9,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<9,21,19><50,21,19><50,21,50><9,21,50>pigment { color surfCZ}}
cylinder{<9,21,19>,<9,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,21,19>,<10,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,21,19>,<50,21,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,20,19>,<50,20,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,19>,<50,19,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,21,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,25,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,25,19><50,25,19><50,0,19><11,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<11,25,19><11,25,50><11,0,50><11,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<11,25,19><50,25,19><50,25,50><11,25,50>pigment { color surfCZ}}
cylinder{<11,25,19>,<11,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,25,19>,<12,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,25,19>,<50,25,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,19>,<50,24,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,23,19>,<50,23,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,22,19>,<50,22,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,21,19>,<50,21,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,25,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,26,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,26,19><50,26,19><50,0,19><13,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<13,26,19><13,26,50><13,0,50><13,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<13,26,19><50,26,19><50,26,50><13,26,50>pigment { color surfCZ}}
cylinder{<13,26,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,26,19>,<14,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,19>,<50,26,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,25,19>,<50,25,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,26,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,27,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<15,27,19><50,27,19><50,0,19><15,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<15,27,19><15,27,50><15,0,50><15,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<15,27,19><50,27,19><50,27,50><15,27,50>pigment { color surfCZ}}
cylinder{<15,27,19>,<15,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,27,19>,<50,27,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,26,19>,<50,26,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<16,28,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,28,19><50,28,19><50,0,19><16,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<16,28,19><16,28,50><16,0,50><16,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<16,28,19><50,28,19><50,28,50><16,28,50>pigment { color surfCZ}}
cylinder{<16,28,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,28,19>,<17,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,28,19>,<50,28,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,27,19>,<50,27,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,28,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,30,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,30,19><50,30,19><50,0,19><18,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<18,30,19><18,30,50><18,0,50><18,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<18,30,19><50,30,19><50,30,50><18,30,50>pigment { color surfCZ}}
cylinder{<18,30,19>,<18,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,30,19>,<19,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,30,19>,<50,30,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,29,19>,<50,29,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,28,19>,<50,28,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,30,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,34,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,34,19><50,34,19><50,0,19><20,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<20,34,19><20,34,50><20,0,50><20,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<20,34,19><50,34,19><50,34,50><20,34,50>pigment { color surfCZ}}
cylinder{<20,34,19>,<20,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,34,19>,<21,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,34,19>,<50,34,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,33,19>,<50,33,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,32,19>,<50,32,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,31,19>,<50,31,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,30,19>,<50,30,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,34,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,35,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<22,35,19><50,35,19><50,0,19><22,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<22,35,19><22,35,50><22,0,50><22,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<22,35,19><50,35,19><50,35,50><22,35,50>pigment { color surfCZ}}
cylinder{<22,35,19>,<22,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,35,19>,<23,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,35,19>,<50,35,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,34,19>,<50,34,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<23,35,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<24,36,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<24,36,19><50,36,19><50,0,19><24,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<24,36,19><24,36,50><24,0,50><24,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<24,36,19><50,36,19><50,36,50><24,36,50>pigment { color surfCZ}}
cylinder{<24,36,19>,<24,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,36,19>,<50,36,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,35,19>,<50,35,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<25,37,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<25,37,19><50,37,19><50,0,19><25,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<25,37,19><25,37,50><25,0,50><25,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<25,37,19><50,37,19><50,37,50><25,37,50>pigment { color surfCZ}}
cylinder{<25,37,19>,<25,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,37,19>,<26,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,37,19>,<50,37,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,36,19>,<50,36,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<26,37,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,39,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<27,39,19><50,39,19><50,0,19><27,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<27,39,19><27,39,50><27,0,50><27,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<27,39,19><50,39,19><50,39,50><27,39,50>pigment { color surfCZ}}
cylinder{<27,39,19>,<27,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,39,19>,<28,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,39,19>,<50,39,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,38,19>,<50,38,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,37,19>,<50,37,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<28,39,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<29,43,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<29,43,19><50,43,19><50,0,19><29,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<29,43,19><29,43,50><29,0,50><29,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<29,43,19><50,43,19><50,43,50><29,43,50>pigment { color surfCZ}}
cylinder{<29,43,19>,<29,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,43,19>,<30,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,43,19>,<50,43,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,42,19>,<50,42,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,41,19>,<50,41,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,40,19>,<50,40,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,39,19>,<50,39,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<30,43,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<31,44,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<31,44,19><50,44,19><50,0,19><31,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<31,44,19><31,44,50><31,0,50><31,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<31,44,19><50,44,19><50,44,50><31,44,50>pigment { color surfCZ}}
cylinder{<31,44,19>,<31,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,44,19>,<32,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,44,19>,<50,44,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,43,19>,<50,43,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<32,44,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<33,45,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<33,45,19><50,45,19><50,0,19><33,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<33,45,19><33,45,50><33,0,50><33,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<33,45,19><50,45,19><50,45,50><33,45,50>pigment { color surfCZ}}
cylinder{<33,45,19>,<33,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,45,19>,<50,45,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,44,19>,<50,44,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<34,46,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<34,46,19><50,46,19><50,0,19><34,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<34,46,19><34,46,50><34,0,50><34,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<34,46,19><50,46,19><50,46,50><34,46,50>pigment { color surfCZ}}
cylinder{<34,46,19>,<34,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,46,19>,<35,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,46,19>,<50,46,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,45,19>,<50,45,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<35,46,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<36,48,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<36,48,19><50,48,19><50,0,19><36,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<36,48,19><36,48,50><36,0,50><36,0,19>pigment { color surfCXY}}
polygon { 
 4, 
<36,48,19><50,48,19><50,48,50><36,48,50>pigment { color surfCZ}}
cylinder{<36,48,19>,<36,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,48,19>,<37,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,48,19>,<50,48,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,47,19>,<50,47,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,46,19>,<50,46,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<37,48,19>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,16,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,16,21><50,16,21><50,0,21><0,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<0,16,21><0,16,50><0,0,50><0,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<0,16,21><50,16,21><50,16,50><0,16,50>pigment { color surfCZ}}
cylinder{<0,16,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,16,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,21>,<50,16,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,21>,<50,15,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,21>,<50,14,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,21>,<50,13,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,21>,<50,12,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,21>,<50,11,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,21>,<50,10,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,21>,<50,9,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,21>,<50,8,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,21>,<50,7,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,21>,<50,6,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,21>,<50,5,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,21>,<50,4,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,21>,<50,3,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,21>,<50,2,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,21>,<50,1,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,21>,<50,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,16,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,20,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,20,21><50,20,21><50,0,21><2,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<2,20,21><2,20,50><2,0,50><2,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<2,20,21><50,20,21><50,20,50><2,20,50>pigment { color surfCZ}}
cylinder{<2,20,21>,<2,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,20,21>,<3,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,20,21>,<5,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,20,21>,<7,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,20,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,20,21>,<50,20,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,19,21>,<50,19,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,21>,<50,18,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,17,21>,<50,17,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,21>,<50,16,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,20,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,20,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,20,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,20,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,20,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,20,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,25,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,25,21><50,25,21><50,0,21><9,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<9,25,21><9,25,50><9,0,50><9,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<9,25,21><50,25,21><50,25,50><9,25,50>pigment { color surfCZ}}
cylinder{<9,25,21>,<9,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,25,21>,<10,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,21>,<50,25,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,24,21>,<50,24,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,21>,<50,23,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,22,21>,<50,22,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,21,21>,<50,21,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,20,21>,<50,20,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,25,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,29,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,29,21><50,29,21><50,0,21><11,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<11,29,21><11,29,50><11,0,50><11,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<11,29,21><50,29,21><50,29,50><11,29,50>pigment { color surfCZ}}
cylinder{<11,29,21>,<11,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,29,21>,<12,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,29,21>,<14,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,29,21>,<15,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,29,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,29,21>,<17,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,29,21>,<50,29,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,28,21>,<50,28,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,27,21>,<50,27,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,26,21>,<50,26,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,25,21>,<50,25,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,29,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,29,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,29,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,29,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,29,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<17,29,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,34,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,34,21><50,34,21><50,0,21><18,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<18,34,21><18,34,50><18,0,50><18,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<18,34,21><50,34,21><50,34,50><18,34,50>pigment { color surfCZ}}
cylinder{<18,34,21>,<18,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,34,21>,<19,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,21>,<50,34,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,33,21>,<50,33,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,32,21>,<50,32,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,31,21>,<50,31,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,30,21>,<50,30,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,29,21>,<50,29,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,34,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,38,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,38,21><50,38,21><50,0,21><20,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<20,38,21><20,38,50><20,0,50><20,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<20,38,21><50,38,21><50,38,50><20,38,50>pigment { color surfCZ}}
cylinder{<20,38,21>,<20,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,38,21>,<21,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,38,21>,<22,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,38,21>,<23,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,38,21>,<24,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,38,21>,<25,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,38,21>,<26,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,38,21>,<50,38,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,37,21>,<50,37,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,36,21>,<50,36,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,35,21>,<50,35,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,34,21>,<50,34,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,38,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,38,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,38,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<24,38,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,38,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,38,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,43,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<27,43,21><50,43,21><50,0,21><27,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<27,43,21><27,43,50><27,0,50><27,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<27,43,21><50,43,21><50,43,50><27,43,50>pigment { color surfCZ}}
cylinder{<27,43,21>,<27,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,43,21>,<28,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,43,21>,<50,43,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,42,21>,<50,42,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,41,21>,<50,41,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,40,21>,<50,40,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,39,21>,<50,39,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,38,21>,<50,38,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<28,43,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<29,47,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<29,47,21><50,47,21><50,0,21><29,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<29,47,21><29,47,50><29,0,50><29,0,21>pigment { color surfCXY}}
polygon { 
 4, 
<29,47,21><50,47,21><50,47,50><29,47,50>pigment { color surfCZ}}
cylinder{<29,47,21>,<29,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,47,21>,<30,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,47,21>,<31,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,47,21>,<32,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,47,21>,<33,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,47,21>,<34,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,47,21>,<35,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,47,21>,<50,47,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,46,21>,<50,46,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,45,21>,<50,45,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,44,21>,<50,44,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,43,21>,<50,43,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<30,47,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<31,47,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<32,47,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<33,47,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<34,47,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<35,47,21>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,19,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,19,25><50,19,25><50,0,25><0,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<0,19,25><0,19,50><0,0,50><0,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<0,19,25><50,19,25><50,19,50><0,19,50>pigment { color surfCZ}}
cylinder{<0,19,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,25>,<50,19,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,25>,<50,18,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,25>,<50,17,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,25>,<50,16,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,25>,<50,15,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,25>,<50,14,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,25>,<50,13,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,25>,<50,12,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,25>,<50,11,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,25>,<50,10,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,25>,<50,9,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,25>,<50,8,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,25>,<50,7,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,25>,<50,6,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,25>,<50,5,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,25>,<50,4,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,25>,<50,3,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,25>,<50,2,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,25>,<50,1,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,25>,<50,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,20,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,20,25><50,20,25><50,0,25><1,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<1,20,25><1,20,50><1,0,50><1,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<1,20,25><50,20,25><50,20,50><1,20,50>pigment { color surfCZ}}
cylinder{<1,20,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,20,25>,<50,20,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,19,25>,<50,19,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,22,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,22,25><50,22,25><50,0,25><2,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<2,22,25><2,22,50><2,0,50><2,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<2,22,25><50,22,25><50,22,50><2,22,50>pigment { color surfCZ}}
cylinder{<2,22,25>,<2,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,25>,<3,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,22,25>,<50,22,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,25>,<50,21,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,20,25>,<50,20,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,22,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,24,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,24,25><50,24,25><50,0,25><4,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<4,24,25><4,24,50><4,0,50><4,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<4,24,25><50,24,25><50,24,50><4,24,50>pigment { color surfCZ}}
cylinder{<4,24,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,24,25>,<5,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,24,25>,<50,24,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,25>,<50,23,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,22,25>,<50,22,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,24,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,25,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,25,25><50,25,25><50,0,25><6,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<6,25,25><6,25,50><6,0,50><6,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<6,25,25><50,25,25><50,25,50><6,25,50>pigment { color surfCZ}}
cylinder{<6,25,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,25,25>,<7,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,25,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,25>,<50,25,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,24,25>,<50,24,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,25,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,25,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,28,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,28,25><50,28,25><50,0,25><9,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<9,28,25><9,28,50><9,0,50><9,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<9,28,25><50,28,25><50,28,50><9,28,50>pigment { color surfCZ}}
cylinder{<9,28,25>,<9,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,28,25>,<50,28,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,27,25>,<50,27,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,26,25>,<50,26,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,25>,<50,25,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,29,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,29,25><50,29,25><50,0,25><10,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<10,29,25><10,29,50><10,0,50><10,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<10,29,25><50,29,25><50,29,50><10,29,50>pigment { color surfCZ}}
cylinder{<10,29,25>,<10,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,25>,<50,29,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,28,25>,<50,28,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,31,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<11,31,25><50,31,25><50,0,25><11,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<11,31,25><11,31,50><11,0,50><11,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<11,31,25><50,31,25><50,31,50><11,31,50>pigment { color surfCZ}}
cylinder{<11,31,25>,<11,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,31,25>,<12,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,31,25>,<50,31,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,30,25>,<50,30,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,29,25>,<50,29,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<12,31,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,33,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,33,25><50,33,25><50,0,25><13,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<13,33,25><13,33,50><13,0,50><13,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<13,33,25><50,33,25><50,33,50><13,33,50>pigment { color surfCZ}}
cylinder{<13,33,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,33,25>,<14,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,33,25>,<50,33,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,32,25>,<50,32,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,31,25>,<50,31,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,33,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,34,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<15,34,25><50,34,25><50,0,25><15,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<15,34,25><15,34,50><15,0,50><15,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<15,34,25><50,34,25><50,34,50><15,34,50>pigment { color surfCZ}}
cylinder{<15,34,25>,<15,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,34,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,34,25>,<17,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,34,25>,<50,34,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,33,25>,<50,33,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<16,34,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<17,34,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,37,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,37,25><50,37,25><50,0,25><18,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<18,37,25><18,37,50><18,0,50><18,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<18,37,25><50,37,25><50,37,50><18,37,50>pigment { color surfCZ}}
cylinder{<18,37,25>,<18,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,25>,<50,37,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,36,25>,<50,36,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,35,25>,<50,35,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,34,25>,<50,34,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,38,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<19,38,25><50,38,25><50,0,25><19,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<19,38,25><19,38,50><19,0,50><19,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<19,38,25><50,38,25><50,38,50><19,38,50>pigment { color surfCZ}}
cylinder{<19,38,25>,<19,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,38,25>,<50,38,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,37,25>,<50,37,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<20,40,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,40,25><50,40,25><50,0,25><20,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<20,40,25><20,40,50><20,0,50><20,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<20,40,25><50,40,25><50,40,50><20,40,50>pigment { color surfCZ}}
cylinder{<20,40,25>,<20,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,40,25>,<21,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,40,25>,<50,40,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,39,25>,<50,39,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,38,25>,<50,38,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,40,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,42,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<22,42,25><50,42,25><50,0,25><22,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<22,42,25><22,42,50><22,0,50><22,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<22,42,25><50,42,25><50,42,50><22,42,50>pigment { color surfCZ}}
cylinder{<22,42,25>,<22,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,42,25>,<23,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,42,25>,<50,42,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,41,25>,<50,41,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,40,25>,<50,40,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<23,42,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<24,43,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<24,43,25><50,43,25><50,0,25><24,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<24,43,25><24,43,50><24,0,50><24,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<24,43,25><50,43,25><50,43,50><24,43,50>pigment { color surfCZ}}
cylinder{<24,43,25>,<24,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,43,25>,<25,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,43,25>,<26,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,43,25>,<50,43,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,42,25>,<50,42,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<25,43,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,43,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,46,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<27,46,25><50,46,25><50,0,25><27,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<27,46,25><27,46,50><27,0,50><27,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<27,46,25><50,46,25><50,46,50><27,46,50>pigment { color surfCZ}}
cylinder{<27,46,25>,<27,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,46,25>,<50,46,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,45,25>,<50,45,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,44,25>,<50,44,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,43,25>,<50,43,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<28,47,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<28,47,25><50,47,25><50,0,25><28,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<28,47,25><28,47,50><28,0,50><28,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<28,47,25><50,47,25><50,47,50><28,47,50>pigment { color surfCZ}}
cylinder{<28,47,25>,<28,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,47,25>,<50,47,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,46,25>,<50,46,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<29,49,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<29,49,25><50,49,25><50,0,25><29,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<29,49,25><29,49,50><29,0,50><29,0,25>pigment { color surfCXY}}
polygon { 
 4, 
<29,49,25><50,49,25><50,49,50><29,49,50>pigment { color surfCZ}}
cylinder{<29,49,25>,<29,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,49,25>,<30,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,49,25>,<50,49,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,48,25>,<50,48,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,47,25>,<50,47,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<30,49,25>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,23,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,23,26><50,23,26><50,0,26><0,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<0,23,26><0,23,50><0,0,50><0,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<0,23,26><50,23,26><50,23,50><0,23,50>pigment { color surfCZ}}
cylinder{<0,23,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,26>,<50,23,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,26>,<50,22,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,26>,<50,21,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,26>,<50,20,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,26>,<50,19,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,26>,<50,18,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,26>,<50,17,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,26>,<50,16,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,26>,<50,15,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,26>,<50,14,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,26>,<50,13,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,26>,<50,12,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,26>,<50,11,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,26>,<50,10,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,26>,<50,9,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,26>,<50,8,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,26>,<50,7,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,26>,<50,6,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,26>,<50,5,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,26>,<50,4,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,26>,<50,3,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,26>,<50,2,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,26>,<50,1,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,26>,<50,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,24,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,24,26><50,24,26><50,0,26><1,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<1,24,26><1,24,50><1,0,50><1,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<1,24,26><50,24,26><50,24,50><1,24,50>pigment { color surfCZ}}
cylinder{<1,24,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,24,26>,<2,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,24,26>,<3,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,24,26>,<50,24,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,26>,<50,23,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,24,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,24,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,25,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,25,26><50,25,26><50,0,26><4,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<4,25,26><4,25,50><4,0,50><4,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<4,25,26><50,25,26><50,25,50><4,25,50>pigment { color surfCZ}}
cylinder{<4,25,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,25,26>,<50,25,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,24,26>,<50,24,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,28,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,28,26><50,28,26><50,0,26><5,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<5,28,26><5,28,50><5,0,50><5,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<5,28,26><50,28,26><50,28,50><5,28,50>pigment { color surfCZ}}
cylinder{<5,28,26>,<5,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,28,26>,<7,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,28,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,28,26>,<50,28,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,27,26>,<50,27,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,26,26>,<50,26,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,25,26>,<50,25,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,28,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,28,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,28,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,32,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,32,26><50,32,26><50,0,26><9,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<9,32,26><9,32,50><9,0,50><9,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<9,32,26><50,32,26><50,32,50><9,32,50>pigment { color surfCZ}}
cylinder{<9,32,26>,<9,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,32,26>,<50,32,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,31,26>,<50,31,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,30,26>,<50,30,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,29,26>,<50,29,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,28,26>,<50,28,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,33,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,33,26><50,33,26><50,0,26><10,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<10,33,26><10,33,50><10,0,50><10,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<10,33,26><50,33,26><50,33,50><10,33,50>pigment { color surfCZ}}
cylinder{<10,33,26>,<10,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,26>,<11,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,33,26>,<12,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,33,26>,<50,33,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,32,26>,<50,32,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,33,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,33,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,34,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,34,26><50,34,26><50,0,26><13,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<13,34,26><13,34,50><13,0,50><13,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<13,34,26><50,34,26><50,34,50><13,34,50>pigment { color surfCZ}}
cylinder{<13,34,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,34,26>,<50,34,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,33,26>,<50,33,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,37,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,37,26><50,37,26><50,0,26><14,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<14,37,26><14,37,50><14,0,50><14,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<14,37,26><50,37,26><50,37,50><14,37,50>pigment { color surfCZ}}
cylinder{<14,37,26>,<14,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,37,26>,<15,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,37,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,37,26>,<17,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,37,26>,<50,37,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,36,26>,<50,36,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,35,26>,<50,35,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,34,26>,<50,34,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,37,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,37,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<17,37,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,41,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,41,26><50,41,26><50,0,26><18,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<18,41,26><18,41,50><18,0,50><18,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<18,41,26><50,41,26><50,41,50><18,41,50>pigment { color surfCZ}}
cylinder{<18,41,26>,<18,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,41,26>,<50,41,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,40,26>,<50,40,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,39,26>,<50,39,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,38,26>,<50,38,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,37,26>,<50,37,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,42,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<19,42,26><50,42,26><50,0,26><19,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<19,42,26><19,42,50><19,0,50><19,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<19,42,26><50,42,26><50,42,50><19,42,50>pigment { color surfCZ}}
cylinder{<19,42,26>,<19,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,42,26>,<20,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,42,26>,<21,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,42,26>,<50,42,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,41,26>,<50,41,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<20,42,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,42,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,43,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<22,43,26><50,43,26><50,0,26><22,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<22,43,26><22,43,50><22,0,50><22,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<22,43,26><50,43,26><50,43,50><22,43,50>pigment { color surfCZ}}
cylinder{<22,43,26>,<22,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,43,26>,<50,43,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,42,26>,<50,42,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<23,46,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,46,26><50,46,26><50,0,26><23,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<23,46,26><23,46,50><23,0,50><23,0,26>pigment { color surfCXY}}
polygon { 
 4, 
<23,46,26><50,46,26><50,46,50><23,46,50>pigment { color surfCZ}}
cylinder{<23,46,26>,<23,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,46,26>,<24,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,46,26>,<25,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,46,26>,<26,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,46,26>,<50,46,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,45,26>,<50,45,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,44,26>,<50,44,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,43,26>,<50,43,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,46,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<25,46,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,46,26>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,23,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,23,30><50,23,30><50,0,30><0,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<0,23,30><0,23,50><0,0,50><0,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<0,23,30><50,23,30><50,23,50><0,23,50>pigment { color surfCZ}}
cylinder{<0,23,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,30>,<50,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,30>,<50,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,30>,<50,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,30>,<50,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,30>,<50,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,30>,<50,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,30>,<50,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,30>,<50,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,30>,<50,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,30>,<50,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,30>,<50,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,30>,<50,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,30>,<50,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,30>,<50,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,30>,<50,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,30>,<50,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,30>,<50,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,30>,<50,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,30>,<50,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,30>,<50,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,30>,<50,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,30>,<50,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,30>,<50,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,30>,<50,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,24,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,24,30><50,24,30><50,0,30><1,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<1,24,30><1,24,50><1,0,50><1,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<1,24,30><50,24,30><50,24,50><1,24,50>pigment { color surfCZ}}
cylinder{<1,24,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,24,30>,<2,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,24,30>,<3,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,24,30>,<50,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,23,30>,<50,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,24,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,24,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,25,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,25,30><50,25,30><50,0,30><4,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<4,25,30><4,25,50><4,0,50><4,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<4,25,30><50,25,30><50,25,50><4,25,50>pigment { color surfCZ}}
cylinder{<4,25,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,25,30>,<50,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,24,30>,<50,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,28,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,28,30><50,28,30><50,0,30><5,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<5,28,30><5,28,50><5,0,50><5,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<5,28,30><50,28,30><50,28,50><5,28,50>pigment { color surfCZ}}
cylinder{<5,28,30>,<5,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,28,30>,<50,28,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,27,30>,<50,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,26,30>,<50,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,25,30>,<50,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,29,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,29,30><50,29,30><50,0,30><6,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<6,29,30><6,29,50><6,0,50><6,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<6,29,30><50,29,30><50,29,50><6,29,50>pigment { color surfCZ}}
cylinder{<6,29,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,29,30>,<50,29,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,28,30>,<50,28,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,32,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,32,30><50,32,30><50,0,30><7,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<7,32,30><7,32,50><7,0,50><7,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<7,32,30><50,32,30><50,32,50><7,32,50>pigment { color surfCZ}}
cylinder{<7,32,30>,<7,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,32,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,32,30>,<9,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,32,30>,<50,32,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,31,30>,<50,31,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,30,30>,<50,30,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,29,30>,<50,29,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,32,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,32,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,33,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,33,30><50,33,30><50,0,30><10,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<10,33,30><10,33,50><10,0,50><10,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<10,33,30><50,33,30><50,33,50><10,33,50>pigment { color surfCZ}}
cylinder{<10,33,30>,<10,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,33,30>,<11,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,33,30>,<12,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,33,30>,<50,33,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,32,30>,<50,32,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,33,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,33,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,34,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,34,30><50,34,30><50,0,30><13,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<13,34,30><13,34,50><13,0,50><13,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<13,34,30><50,34,30><50,34,50><13,34,50>pigment { color surfCZ}}
cylinder{<13,34,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,34,30>,<50,34,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,33,30>,<50,33,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,37,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,37,30><50,37,30><50,0,30><14,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<14,37,30><14,37,50><14,0,50><14,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<14,37,30><50,37,30><50,37,50><14,37,50>pigment { color surfCZ}}
cylinder{<14,37,30>,<14,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,37,30>,<50,37,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,36,30>,<50,36,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,35,30>,<50,35,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,34,30>,<50,34,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,38,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<15,38,30><50,38,30><50,0,30><15,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<15,38,30><15,38,50><15,0,50><15,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<15,38,30><50,38,30><50,38,50><15,38,50>pigment { color surfCZ}}
cylinder{<15,38,30>,<15,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,38,30>,<50,38,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,37,30>,<50,37,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<16,41,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,41,30><50,41,30><50,0,30><16,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<16,41,30><16,41,50><16,0,50><16,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<16,41,30><50,41,30><50,41,50><16,41,50>pigment { color surfCZ}}
cylinder{<16,41,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,41,30>,<17,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,41,30>,<18,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,41,30>,<50,41,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,40,30>,<50,40,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,39,30>,<50,39,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,38,30>,<50,38,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,41,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,41,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<19,42,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<19,42,30><50,42,30><50,0,30><19,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<19,42,30><19,42,50><19,0,50><19,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<19,42,30><50,42,30><50,42,50><19,42,50>pigment { color surfCZ}}
cylinder{<19,42,30>,<19,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,42,30>,<20,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,42,30>,<21,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,42,30>,<50,42,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,41,30>,<50,41,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<20,42,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,42,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,43,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<22,43,30><50,43,30><50,0,30><22,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<22,43,30><22,43,50><22,0,50><22,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<22,43,30><50,43,30><50,43,50><22,43,50>pigment { color surfCZ}}
cylinder{<22,43,30>,<22,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,43,30>,<50,43,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,42,30>,<50,42,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<23,46,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,46,30><50,46,30><50,0,30><23,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<23,46,30><23,46,50><23,0,50><23,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<23,46,30><50,46,30><50,46,50><23,46,50>pigment { color surfCZ}}
cylinder{<23,46,30>,<23,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,46,30>,<50,46,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,45,30>,<50,45,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,44,30>,<50,44,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,43,30>,<50,43,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,47,30>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<24,47,30><50,47,30><50,0,30><24,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<24,47,30><24,47,50><24,0,50><24,0,30>pigment { color surfCXY}}
polygon { 
 4, 
<24,47,30><50,47,30><50,47,50><24,47,50>pigment { color surfCZ}}
cylinder{<24,47,30>,<24,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,47,30>,<50,47,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,46,30>,<50,46,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,25,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,25,34><50,25,34><50,0,34><0,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<0,25,34><0,25,50><0,0,50><0,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<0,25,34><50,25,34><50,25,50><0,25,50>pigment { color surfCZ}}
cylinder{<0,25,34>,<0,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,25,34>,<1,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,25,34>,<2,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,25,34>,<3,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,25,34>,<4,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,34>,<50,25,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,34>,<50,24,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,34>,<50,23,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,34>,<50,22,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,34>,<50,21,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,34>,<50,20,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,34>,<50,19,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,34>,<50,18,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,34>,<50,17,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,34>,<50,16,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,34>,<50,15,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,34>,<50,14,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,34>,<50,13,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,34>,<50,12,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,34>,<50,11,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,34>,<50,10,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,34>,<50,9,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,34>,<50,8,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,34>,<50,7,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,34>,<50,6,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,34>,<50,5,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,34>,<50,4,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,34>,<50,3,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,34>,<50,2,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,34>,<50,1,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,34>,<50,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,25,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,25,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,25,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,25,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,31,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,31,34><50,31,34><50,0,34><5,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<5,31,34><5,31,50><5,0,50><5,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<5,31,34><50,31,34><50,31,50><5,31,50>pigment { color surfCZ}}
cylinder{<5,31,34>,<5,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,31,34>,<6,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,31,34>,<50,31,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,30,34>,<50,30,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,29,34>,<50,29,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,28,34>,<50,28,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,27,34>,<50,27,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,26,34>,<50,26,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,25,34>,<50,25,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,31,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,32,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,32,34><50,32,34><50,0,34><7,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<7,32,34><7,32,50><7,0,50><7,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<7,32,34><50,32,34><50,32,50><7,32,50>pigment { color surfCZ}}
cylinder{<7,32,34>,<7,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,32,34>,<8,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,32,34>,<50,32,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,31,34>,<50,31,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,32,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,34,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,34,34><50,34,34><50,0,34><9,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<9,34,34><9,34,50><9,0,50><9,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<9,34,34><50,34,34><50,34,50><9,34,50>pigment { color surfCZ}}
cylinder{<9,34,34>,<9,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,34,34>,<10,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,34,34>,<11,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,34,34>,<12,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,34,34>,<13,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,34,34>,<50,34,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,33,34>,<50,33,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,32,34>,<50,32,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,34,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,34,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,34,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,34,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,40,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,40,34><50,40,34><50,0,34><14,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<14,40,34><14,40,50><14,0,50><14,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<14,40,34><50,40,34><50,40,50><14,40,50>pigment { color surfCZ}}
cylinder{<14,40,34>,<14,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,40,34>,<15,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,40,34>,<50,40,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,39,34>,<50,39,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,38,34>,<50,38,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,37,34>,<50,37,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,36,34>,<50,36,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,35,34>,<50,35,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,34,34>,<50,34,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,40,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,41,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,41,34><50,41,34><50,0,34><16,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<16,41,34><16,41,50><16,0,50><16,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<16,41,34><50,41,34><50,41,50><16,41,50>pigment { color surfCZ}}
cylinder{<16,41,34>,<16,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,41,34>,<17,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,41,34>,<50,41,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,40,34>,<50,40,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,41,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,43,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,43,34><50,43,34><50,0,34><18,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<18,43,34><18,43,50><18,0,50><18,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<18,43,34><50,43,34><50,43,50><18,43,50>pigment { color surfCZ}}
cylinder{<18,43,34>,<18,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,43,34>,<19,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,43,34>,<20,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,43,34>,<21,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,43,34>,<22,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,43,34>,<50,43,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,42,34>,<50,42,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,41,34>,<50,41,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<19,43,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,43,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<21,43,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,43,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,49,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<23,49,34><50,49,34><50,0,34><23,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<23,49,34><23,49,50><23,0,50><23,0,34>pigment { color surfCXY}}
polygon { 
 4, 
<23,49,34><50,49,34><50,49,50><23,49,50>pigment { color surfCZ}}
cylinder{<23,49,34>,<23,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,49,34>,<24,0,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,49,34>,<50,49,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,48,34>,<50,48,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,47,34>,<50,47,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,46,34>,<50,46,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,45,34>,<50,45,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,44,34>,<50,44,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,43,34>,<50,43,34>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<24,49,34>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,32,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,32,38><50,32,38><50,0,38><0,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<0,32,38><0,32,50><0,0,50><0,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<0,32,38><50,32,38><50,32,50><0,32,50>pigment { color surfCZ}}
cylinder{<0,32,38>,<0,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,38>,<50,32,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,38>,<50,31,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,38>,<50,30,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,38>,<50,29,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,38>,<50,28,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,38>,<50,27,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,38>,<50,26,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,38>,<50,25,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,38>,<50,24,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,38>,<50,23,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,38>,<50,22,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,38>,<50,21,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,38>,<50,20,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,38>,<50,19,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,38>,<50,18,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,38>,<50,17,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,38>,<50,16,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,38>,<50,15,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,38>,<50,14,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,38>,<50,13,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,38>,<50,12,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,38>,<50,11,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,38>,<50,10,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,38>,<50,9,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,38>,<50,8,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,38>,<50,7,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,38>,<50,6,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,38>,<50,5,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,38>,<50,4,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,38>,<50,3,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,38>,<50,2,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,38>,<50,1,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,38>,<50,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,33,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,33,38><50,33,38><50,0,38><1,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<1,33,38><1,33,50><1,0,50><1,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<1,33,38><50,33,38><50,33,50><1,33,50>pigment { color surfCZ}}
cylinder{<1,33,38>,<1,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,33,38>,<2,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,33,38>,<3,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,33,38>,<4,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,33,38>,<5,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,33,38>,<50,33,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,32,38>,<50,32,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,33,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,33,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,33,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,33,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,38,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,38,38><50,38,38><50,0,38><6,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<6,38,38><6,38,50><6,0,50><6,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<6,38,38><50,38,38><50,38,50><6,38,50>pigment { color surfCZ}}
cylinder{<6,38,38>,<6,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,38,38>,<50,38,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,37,38>,<50,37,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,36,38>,<50,36,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,35,38>,<50,35,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,34,38>,<50,34,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,33,38>,<50,33,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,41,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,41,38><50,41,38><50,0,38><7,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<7,41,38><7,41,50><7,0,50><7,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<7,41,38><50,41,38><50,41,50><7,41,50>pigment { color surfCZ}}
cylinder{<7,41,38>,<7,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,41,38>,<8,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,41,38>,<9,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,41,38>,<50,41,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,40,38>,<50,40,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,39,38>,<50,39,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,38,38>,<50,38,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,41,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,41,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,42,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,42,38><50,42,38><50,0,38><10,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<10,42,38><10,42,50><10,0,50><10,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<10,42,38><50,42,38><50,42,50><10,42,50>pigment { color surfCZ}}
cylinder{<10,42,38>,<10,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,42,38>,<11,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,42,38>,<12,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,42,38>,<13,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,42,38>,<14,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,42,38>,<50,42,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,41,38>,<50,41,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,42,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,42,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,42,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,42,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,47,38>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<15,47,38><50,47,38><50,0,38><15,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<15,47,38><15,47,50><15,0,50><15,0,38>pigment { color surfCXY}}
polygon { 
 4, 
<15,47,38><50,47,38><50,47,50><15,47,50>pigment { color surfCZ}}
cylinder{<15,47,38>,<15,0,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,47,38>,<50,47,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,46,38>,<50,46,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,45,38>,<50,45,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,44,38>,<50,44,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,43,38>,<50,43,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,42,38>,<50,42,38>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,34,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,34,42><50,34,42><50,0,42><0,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<0,34,42><0,34,50><0,0,50><0,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<0,34,42><50,34,42><50,34,50><0,34,50>pigment { color surfCZ}}
cylinder{<0,34,42>,<0,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,34,42>,<1,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,34,42>,<2,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,34,42>,<3,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,34,42>,<4,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,42>,<50,34,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,42>,<50,33,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,42>,<50,32,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,42>,<50,31,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,42>,<50,30,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,42>,<50,29,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,42>,<50,28,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,42>,<50,27,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,42>,<50,26,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,42>,<50,25,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,42>,<50,24,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,42>,<50,23,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,42>,<50,22,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,42>,<50,21,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,42>,<50,20,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,42>,<50,19,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,42>,<50,18,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,42>,<50,17,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,42>,<50,16,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,42>,<50,15,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,42>,<50,14,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,42>,<50,13,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,42>,<50,12,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,42>,<50,11,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,42>,<50,10,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,42>,<50,9,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,42>,<50,8,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,42>,<50,7,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,42>,<50,6,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,42>,<50,5,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,42>,<50,4,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,42>,<50,3,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,42>,<50,2,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,42>,<50,1,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,42>,<50,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,34,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,34,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,34,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,34,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,40,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,40,42><50,40,42><50,0,42><5,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<5,40,42><5,40,50><5,0,50><5,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<5,40,42><50,40,42><50,40,50><5,40,50>pigment { color surfCZ}}
cylinder{<5,40,42>,<5,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,40,42>,<6,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,40,42>,<50,40,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,39,42>,<50,39,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,38,42>,<50,38,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,37,42>,<50,37,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,36,42>,<50,36,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,35,42>,<50,35,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,34,42>,<50,34,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,40,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,41,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,41,42><50,41,42><50,0,42><7,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<7,41,42><7,41,50><7,0,50><7,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<7,41,42><50,41,42><50,41,50><7,41,50>pigment { color surfCZ}}
cylinder{<7,41,42>,<7,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,41,42>,<8,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,41,42>,<50,41,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,40,42>,<50,40,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,41,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,43,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,43,42><50,43,42><50,0,42><9,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<9,43,42><9,43,50><9,0,50><9,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<9,43,42><50,43,42><50,43,50><9,43,50>pigment { color surfCZ}}
cylinder{<9,43,42>,<9,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,43,42>,<10,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,43,42>,<11,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,43,42>,<12,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,43,42>,<13,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,43,42>,<50,43,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,42,42>,<50,42,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,41,42>,<50,41,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,43,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,43,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,43,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<13,43,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,49,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,49,42><50,49,42><50,0,42><14,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<14,49,42><14,49,50><14,0,50><14,0,42>pigment { color surfCXY}}
polygon { 
 4, 
<14,49,42><50,49,42><50,49,50><14,49,50>pigment { color surfCZ}}
cylinder{<14,49,42>,<14,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,49,42>,<15,0,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,49,42>,<50,49,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,48,42>,<50,48,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,47,42>,<50,47,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,46,42>,<50,46,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,45,42>,<50,45,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,44,42>,<50,44,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,43,42>,<50,43,42>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,49,42>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,35,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,35,44><50,35,44><50,0,44><0,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<0,35,44><0,35,50><0,0,50><0,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<0,35,44><50,35,44><50,35,50><0,35,50>pigment { color surfCZ}}
cylinder{<0,35,44>,<0,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,44>,<50,35,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,44>,<50,34,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,44>,<50,33,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,44>,<50,32,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,44>,<50,31,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,44>,<50,30,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,44>,<50,29,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,44>,<50,28,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,44>,<50,27,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,44>,<50,26,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,44>,<50,25,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,44>,<50,24,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,44>,<50,23,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,44>,<50,22,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,44>,<50,21,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,44>,<50,20,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,44>,<50,19,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,44>,<50,18,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,44>,<50,17,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,44>,<50,16,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,44>,<50,15,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,44>,<50,14,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,44>,<50,13,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,44>,<50,12,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,44>,<50,11,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,44>,<50,10,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,44>,<50,9,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,44>,<50,8,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,44>,<50,7,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,44>,<50,6,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,44>,<50,5,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,44>,<50,4,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,44>,<50,3,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,44>,<50,2,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,44>,<50,1,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,44>,<50,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,36,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,36,44><50,36,44><50,0,44><1,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<1,36,44><1,36,50><1,0,50><1,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<1,36,44><50,36,44><50,36,50><1,36,50>pigment { color surfCZ}}
cylinder{<1,36,44>,<1,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,36,44>,<2,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,36,44>,<50,36,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,35,44>,<50,35,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,36,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,37,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<3,37,44><50,37,44><50,0,44><3,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<3,37,44><3,37,50><3,0,50><3,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<3,37,44><50,37,44><50,37,50><3,37,50>pigment { color surfCZ}}
cylinder{<3,37,44>,<3,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,37,44>,<4,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,37,44>,<50,37,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,36,44>,<50,36,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<4,37,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,40,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,40,44><50,40,44><50,0,44><5,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<5,40,44><5,40,50><5,0,50><5,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<5,40,44><50,40,44><50,40,50><5,40,50>pigment { color surfCZ}}
cylinder{<5,40,44>,<5,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,40,44>,<6,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,40,44>,<50,40,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,39,44>,<50,39,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,38,44>,<50,38,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,37,44>,<50,37,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,40,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,42,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<7,42,44><50,42,44><50,0,44><7,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<7,42,44><7,42,50><7,0,50><7,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<7,42,44><50,42,44><50,42,50><7,42,50>pigment { color surfCZ}}
cylinder{<7,42,44>,<7,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,42,44>,<8,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,42,44>,<50,42,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,41,44>,<50,41,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,40,44>,<50,40,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<8,42,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<9,44,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,44,44><50,44,44><50,0,44><9,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<9,44,44><9,44,50><9,0,50><9,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<9,44,44><50,44,44><50,44,50><9,44,50>pigment { color surfCZ}}
cylinder{<9,44,44>,<9,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,44,44>,<50,44,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,43,44>,<50,43,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,42,44>,<50,42,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,45,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,45,44><50,45,44><50,0,44><10,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<10,45,44><10,45,50><10,0,50><10,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<10,45,44><50,45,44><50,45,50><10,45,50>pigment { color surfCZ}}
cylinder{<10,45,44>,<10,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,45,44>,<11,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,45,44>,<50,45,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,44,44>,<50,44,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,45,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,46,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,46,44><50,46,44><50,0,44><12,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<12,46,44><12,46,50><12,0,50><12,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<12,46,44><50,46,44><50,46,50><12,46,50>pigment { color surfCZ}}
cylinder{<12,46,44>,<12,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,46,44>,<13,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,46,44>,<50,46,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,45,44>,<50,45,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,46,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,49,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,49,44><50,49,44><50,0,44><14,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<14,49,44><14,49,50><14,0,50><14,0,44>pigment { color surfCXY}}
polygon { 
 4, 
<14,49,44><50,49,44><50,49,50><14,49,50>pigment { color surfCZ}}
cylinder{<14,49,44>,<14,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,49,44>,<15,0,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,49,44>,<50,49,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,48,44>,<50,48,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,47,44>,<50,47,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,46,44>,<50,46,44>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,49,44>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,41,46>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,41,46><50,41,46><50,0,46><0,0,46>pigment { color surfCXY}}
polygon { 
 4, 
<0,41,46><0,41,50><0,0,50><0,0,46>pigment { color surfCXY}}
polygon { 
 4, 
<0,41,46><50,41,46><50,41,50><0,41,50>pigment { color surfCZ}}
cylinder{<0,41,46>,<0,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,41,46>,<50,41,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,40,46>,<50,40,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,39,46>,<50,39,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,46>,<50,38,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,37,46>,<50,37,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,36,46>,<50,36,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,46>,<50,35,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,46>,<50,34,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,46>,<50,33,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,46>,<50,32,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,46>,<50,31,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,46>,<50,30,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,46>,<50,29,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,46>,<50,28,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,46>,<50,27,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,46>,<50,26,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,46>,<50,25,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,46>,<50,24,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,46>,<50,23,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,46>,<50,22,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,46>,<50,21,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,46>,<50,20,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,46>,<50,19,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,46>,<50,18,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,46>,<50,17,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,46>,<50,16,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,46>,<50,15,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,46>,<50,14,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,46>,<50,13,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,46>,<50,12,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,46>,<50,11,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,46>,<50,10,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,46>,<50,9,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,46>,<50,8,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,46>,<50,7,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,46>,<50,6,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,46>,<50,5,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,46>,<50,4,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,46>,<50,3,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,46>,<50,2,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,46>,<50,1,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,46>,<50,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,42,46>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,42,46><50,42,46><50,0,46><1,0,46>pigment { color surfCXY}}
polygon { 
 4, 
<1,42,46><1,42,50><1,0,50><1,0,46>pigment { color surfCXY}}
polygon { 
 4, 
<1,42,46><50,42,46><50,42,50><1,42,50>pigment { color surfCZ}}
cylinder{<1,42,46>,<1,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,42,46>,<2,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,42,46>,<3,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,42,46>,<4,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,42,46>,<5,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,42,46>,<50,42,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,41,46>,<50,41,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,42,46>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,42,46>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,42,46>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,42,46>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,47,46>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,47,46><50,47,46><50,0,46><6,0,46>pigment { color surfCXY}}
polygon { 
 4, 
<6,47,46><6,47,50><6,0,50><6,0,46>pigment { color surfCXY}}
polygon { 
 4, 
<6,47,46><50,47,46><50,47,50><6,47,50>pigment { color surfCZ}}
cylinder{<6,47,46>,<6,0,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,47,46>,<50,47,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,46,46>,<50,46,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,45,46>,<50,45,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,44,46>,<50,44,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,43,46>,<50,43,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,42,46>,<50,42,46>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,41,49>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,41,49><50,41,49><50,0,49><0,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<0,41,49><0,41,50><0,0,50><0,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<0,41,49><50,41,49><50,41,50><0,41,50>pigment { color surfCZ}}
cylinder{<0,41,49>,<0,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,41,49>,<50,41,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,40,49>,<50,40,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,39,49>,<50,39,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,49>,<50,38,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,37,49>,<50,37,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,36,49>,<50,36,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,49>,<50,35,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,49>,<50,34,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,49>,<50,33,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,49>,<50,32,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,49>,<50,31,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,49>,<50,30,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,49>,<50,29,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,49>,<50,28,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,49>,<50,27,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,49>,<50,26,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,49>,<50,25,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,49>,<50,24,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,49>,<50,23,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,49>,<50,22,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,49>,<50,21,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,49>,<50,20,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,49>,<50,19,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,49>,<50,18,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,49>,<50,17,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,49>,<50,16,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,49>,<50,15,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,49>,<50,14,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,49>,<50,13,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,49>,<50,12,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,49>,<50,11,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,49>,<50,10,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,49>,<50,9,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,49>,<50,8,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,49>,<50,7,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,49>,<50,6,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,49>,<50,5,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,49>,<50,4,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,49>,<50,3,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,49>,<50,2,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,49>,<50,1,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,49>,<50,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,42,49>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,42,49><50,42,49><50,0,49><1,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<1,42,49><1,42,50><1,0,50><1,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<1,42,49><50,42,49><50,42,50><1,42,50>pigment { color surfCZ}}
cylinder{<1,42,49>,<1,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,42,49>,<2,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,42,49>,<3,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,42,49>,<4,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,42,49>,<50,42,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,41,49>,<50,41,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,42,49>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,42,49>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,42,49>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,45,49>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,45,49><50,45,49><50,0,49><5,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<5,45,49><5,45,50><5,0,50><5,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<5,45,49><50,45,49><50,45,50><5,45,50>pigment { color surfCZ}}
cylinder{<5,45,49>,<5,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,45,49>,<50,45,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,44,49>,<50,44,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,43,49>,<50,43,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,42,49>,<50,42,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,47,49>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,47,49><50,47,49><50,0,49><6,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<6,47,49><6,47,50><6,0,50><6,0,49>pigment { color surfCXY}}
polygon { 
 4, 
<6,47,49><50,47,49><50,47,50><6,47,50>pigment { color surfCZ}}
cylinder{<6,47,49>,<6,0,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,47,49>,<50,47,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,46,49>,<50,46,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,45,49>,<50,45,49>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,43,50>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,43,50><50,43,50><50,0,50><0,0,50>pigment { color surfCXY}}
polygon { 
 4, 
<0,43,50><0,43,50><0,0,50><0,0,50>pigment { color surfCXY}}
polygon { 
 4, 
<0,43,50><50,43,50><50,43,50><0,43,50>pigment { color surfCZ}}
cylinder{<0,43,50>,<0,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,43,50>,<1,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,43,50>,<2,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,43,50>,<3,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,43,50>,<4,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,43,50>,<50,43,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,42,50>,<50,42,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,41,50>,<50,41,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,40,50>,<50,40,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,39,50>,<50,39,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,38,50>,<50,38,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,37,50>,<50,37,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,36,50>,<50,36,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,50>,<50,35,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,34,50>,<50,34,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,33,50>,<50,33,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,32,50>,<50,32,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,31,50>,<50,31,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,50>,<50,30,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,50>,<50,29,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,50>,<50,28,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,50>,<50,27,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,50>,<50,26,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,50>,<50,25,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,50>,<50,24,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,50>,<50,23,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,50>,<50,22,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,50>,<50,21,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,50>,<50,20,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,50>,<50,19,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,50>,<50,18,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,50>,<50,17,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,50>,<50,16,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,50>,<50,15,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,50>,<50,14,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,50>,<50,13,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,50>,<50,12,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,50>,<50,11,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,50>,<50,10,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,50>,<50,9,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,50>,<50,8,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,50>,<50,7,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,50>,<50,6,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,50>,<50,5,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,50>,<50,4,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,50>,<50,3,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,50>,<50,2,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,50>,<50,1,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,50>,<50,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,43,50>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,43,50>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,43,50>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,43,50>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<5,49,50>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,49,50><50,49,50><50,0,50><5,0,50>pigment { color surfCXY}}
polygon { 
 4, 
<5,49,50><5,49,50><5,0,50><5,0,50>pigment { color surfCXY}}
polygon { 
 4, 
<5,49,50><50,49,50><50,49,50><5,49,50>pigment { color surfCZ}}
cylinder{<5,49,50>,<5,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,49,50>,<6,0,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,49,50>,<50,49,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,48,50>,<50,48,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,47,50>,<50,47,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,46,50>,<50,46,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,45,50>,<50,45,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,44,50>,<50,44,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,43,50>,<50,43,50>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,49,50>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
