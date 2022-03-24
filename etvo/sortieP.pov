 #include "colors.inc" 
 #include "shapes.inc" 
 #include "math.inc" 
 #include "functions.inc" 
 #declare surfCXY = color rgb<0.6,0.6,0.6>;
 #declare surfCZ = color rgb<0.6,0.6,0.6>;
 #declare mainColor = color rgb<0.8,0.3,0.3>;
 #declare axisColor = color rgb<0,0,0>;
 camera {location <-10,10,-10>
look_at <2,2,2>}
light_source{<100,100,-200> rgb<1,1,1>*2}
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
   translate +4*y scale 1 } 
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 5*y scale 1 } 
text {ttf "timrom.ttf" "10 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 10*y scale 1 } 
text {ttf "timrom.ttf" "15 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 15*y scale 1 } 
text {ttf "timrom.ttf" "20 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 20*y scale 1 } 
text {ttf "timrom.ttf" "25 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 25*y scale 1 } 
text {ttf "timrom.ttf" "30 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 30*y scale 1 } 
text {ttf "timrom.ttf" "35 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 35*y scale 1 } 
text {ttf "timrom.ttf" "40 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 40*y scale 1 } 
text {ttf "timrom.ttf" "45 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*y  translate -1.5*z  translate 45*y scale 1 } 
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
cylinder{<0,0,0>,<0,50,0>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,0>,<1,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,0>,<2,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,0>,<3,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,0>,<4,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,0>,<5,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,0>,<5,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,0>,<6,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,0>,<7,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,0>,<8,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,0>,<9,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,0>,<10,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,0>,<10,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,0,0>,<11,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,0,0>,<12,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,0,0>,<13,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,0,0>,<14,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,0>,<15,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,0>,<15,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,0,0>,<16,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,0,0>,<17,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,0,0>,<18,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,0,0>,<19,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,0>,<20,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,0>,<20,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,0,0>,<21,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,0,0>,<22,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,0,0>,<23,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,0,0>,<24,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,0>,<25,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,0>,<25,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,0,0>,<26,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,0,0>,<27,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,0,0>,<28,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,0,0>,<29,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,0>,<30,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,0>,<30,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<31,0,0>,<31,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<32,0,0>,<32,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<33,0,0>,<33,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<34,0,0>,<34,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,0,0>,<35,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<35,0,0>,<35,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<36,0,0>,<36,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<37,0,0>,<37,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<38,0,0>,<38,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<39,0,0>,<39,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,0>,<40,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<40,0,0>,<40,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<41,0,0>,<41,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<42,0,0>,<42,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<43,0,0>,<43,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<44,0,0>,<44,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<45,0,0>,<45,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<45,0,0>,<45,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<46,0,0>,<46,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<47,0,0>,<47,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<48,0,0>,<48,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<49,0,0>,<49,0,50>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<50,0,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,1>,<50,0,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<50,0,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,3>,<50,0,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<50,0,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<50,0,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<50,0,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,7>,<50,0,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<50,0,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,9>,<50,0,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,10>,<50,0,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,11>,<50,0,11>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<50,0,12>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,13>,<50,0,13>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,14>,<50,0,14>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,15>,<50,0,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,16>,<50,0,16>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,17>,<50,0,17>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,18>,<50,0,18>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,19>,<50,0,19>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<50,0,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,21>,<50,0,21>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,22>,<50,0,22>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,23>,<50,0,23>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,24>,<50,0,24>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,25>,<50,0,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,26>,<50,0,26>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,27>,<50,0,27>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,28>,<50,0,28>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,29>,<50,0,29>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,30>,<50,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,31>,<50,0,31>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,32>,<50,0,32>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,33>,<50,0,33>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,34>,<50,0,34>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,35>,<50,0,35>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,36>,<50,0,36>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,37>,<50,0,37>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,38>,<50,0,38>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,39>,<50,0,39>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,40>,<50,0,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,41>,<50,0,41>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,42>,<50,0,42>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,43>,<50,0,43>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,44>,<50,0,44>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,45>,<50,0,45>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,46>,<50,0,46>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,47>,<50,0,47>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,48>,<50,0,48>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,49>,<50,0,49>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<50,0,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,0>,<0,5,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,0>,<50,5,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,0>,<0,10,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,0>,<50,10,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,0>,<0,15,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,0>,<50,15,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,0>,<0,20,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,0>,<50,20,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,0>,<0,25,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,0>,<50,25,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,0>,<0,30,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,30,0>,<50,30,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,0>,<0,35,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,35,0>,<50,35,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,40,0>,<0,40,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,40,0>,<50,40,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,45,0>,<0,45,50>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,45,0>,<50,45,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,50,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<0,50,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,10>,<0,50,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,15>,<0,50,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<0,50,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,25>,<0,50,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,30>,<0,50,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,35>,<0,50,35>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,40>,<0,50,40>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,45>,<0,50,45>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
