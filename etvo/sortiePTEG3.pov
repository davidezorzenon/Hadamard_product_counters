 #include "colors.inc" 
 #include "shapes.inc" 
 #include "math.inc" 
 #include "functions.inc" 
 #declare surfCXY = color rgb<0.6,0.6,0.6>;
 #declare surfCZ = color rgb<0.6,0.6,0.6>;
 #declare mainColor = color rgb<0.8,0.3,0.3>;
 #declare axisColor = color rgb<0,0,0>;
 camera {location <-10,10,-5>
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
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 5*x scale 1 }
text {ttf "timrom.ttf" "10 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 10*x scale 1 }
text {ttf "timrom.ttf" "15 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 15*x scale 1 }
text {ttf "timrom.ttf" "20 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 20*x scale 1 }
text {ttf "timrom.ttf" "25 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 25*x scale 1 }
cylinder{<0,0,0>,<30,0,0>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,30>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,30>,<0,30,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,0>,<1,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,30>,<1,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,0>,<2,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,30>,<2,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,0>,<3,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,30>,<3,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,0>,<4,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,30>,<4,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,0>,<5,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,30>,<5,30,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,0>,<6,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,30>,<6,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,0>,<7,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,30>,<7,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,0>,<8,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,30>,<8,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,0>,<9,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,30>,<9,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,0>,<10,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,0,30>,<10,30,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,0,0>,<11,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,0,30>,<11,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,0,0>,<12,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,0,30>,<12,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,0,0>,<13,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,0,30>,<13,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,0,0>,<14,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,0,30>,<14,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,0>,<15,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,0,30>,<15,30,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,0,0>,<16,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,0,30>,<16,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,0,0>,<17,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,0,30>,<17,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,0,0>,<18,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,0,30>,<18,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,0,0>,<19,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,0,30>,<19,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,0>,<20,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,0,30>,<20,30,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,0,0>,<21,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,0,30>,<21,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,0,0>,<22,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,0,30>,<22,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,0,0>,<23,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,0,30>,<23,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,0,0>,<24,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,0,30>,<24,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,0>,<25,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,0,30>,<25,30,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,0,0>,<26,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,0,30>,<26,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,0,0>,<27,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,0,30>,<27,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,0,0>,<28,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,0,30>,<28,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,0,0>,<29,0,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<29,0,30>,<29,30,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<30,0,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,0>,<30,30,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,1>,<30,0,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,1>,<30,30,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<30,0,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,2>,<30,30,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,3>,<30,0,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,3>,<30,30,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<30,0,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,4>,<30,30,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<30,0,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,5>,<30,30,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<30,0,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,6>,<30,30,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,7>,<30,0,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,7>,<30,30,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<30,0,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,8>,<30,30,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,9>,<30,0,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,9>,<30,30,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,10>,<30,0,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,10>,<30,30,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,11>,<30,0,11>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,11>,<30,30,11>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<30,0,12>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,12>,<30,30,12>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,13>,<30,0,13>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,13>,<30,30,13>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,14>,<30,0,14>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,14>,<30,30,14>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,15>,<30,0,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,15>,<30,30,15>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,16>,<30,0,16>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,16>,<30,30,16>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,17>,<30,0,17>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,17>,<30,30,17>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,18>,<30,0,18>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,18>,<30,30,18>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,19>,<30,0,19>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,19>,<30,30,19>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<30,0,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,20>,<30,30,20>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,21>,<30,0,21>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,21>,<30,30,21>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,22>,<30,0,22>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,22>,<30,30,22>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,23>,<30,0,23>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,23>,<30,30,23>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,24>,<30,0,24>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,24>,<30,30,24>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,25>,<30,0,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,25>,<30,30,25>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,26>,<30,0,26>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,26>,<30,30,26>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,27>,<30,0,27>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,27>,<30,30,27>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,28>,<30,0,28>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,28>,<30,30,28>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,29>,<30,0,29>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,29>,<30,30,29>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,30>,<30,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,0,0>,<30,0,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,30>,<30,1,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,1,0>,<30,1,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,30>,<30,2,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,2,0>,<30,2,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,30>,<30,3,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,3,0>,<30,3,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,30>,<30,4,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,4,0>,<30,4,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,30>,<30,5,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,5,0>,<30,5,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,30>,<30,6,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,6,0>,<30,6,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,30>,<30,7,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,7,0>,<30,7,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,30>,<30,8,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,8,0>,<30,8,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,30>,<30,9,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,9,0>,<30,9,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,30>,<30,10,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,10,0>,<30,10,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,30>,<30,11,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,11,0>,<30,11,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,30>,<30,12,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,12,0>,<30,12,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,30>,<30,13,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,13,0>,<30,13,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,30>,<30,14,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,14,0>,<30,14,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,30>,<30,15,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,15,0>,<30,15,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,30>,<30,16,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,16,0>,<30,16,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,30>,<30,17,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,17,0>,<30,17,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,30>,<30,18,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,18,0>,<30,18,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,30>,<30,19,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,19,0>,<30,19,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,30>,<30,20,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,20,0>,<30,20,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,30>,<30,21,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,21,0>,<30,21,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,30>,<30,22,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,22,0>,<30,22,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,23,30>,<30,23,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,23,0>,<30,23,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,24,30>,<30,24,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,24,0>,<30,24,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,25,30>,<30,25,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,25,0>,<30,25,30>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,26,30>,<30,26,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,26,0>,<30,26,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,27,30>,<30,27,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,27,0>,<30,27,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,28,30>,<30,28,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,28,0>,<30,28,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,29,30>,<30,29,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<30,29,0>,<30,29,30>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,1,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,1,2><30,1,2><30,0,2><0,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<0,1,2><0,1,30><0,0,30><0,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<0,1,2><30,1,2><30,1,30><0,1,30>pigment { color surfCZ}}
cylinder{<0,1,2>,<0,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,2>,<30,1,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<30,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,2>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,2>,<0,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,3>,<0,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,4>,<0,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,5>,<0,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,6>,<0,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,7>,<0,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,2,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,2,2><30,2,2><30,0,2><1,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<1,2,2><1,2,30><1,0,30><1,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<1,2,2><30,2,2><30,2,30><1,2,30>pigment { color surfCZ}}
cylinder{<1,2,2>,<1,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,2,2>,<2,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,2,2>,<3,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,2>,<30,2,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,1,2>,<30,1,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,2>,<1,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,1,2>,<1,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,2>,<1,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,3>,<1,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,4>,<1,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,5>,<1,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,6>,<1,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,7>,<1,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,9>,<1,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,10>,<1,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,11>,<1,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,2,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,2,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,2,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,5,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,5,2><30,5,2><30,0,2><4,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<4,5,2><4,5,30><4,0,30><4,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<4,5,2><30,5,2><30,5,30><4,5,30>pigment { color surfCZ}}
cylinder{<4,5,2>,<4,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,2>,<30,5,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,4,2>,<30,4,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,3,2>,<30,3,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,2,2>,<30,2,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,2>,<4,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,4,2>,<4,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,3,2>,<4,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,2,2>,<4,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,2>,<4,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,3>,<4,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,4>,<4,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,5>,<4,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,6>,<4,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,7>,<4,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,8>,<4,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,9>,<4,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,10>,<4,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,11>,<4,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,12>,<4,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,13>,<4,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,14>,<4,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,15>,<4,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,16>,<4,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,6,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,6,2><30,6,2><30,0,2><5,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<5,6,2><5,6,30><5,0,30><5,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<5,6,2><30,6,2><30,6,30><5,6,30>pigment { color surfCZ}}
cylinder{<5,6,2>,<5,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,6,2>,<6,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,6,2>,<7,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,2>,<30,6,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,5,2>,<30,5,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,2>,<5,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,5,2>,<5,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,2>,<5,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,3>,<5,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,4>,<5,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,5>,<5,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,6>,<5,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,7>,<5,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,8>,<5,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,9>,<5,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,10>,<5,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,11>,<5,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,12>,<5,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,13>,<5,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,14>,<5,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,15>,<5,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,16>,<5,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,17>,<5,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,18>,<5,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,19>,<5,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,20>,<5,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,21>,<5,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,22>,<5,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,23>,<5,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,24>,<5,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,25>,<5,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,26>,<5,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,27>,<5,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,28>,<5,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,29>,<5,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,6,30>,<5,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,6,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,6,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,9,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,9,2><30,9,2><30,0,2><8,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<8,9,2><8,9,30><8,0,30><8,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<8,9,2><30,9,2><30,9,30><8,9,30>pigment { color surfCZ}}
cylinder{<8,9,2>,<8,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,2>,<30,9,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,8,2>,<30,8,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,7,2>,<30,7,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,6,2>,<30,6,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,2>,<8,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,8,2>,<8,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,7,2>,<8,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,6,2>,<8,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,2>,<8,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,3>,<8,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,4>,<8,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,5>,<8,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,6>,<8,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,7>,<8,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,9>,<8,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,10,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,10,2><30,10,2><30,0,2><9,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<9,10,2><9,10,30><9,0,30><9,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<9,10,2><30,10,2><30,10,30><9,10,30>pigment { color surfCZ}}
cylinder{<9,10,2>,<9,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,10,2>,<10,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,10,2>,<11,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,2>,<30,10,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,9,2>,<30,9,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,2>,<9,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,9,2>,<9,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,2>,<9,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,3>,<9,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,4>,<9,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,5>,<9,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,6>,<9,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,7>,<9,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,8>,<9,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,9>,<9,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,10>,<9,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,11>,<9,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,12>,<9,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,13>,<9,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,14>,<9,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,15>,<9,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,16>,<9,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,17>,<9,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,18>,<9,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,19>,<9,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,20>,<9,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,21>,<9,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,22>,<9,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,23>,<9,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,24>,<9,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,25>,<9,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,26>,<9,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,27>,<9,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,28>,<9,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,29>,<9,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,10,30>,<9,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,10,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,10,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,13,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,13,2><30,13,2><30,0,2><12,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<12,13,2><12,13,30><12,0,30><12,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<12,13,2><30,13,2><30,13,30><12,13,30>pigment { color surfCZ}}
cylinder{<12,13,2>,<12,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,2>,<30,13,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,12,2>,<30,12,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,11,2>,<30,11,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,10,2>,<30,10,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,2>,<12,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,12,2>,<12,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,11,2>,<12,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,10,2>,<12,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,2>,<12,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,3>,<12,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,4>,<12,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,5>,<12,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,6>,<12,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,7>,<12,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,8>,<12,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,9>,<12,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,10>,<12,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,11>,<12,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,12>,<12,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,13>,<12,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,14>,<12,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,15>,<12,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,16>,<12,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,17>,<12,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,18>,<12,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,19>,<12,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,20>,<12,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,21>,<12,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,22>,<12,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,23>,<12,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,24>,<12,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,25>,<12,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,26>,<12,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,27>,<12,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,28>,<12,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,29>,<12,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,30>,<12,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,14,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,14,2><30,14,2><30,0,2><13,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<13,14,2><13,14,30><13,0,30><13,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<13,14,2><30,14,2><30,14,30><13,14,30>pigment { color surfCZ}}
cylinder{<13,14,2>,<13,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,14,2>,<14,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,14,2>,<15,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,2>,<30,14,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,13,2>,<30,13,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,2>,<13,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,13,2>,<13,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,2>,<13,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,3>,<13,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,4>,<13,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,5>,<13,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,6>,<13,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,7>,<13,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,9>,<13,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,10>,<13,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,11>,<13,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,14,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,14,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,14,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,17,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,17,2><30,17,2><30,0,2><16,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<16,17,2><16,17,30><16,0,30><16,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<16,17,2><30,17,2><30,17,30><16,17,30>pigment { color surfCZ}}
cylinder{<16,17,2>,<16,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,2>,<30,17,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,16,2>,<30,16,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,15,2>,<30,15,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,14,2>,<30,14,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,2>,<16,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,16,2>,<16,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,15,2>,<16,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,14,2>,<16,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,2>,<16,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,3>,<16,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,4>,<16,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,5>,<16,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,6>,<16,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,7>,<16,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,9>,<16,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,18,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<17,18,2><30,18,2><30,0,2><17,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<17,18,2><17,18,30><17,0,30><17,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<17,18,2><30,18,2><30,18,30><17,18,30>pigment { color surfCZ}}
cylinder{<17,18,2>,<17,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,18,2>,<18,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,18,2>,<19,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,2>,<30,18,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,17,2>,<30,17,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,2>,<17,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,17,2>,<17,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,2>,<17,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,3>,<17,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,4>,<17,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,5>,<17,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,6>,<17,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,7>,<17,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,8>,<17,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,9>,<17,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,10>,<17,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,11>,<17,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,12>,<17,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,13>,<17,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,14>,<17,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,15>,<17,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,16>,<17,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,17>,<17,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,18>,<17,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,19>,<17,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,20>,<17,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,21>,<17,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,22>,<17,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,23>,<17,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,24>,<17,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,25>,<17,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,26>,<17,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,27>,<17,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,28>,<17,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,29>,<17,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,18,30>,<17,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<18,18,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<19,18,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,21,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,21,2><30,21,2><30,0,2><20,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<20,21,2><20,21,30><20,0,30><20,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<20,21,2><30,21,2><30,21,30><20,21,30>pigment { color surfCZ}}
cylinder{<20,21,2>,<20,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,2>,<30,21,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,20,2>,<30,20,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,19,2>,<30,19,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,18,2>,<30,18,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,2>,<20,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,20,2>,<20,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,19,2>,<20,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,18,2>,<20,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,2>,<20,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,3>,<20,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,4>,<20,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,5>,<20,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,6>,<20,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,7>,<20,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,8>,<20,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,9>,<20,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,10>,<20,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,11>,<20,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,12>,<20,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,13>,<20,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,14>,<20,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,15>,<20,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,16>,<20,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,17>,<20,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,18>,<20,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,19>,<20,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,20>,<20,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,21>,<20,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,22>,<20,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,23>,<20,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,24>,<20,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,25>,<20,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,26>,<20,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,27>,<20,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,28>,<20,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,29>,<20,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,30>,<20,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,22,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<21,22,2><30,22,2><30,0,2><21,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<21,22,2><21,22,30><21,0,30><21,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<21,22,2><30,22,2><30,22,30><21,22,30>pigment { color surfCZ}}
cylinder{<21,22,2>,<21,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,22,2>,<22,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,22,2>,<23,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,2>,<30,22,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,21,2>,<30,21,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,2>,<21,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,21,2>,<21,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,2>,<21,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,3>,<21,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,4>,<21,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,5>,<21,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,6>,<21,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,7>,<21,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,9>,<21,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,10>,<21,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,11>,<21,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,12>,<21,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,13>,<21,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,14>,<21,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,15>,<21,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,16>,<21,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,17>,<21,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,18>,<21,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,19>,<21,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,20>,<21,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,21>,<21,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,22>,<21,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,23>,<21,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,24>,<21,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,25>,<21,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,26>,<21,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,27>,<21,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,28>,<21,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,29>,<21,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,22,30>,<21,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<22,22,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,22,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<24,25,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<24,25,2><30,25,2><30,0,2><24,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<24,25,2><24,25,30><24,0,30><24,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<24,25,2><30,25,2><30,25,30><24,25,30>pigment { color surfCZ}}
cylinder{<24,25,2>,<24,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,2>,<30,25,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,24,2>,<30,24,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,23,2>,<30,23,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,22,2>,<30,22,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,2>,<24,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,24,2>,<24,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,23,2>,<24,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,22,2>,<24,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,2>,<24,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,3>,<24,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,4>,<24,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,5>,<24,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,6>,<24,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,7>,<24,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,8>,<24,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,9>,<24,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,10>,<24,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,11>,<24,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,12>,<24,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,13>,<24,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,14>,<24,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,15>,<24,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,16>,<24,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,17>,<24,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,18>,<24,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,19>,<24,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,20>,<24,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,21>,<24,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,22>,<24,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,23>,<24,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,24>,<24,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,25>,<24,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,26>,<24,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,27>,<24,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,28>,<24,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,29>,<24,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,30>,<24,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<25,26,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<25,26,2><30,26,2><30,0,2><25,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<25,26,2><25,26,30><25,0,30><25,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<25,26,2><30,26,2><30,26,30><25,26,30>pigment { color surfCZ}}
cylinder{<25,26,2>,<25,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,26,2>,<26,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,26,2>,<27,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,2>,<30,26,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,25,2>,<30,25,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,2>,<25,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,25,2>,<25,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,2>,<25,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,3>,<25,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,4>,<25,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,5>,<25,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,6>,<25,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,7>,<25,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,8>,<25,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,9>,<25,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,10>,<25,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,11>,<25,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,12>,<25,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,13>,<25,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,14>,<25,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,15>,<25,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,16>,<25,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,17>,<25,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,18>,<25,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,19>,<25,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,20>,<25,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,21>,<25,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,22>,<25,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,23>,<25,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,24>,<25,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,25>,<25,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,26>,<25,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,27>,<25,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,28>,<25,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,29>,<25,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,26,30>,<25,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<26,26,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,26,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<28,29,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<28,29,2><30,29,2><30,0,2><28,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<28,29,2><28,29,30><28,0,30><28,0,2>pigment { color surfCXY}}
polygon { 
 4, 
<28,29,2><30,29,2><30,29,30><28,29,30>pigment { color surfCZ}}
cylinder{<28,29,2>,<28,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,2>,<30,29,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,28,2>,<30,28,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,27,2>,<30,27,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,26,2>,<30,26,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,2>,<28,29,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,28,2>,<28,28,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,27,2>,<28,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,26,2>,<28,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,2>,<28,0,2>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,3>,<28,0,3>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,4>,<28,0,4>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,5>,<28,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,6>,<28,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,7>,<28,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,8>,<28,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,9>,<28,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,10>,<28,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,11>,<28,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,12>,<28,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,13>,<28,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,14>,<28,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,15>,<28,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,16>,<28,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,17>,<28,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,18>,<28,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,19>,<28,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,20>,<28,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,21>,<28,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,22>,<28,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,23>,<28,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,24>,<28,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,25>,<28,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,26>,<28,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,27>,<28,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,28>,<28,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,29>,<28,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<28,29,30>,<28,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,3,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,3,5><30,3,5><30,0,5><0,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<0,3,5><0,3,30><0,0,30><0,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<0,3,5><30,3,5><30,3,30><0,3,30>pigment { color surfCZ}}
cylinder{<0,3,5>,<0,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,3,5>,<1,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,3,5>,<2,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,3,5>,<3,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,5>,<30,3,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,5>,<30,2,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,5>,<30,1,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<30,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,5>,<0,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,5>,<0,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,5>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,5>,<0,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,6>,<0,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,7>,<0,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,3,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,3,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,3,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,7,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,7,5><30,7,5><30,0,5><4,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<4,7,5><4,7,30><4,0,30><4,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<4,7,5><30,7,5><30,7,30><4,7,30>pigment { color surfCZ}}
cylinder{<4,7,5>,<4,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,7,5>,<5,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,7,5>,<6,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,7,5>,<7,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,5>,<30,7,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,6,5>,<30,6,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,5>,<30,5,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,4,5>,<30,4,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,3,5>,<30,3,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,5>,<4,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,6,5>,<4,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,5,5>,<4,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,4,5>,<4,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,3,5>,<4,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,5>,<4,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,6>,<4,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,7>,<4,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,8>,<4,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,9>,<4,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,10>,<4,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,11>,<4,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,12>,<4,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,13>,<4,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,14>,<4,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,15>,<4,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,16>,<4,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,7,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,7,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,7,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,7,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,11,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,11,5><30,11,5><30,0,5><8,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<8,11,5><8,11,30><8,0,30><8,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<8,11,5><30,11,5><30,11,30><8,11,30>pigment { color surfCZ}}
cylinder{<8,11,5>,<8,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,11,5>,<9,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,11,5>,<10,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,11,5>,<11,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,5>,<30,11,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,10,5>,<30,10,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,5>,<30,9,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,8,5>,<30,8,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,7,5>,<30,7,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,5>,<8,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,10,5>,<8,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,9,5>,<8,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,8,5>,<8,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,7,5>,<8,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,5>,<8,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,6>,<8,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,7>,<8,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,9>,<8,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,10>,<8,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,11>,<8,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,11,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,11,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,11,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,11,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,15,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,15,5><30,15,5><30,0,5><12,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<12,15,5><12,15,30><12,0,30><12,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<12,15,5><30,15,5><30,15,30><12,15,30>pigment { color surfCZ}}
cylinder{<12,15,5>,<12,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,15,5>,<13,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,15,5>,<14,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,15,5>,<15,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,5>,<30,15,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,14,5>,<30,14,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,5>,<30,13,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,12,5>,<30,12,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,11,5>,<30,11,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,5>,<12,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,14,5>,<12,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,13,5>,<12,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,12,5>,<12,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,11,5>,<12,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,5>,<12,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,6>,<12,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,7>,<12,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,8>,<12,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,9>,<12,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,10>,<12,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,11>,<12,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,12>,<12,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,13>,<12,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,14>,<12,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,15>,<12,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,16>,<12,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,17>,<12,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,18>,<12,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,19>,<12,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,20>,<12,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,21>,<12,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,22>,<12,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,23>,<12,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,24>,<12,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,25>,<12,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,26>,<12,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,27>,<12,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,28>,<12,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,29>,<12,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,15,30>,<12,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,15,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,15,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,15,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,19,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,19,5><30,19,5><30,0,5><16,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<16,19,5><16,19,30><16,0,30><16,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<16,19,5><30,19,5><30,19,30><16,19,30>pigment { color surfCZ}}
cylinder{<16,19,5>,<16,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,19,5>,<17,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,19,5>,<18,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,19,5>,<19,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,5>,<30,19,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,18,5>,<30,18,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,5>,<30,17,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,16,5>,<30,16,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,15,5>,<30,15,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,5>,<16,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,18,5>,<16,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,17,5>,<16,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,16,5>,<16,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,15,5>,<16,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,5>,<16,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,6>,<16,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,7>,<16,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,9>,<16,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,10>,<16,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,11>,<16,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,13>,<16,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,14>,<16,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,15>,<16,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,16>,<16,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,17>,<16,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,18>,<16,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,19>,<16,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,20>,<16,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,21>,<16,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,22>,<16,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,23>,<16,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,24>,<16,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,25>,<16,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,26>,<16,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,27>,<16,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,28>,<16,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,29>,<16,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,19,30>,<16,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<17,19,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,19,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<19,19,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,23,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,23,5><30,23,5><30,0,5><20,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<20,23,5><20,23,30><20,0,30><20,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<20,23,5><30,23,5><30,23,30><20,23,30>pigment { color surfCZ}}
cylinder{<20,23,5>,<20,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,23,5>,<21,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,23,5>,<22,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,23,5>,<23,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,5>,<30,23,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,22,5>,<30,22,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,5>,<30,21,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,20,5>,<30,20,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,19,5>,<30,19,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,5>,<20,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,22,5>,<20,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,21,5>,<20,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,20,5>,<20,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,19,5>,<20,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,5>,<20,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,6>,<20,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,7>,<20,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,8>,<20,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,9>,<20,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,10>,<20,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,11>,<20,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,12>,<20,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,13>,<20,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,14>,<20,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,15>,<20,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,16>,<20,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,17>,<20,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,18>,<20,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,19>,<20,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,20>,<20,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,21>,<20,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,22>,<20,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,23>,<20,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,24>,<20,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,25>,<20,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,26>,<20,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,27>,<20,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,28>,<20,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,29>,<20,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,23,30>,<20,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,23,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,23,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<23,23,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<24,27,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<24,27,5><30,27,5><30,0,5><24,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<24,27,5><24,27,30><24,0,30><24,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<24,27,5><30,27,5><30,27,30><24,27,30>pigment { color surfCZ}}
cylinder{<24,27,5>,<24,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<25,27,5>,<25,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<26,27,5>,<26,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<27,27,5>,<27,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,5>,<30,27,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,26,5>,<30,26,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,5>,<30,25,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,24,5>,<30,24,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,23,5>,<30,23,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,5>,<24,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,26,5>,<24,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,25,5>,<24,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,24,5>,<24,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,23,5>,<24,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,5>,<24,0,5>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,6>,<24,0,6>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,7>,<24,0,7>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,8>,<24,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,9>,<24,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,10>,<24,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,11>,<24,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,12>,<24,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,13>,<24,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,14>,<24,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,15>,<24,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,16>,<24,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,17>,<24,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,18>,<24,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,19>,<24,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,20>,<24,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,21>,<24,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,22>,<24,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,23>,<24,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,24>,<24,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,25>,<24,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,26>,<24,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,27>,<24,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,28>,<24,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,29>,<24,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<24,27,30>,<24,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<25,27,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<26,27,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<27,27,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,7,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,7,8><30,7,8><30,0,8><0,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<0,7,8><0,7,30><0,0,30><0,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<0,7,8><30,7,8><30,7,30><0,7,30>pigment { color surfCZ}}
cylinder{<0,7,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,7,8>,<1,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,8>,<30,7,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,8>,<30,6,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,8>,<30,5,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,8>,<30,4,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,8>,<30,3,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,8>,<30,2,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,8>,<30,1,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<30,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,8>,<0,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,8>,<0,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,8>,<0,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,8>,<0,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,8>,<0,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,8>,<0,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,8>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,8>,<0,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,9>,<0,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,10>,<0,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,11>,<0,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,7,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,9,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,9,8><30,9,8><30,0,8><2,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<2,9,8><2,9,30><2,0,30><2,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<2,9,8><30,9,8><30,9,30><2,9,30>pigment { color surfCZ}}
cylinder{<2,9,8>,<2,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,9,8>,<3,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,8>,<30,9,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,8,8>,<30,8,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,7,8>,<30,7,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,8>,<2,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,8,8>,<2,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,7,8>,<2,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,8>,<2,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,9>,<2,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,10>,<2,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,11>,<2,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,12>,<2,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,13>,<2,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,14>,<2,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,15>,<2,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,16>,<2,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,17>,<2,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,18>,<2,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,19>,<2,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,20>,<2,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,21>,<2,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,22>,<2,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,23>,<2,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,24>,<2,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,25>,<2,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,26>,<2,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,27>,<2,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,28>,<2,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,29>,<2,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,9,30>,<2,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,9,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,11,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,11,8><30,11,8><30,0,8><4,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<4,11,8><4,11,30><4,0,30><4,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<4,11,8><30,11,8><30,11,30><4,11,30>pigment { color surfCZ}}
cylinder{<4,11,8>,<4,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,11,8>,<5,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,8>,<30,11,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,10,8>,<30,10,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,9,8>,<30,9,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,8>,<4,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,10,8>,<4,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,9,8>,<4,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,8>,<4,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,9>,<4,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,10>,<4,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,11>,<4,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,12>,<4,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,13>,<4,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,14>,<4,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,15>,<4,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,16>,<4,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,11,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,13,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,13,8><30,13,8><30,0,8><6,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<6,13,8><6,13,30><6,0,30><6,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<6,13,8><30,13,8><30,13,30><6,13,30>pigment { color surfCZ}}
cylinder{<6,13,8>,<6,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,13,8>,<7,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,8>,<30,13,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,12,8>,<30,12,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,11,8>,<30,11,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,13,8>,<6,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,12,8>,<6,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,11,8>,<6,11,30>,0.02
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
sphere{<7,13,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,15,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,15,8><30,15,8><30,0,8><8,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<8,15,8><8,15,30><8,0,30><8,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<8,15,8><30,15,8><30,15,30><8,15,30>pigment { color surfCZ}}
cylinder{<8,15,8>,<8,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,15,8>,<9,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,8>,<30,15,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,14,8>,<30,14,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,13,8>,<30,13,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,8>,<8,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,14,8>,<8,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,13,8>,<8,13,30>,0.02
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
sphere{<9,15,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,17,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,17,8><30,17,8><30,0,8><10,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<10,17,8><10,17,30><10,0,30><10,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<10,17,8><30,17,8><30,17,30><10,17,30>pigment { color surfCZ}}
cylinder{<10,17,8>,<10,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,17,8>,<11,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,8>,<30,17,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,16,8>,<30,16,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,15,8>,<30,15,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,8>,<10,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,16,8>,<10,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,15,8>,<10,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,8>,<10,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,9>,<10,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,10>,<10,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,11>,<10,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,12>,<10,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,13>,<10,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,14>,<10,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,15>,<10,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,16>,<10,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,17>,<10,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,18>,<10,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,19>,<10,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,20>,<10,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,21>,<10,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,22>,<10,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,23>,<10,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,24>,<10,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,25>,<10,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,26>,<10,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,27>,<10,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,28>,<10,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,29>,<10,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,17,30>,<10,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,17,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,19,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,19,8><30,19,8><30,0,8><12,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<12,19,8><12,19,30><12,0,30><12,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<12,19,8><30,19,8><30,19,30><12,19,30>pigment { color surfCZ}}
cylinder{<12,19,8>,<12,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,19,8>,<13,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,8>,<30,19,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,18,8>,<30,18,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,17,8>,<30,17,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,8>,<12,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,18,8>,<12,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,17,8>,<12,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,8>,<12,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,9>,<12,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,10>,<12,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,11>,<12,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,12>,<12,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,13>,<12,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,14>,<12,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,15>,<12,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,16>,<12,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,17>,<12,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,18>,<12,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,19>,<12,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,20>,<12,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,21>,<12,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,22>,<12,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,23>,<12,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,24>,<12,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,25>,<12,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,26>,<12,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,27>,<12,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,28>,<12,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,29>,<12,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,30>,<12,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,19,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<14,21,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,21,8><30,21,8><30,0,8><14,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<14,21,8><14,21,30><14,0,30><14,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<14,21,8><30,21,8><30,21,30><14,21,30>pigment { color surfCZ}}
cylinder{<14,21,8>,<14,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,21,8>,<15,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,8>,<30,21,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,20,8>,<30,20,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,19,8>,<30,19,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,8>,<14,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,20,8>,<14,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,19,8>,<14,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,8>,<14,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,9>,<14,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,10>,<14,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,11>,<14,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,12>,<14,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,13>,<14,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,14>,<14,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,15>,<14,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,16>,<14,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,17>,<14,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,18>,<14,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,19>,<14,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,20>,<14,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,21>,<14,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,22>,<14,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,23>,<14,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,24>,<14,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,25>,<14,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,26>,<14,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,27>,<14,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,28>,<14,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,29>,<14,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,21,30>,<14,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,21,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,23,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,23,8><30,23,8><30,0,8><16,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<16,23,8><16,23,30><16,0,30><16,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<16,23,8><30,23,8><30,23,30><16,23,30>pigment { color surfCZ}}
cylinder{<16,23,8>,<16,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,23,8>,<17,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,8>,<30,23,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,22,8>,<30,22,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,21,8>,<30,21,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,8>,<16,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,22,8>,<16,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,21,8>,<16,21,30>,0.02
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
sphere{<17,23,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<18,25,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<18,25,8><30,25,8><30,0,8><18,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<18,25,8><18,25,30><18,0,30><18,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<18,25,8><30,25,8><30,25,30><18,25,30>pigment { color surfCZ}}
cylinder{<18,25,8>,<18,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,25,8>,<19,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,8>,<30,25,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,24,8>,<30,24,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,23,8>,<30,23,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,25,8>,<18,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,24,8>,<18,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,23,8>,<18,23,30>,0.02
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
sphere{<19,25,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<20,27,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<20,27,8><30,27,8><30,0,8><20,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<20,27,8><20,27,30><20,0,30><20,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<20,27,8><30,27,8><30,27,30><20,27,30>pigment { color surfCZ}}
cylinder{<20,27,8>,<20,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<21,27,8>,<21,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,8>,<30,27,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,26,8>,<30,26,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,25,8>,<30,25,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,8>,<20,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,26,8>,<20,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,25,8>,<20,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,8>,<20,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,9>,<20,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,10>,<20,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,11>,<20,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,12>,<20,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,13>,<20,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,14>,<20,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,15>,<20,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,16>,<20,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,17>,<20,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,18>,<20,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,19>,<20,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,20>,<20,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,21>,<20,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,22>,<20,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,23>,<20,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,24>,<20,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,25>,<20,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,26>,<20,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,27>,<20,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,28>,<20,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,29>,<20,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<20,27,30>,<20,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<21,27,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<22,29,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<22,29,8><30,29,8><30,0,8><22,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<22,29,8><22,29,30><22,0,30><22,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<22,29,8><30,29,8><30,29,30><22,29,30>pigment { color surfCZ}}
cylinder{<22,29,8>,<22,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<23,29,8>,<23,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,8>,<30,29,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,28,8>,<30,28,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,27,8>,<30,27,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,8>,<22,29,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,28,8>,<22,28,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,27,8>,<22,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,8>,<22,0,8>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,9>,<22,0,9>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,10>,<22,0,10>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,11>,<22,0,11>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,12>,<22,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,13>,<22,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,14>,<22,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,15>,<22,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,16>,<22,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,17>,<22,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,18>,<22,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,19>,<22,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,20>,<22,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,21>,<22,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,22>,<22,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,23>,<22,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,24>,<22,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,25>,<22,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,26>,<22,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,27>,<22,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,28>,<22,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,29>,<22,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<22,29,30>,<22,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<23,29,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,10,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,10,12><30,10,12><30,0,12><0,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<0,10,12><0,10,30><0,0,30><0,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<0,10,12><30,10,12><30,10,30><0,10,30>pigment { color surfCZ}}
cylinder{<0,10,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,12>,<30,10,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,12>,<30,9,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,12>,<30,8,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,12>,<30,7,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,12>,<30,6,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,12>,<30,5,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,12>,<30,4,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,12>,<30,3,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,12>,<30,2,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,12>,<30,1,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<30,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,12>,<0,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,12>,<0,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,12>,<0,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,12>,<0,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,12>,<0,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,12>,<0,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,12>,<0,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,12>,<0,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,12>,<0,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,12>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,12>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,12>,<0,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,14>,<0,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,11,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,11,12><30,11,12><30,0,12><1,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<1,11,12><1,11,30><1,0,30><1,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<1,11,12><30,11,12><30,11,30><1,11,30>pigment { color surfCZ}}
cylinder{<1,11,12>,<1,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,11,12>,<2,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,11,12>,<3,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,12>,<30,11,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,10,12>,<30,10,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,11,12>,<1,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,10,12>,<1,10,30>,0.02
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
sphere{<2,11,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,11,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,14,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,14,12><30,14,12><30,0,12><4,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<4,14,12><4,14,30><4,0,30><4,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<4,14,12><30,14,12><30,14,30><4,14,30>pigment { color surfCZ}}
cylinder{<4,14,12>,<4,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,12>,<30,14,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,13,12>,<30,13,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,12,12>,<30,12,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,12>,<30,11,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,12>,<4,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,13,12>,<4,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,12,12>,<4,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,11,12>,<4,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,12>,<4,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,13>,<4,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,14>,<4,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,15>,<4,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,16>,<4,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,14,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,15,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,15,12><30,15,12><30,0,12><5,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<5,15,12><5,15,30><5,0,30><5,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<5,15,12><30,15,12><30,15,30><5,15,30>pigment { color surfCZ}}
cylinder{<5,15,12>,<5,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,15,12>,<6,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,15,12>,<7,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,12>,<30,15,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,14,12>,<30,14,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,12>,<5,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,14,12>,<5,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,12>,<5,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,13>,<5,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,14>,<5,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,15>,<5,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,16>,<5,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,17>,<5,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,18>,<5,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,19>,<5,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,20>,<5,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,21>,<5,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,22>,<5,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,23>,<5,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,24>,<5,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,25>,<5,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,26>,<5,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,27>,<5,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,28>,<5,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,29>,<5,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,15,30>,<5,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,15,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,15,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,18,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,18,12><30,18,12><30,0,12><8,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<8,18,12><8,18,30><8,0,30><8,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<8,18,12><30,18,12><30,18,30><8,18,30>pigment { color surfCZ}}
cylinder{<8,18,12>,<8,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,12>,<30,18,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,17,12>,<30,17,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,16,12>,<30,16,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,12>,<30,15,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,18,12>,<8,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,17,12>,<8,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,16,12>,<8,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,15,12>,<8,15,30>,0.02
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
sphere{<9,19,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,19,12><30,19,12><30,0,12><9,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<9,19,12><9,19,30><9,0,30><9,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<9,19,12><30,19,12><30,19,30><9,19,30>pigment { color surfCZ}}
cylinder{<9,19,12>,<9,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,19,12>,<10,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,19,12>,<11,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,12>,<30,19,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,18,12>,<30,18,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,12>,<9,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,18,12>,<9,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,12>,<9,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,13>,<9,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,14>,<9,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,15>,<9,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,16>,<9,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,17>,<9,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,18>,<9,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,19>,<9,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,20>,<9,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,21>,<9,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,22>,<9,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,23>,<9,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,24>,<9,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,25>,<9,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,26>,<9,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,27>,<9,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,28>,<9,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,29>,<9,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,19,30>,<9,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,19,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<11,19,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,22,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,22,12><30,22,12><30,0,12><12,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<12,22,12><12,22,30><12,0,30><12,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<12,22,12><30,22,12><30,22,30><12,22,30>pigment { color surfCZ}}
cylinder{<12,22,12>,<12,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,12>,<30,22,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,21,12>,<30,21,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,20,12>,<30,20,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,12>,<30,19,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,12>,<12,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,21,12>,<12,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,20,12>,<12,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,19,12>,<12,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,12>,<12,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,13>,<12,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,14>,<12,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,15>,<12,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,16>,<12,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,17>,<12,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,18>,<12,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,19>,<12,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,20>,<12,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,21>,<12,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,22>,<12,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,23>,<12,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,24>,<12,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,25>,<12,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,26>,<12,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,27>,<12,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,28>,<12,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,29>,<12,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,22,30>,<12,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,23,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,23,12><30,23,12><30,0,12><13,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<13,23,12><13,23,30><13,0,30><13,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<13,23,12><30,23,12><30,23,30><13,23,30>pigment { color surfCZ}}
cylinder{<13,23,12>,<13,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,23,12>,<14,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,23,12>,<15,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,12>,<30,23,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,22,12>,<30,22,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,23,12>,<13,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,22,12>,<13,22,30>,0.02
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
sphere{<14,23,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<15,23,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<16,26,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<16,26,12><30,26,12><30,0,12><16,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<16,26,12><16,26,30><16,0,30><16,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<16,26,12><30,26,12><30,26,30><16,26,30>pigment { color surfCZ}}
cylinder{<16,26,12>,<16,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,12>,<30,26,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,25,12>,<30,25,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,24,12>,<30,24,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,12>,<30,23,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,26,12>,<16,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,25,12>,<16,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,24,12>,<16,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<16,23,12>,<16,23,30>,0.02
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
sphere{<17,27,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<17,27,12><30,27,12><30,0,12><17,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<17,27,12><17,27,30><17,0,30><17,0,12>pigment { color surfCXY}}
polygon { 
 4, 
<17,27,12><30,27,12><30,27,30><17,27,30>pigment { color surfCZ}}
cylinder{<17,27,12>,<17,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<18,27,12>,<18,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<19,27,12>,<19,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,12>,<30,27,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,26,12>,<30,26,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,12>,<17,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,26,12>,<17,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,12>,<17,0,12>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,13>,<17,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,14>,<17,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,15>,<17,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,16>,<17,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,17>,<17,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,18>,<17,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,19>,<17,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,20>,<17,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,21>,<17,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,22>,<17,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,23>,<17,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,24>,<17,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,25>,<17,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,26>,<17,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,27>,<17,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,28>,<17,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,29>,<17,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<17,27,30>,<17,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<18,27,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<19,27,12>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,14,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,14,13><30,14,13><30,0,13><0,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<0,14,13><0,14,30><0,0,30><0,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<0,14,13><30,14,13><30,14,30><0,14,30>pigment { color surfCZ}}
cylinder{<0,14,13>,<0,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,13>,<30,14,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,13>,<30,13,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,13>,<30,12,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,13>,<30,11,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,13>,<30,10,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,13>,<30,9,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,13>,<30,8,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,13>,<30,7,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,13>,<30,6,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,13>,<30,5,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,13>,<30,4,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,13>,<30,3,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,13>,<30,2,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,13>,<30,1,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,13>,<30,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,13>,<0,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,13>,<0,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,13>,<0,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,13>,<0,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,13>,<0,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,13>,<0,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,13>,<0,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,13>,<0,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,13>,<0,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,13>,<0,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,13>,<0,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,13>,<0,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,13>,<0,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,13>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,13>,<0,0,30>,0.02
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
sphere{<1,15,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,15,13><30,15,13><30,0,13><1,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<1,15,13><1,15,30><1,0,30><1,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<1,15,13><30,15,13><30,15,30><1,15,30>pigment { color surfCZ}}
cylinder{<1,15,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,13>,<30,15,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,13>,<30,14,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,13>,<1,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,14,13>,<1,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,13>,<1,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,14>,<1,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,16>,<1,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,18>,<1,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,19>,<1,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,21>,<1,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,22>,<1,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,23>,<1,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,24>,<1,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,25>,<1,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,26>,<1,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,27>,<1,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,28>,<1,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,29>,<1,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,15,30>,<1,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<2,16,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,16,13><30,16,13><30,0,13><2,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<2,16,13><2,16,30><2,0,30><2,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<2,16,13><30,16,13><30,16,30><2,16,30>pigment { color surfCZ}}
cylinder{<2,16,13>,<2,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,16,13>,<3,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,13>,<30,16,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,15,13>,<30,15,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,13>,<2,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,15,13>,<2,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,13>,<2,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,14>,<2,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,15>,<2,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,16>,<2,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,17>,<2,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,18>,<2,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,19>,<2,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,20>,<2,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,21>,<2,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,22>,<2,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,23>,<2,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,24>,<2,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,25>,<2,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,26>,<2,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,27>,<2,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,28>,<2,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,29>,<2,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,16,30>,<2,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,16,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,18,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,18,13><30,18,13><30,0,13><4,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<4,18,13><4,18,30><4,0,30><4,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<4,18,13><30,18,13><30,18,30><4,18,30>pigment { color surfCZ}}
cylinder{<4,18,13>,<4,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,13>,<30,18,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,17,13>,<30,17,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,16,13>,<30,16,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,13>,<4,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,17,13>,<4,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,16,13>,<4,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,13>,<4,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,14>,<4,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,15>,<4,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,16>,<4,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,19,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,19,13><30,19,13><30,0,13><5,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<5,19,13><5,19,30><5,0,30><5,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<5,19,13><30,19,13><30,19,30><5,19,30>pigment { color surfCZ}}
cylinder{<5,19,13>,<5,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,13>,<30,19,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,18,13>,<30,18,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,13>,<5,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,18,13>,<5,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,13>,<5,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,14>,<5,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,15>,<5,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,16>,<5,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,17>,<5,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,18>,<5,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,19>,<5,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,20>,<5,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,21>,<5,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,22>,<5,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,23>,<5,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,24>,<5,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,25>,<5,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,26>,<5,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,27>,<5,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,28>,<5,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,29>,<5,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,19,30>,<5,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,20,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,20,13><30,20,13><30,0,13><6,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<6,20,13><6,20,30><6,0,30><6,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<6,20,13><30,20,13><30,20,30><6,20,30>pigment { color surfCZ}}
cylinder{<6,20,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,20,13>,<7,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,13>,<30,20,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,13>,<30,19,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,13>,<6,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,19,13>,<6,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,13>,<6,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,14>,<6,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,16>,<6,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,18>,<6,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,19>,<6,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,21>,<6,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,22>,<6,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,23>,<6,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,24>,<6,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,25>,<6,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,26>,<6,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,27>,<6,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,28>,<6,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,29>,<6,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,20,30>,<6,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<7,20,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,22,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,22,13><30,22,13><30,0,13><8,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<8,22,13><8,22,30><8,0,30><8,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<8,22,13><30,22,13><30,22,30><8,22,30>pigment { color surfCZ}}
cylinder{<8,22,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,13>,<30,22,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,13>,<30,21,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,20,13>,<30,20,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,13>,<8,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,21,13>,<8,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,20,13>,<8,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,13>,<8,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,14>,<8,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,16>,<8,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,18>,<8,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,19>,<8,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,20>,<8,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,21>,<8,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,22>,<8,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,23>,<8,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,24>,<8,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,25>,<8,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,26>,<8,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,27>,<8,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,28>,<8,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,29>,<8,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,30>,<8,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<9,23,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,23,13><30,23,13><30,0,13><9,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<9,23,13><9,23,30><9,0,30><9,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<9,23,13><30,23,13><30,23,30><9,23,30>pigment { color surfCZ}}
cylinder{<9,23,13>,<9,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,13>,<30,23,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,22,13>,<30,22,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,13>,<9,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,22,13>,<9,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,13>,<9,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,14>,<9,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,15>,<9,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,16>,<9,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,17>,<9,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,18>,<9,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,19>,<9,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,20>,<9,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,21>,<9,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,22>,<9,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,23>,<9,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,24>,<9,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,25>,<9,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,26>,<9,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,27>,<9,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,28>,<9,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,29>,<9,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,23,30>,<9,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,24,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,24,13><30,24,13><30,0,13><10,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<10,24,13><10,24,30><10,0,30><10,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<10,24,13><30,24,13><30,24,30><10,24,30>pigment { color surfCZ}}
cylinder{<10,24,13>,<10,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,24,13>,<11,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,13>,<30,24,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,23,13>,<30,23,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,13>,<10,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,23,13>,<10,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,13>,<10,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,14>,<10,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,15>,<10,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,16>,<10,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,17>,<10,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,18>,<10,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,19>,<10,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,20>,<10,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,21>,<10,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,22>,<10,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,23>,<10,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,24>,<10,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,25>,<10,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,26>,<10,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,27>,<10,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,28>,<10,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,29>,<10,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,24,30>,<10,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,24,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,26,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,26,13><30,26,13><30,0,13><12,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<12,26,13><12,26,30><12,0,30><12,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<12,26,13><30,26,13><30,26,30><12,26,30>pigment { color surfCZ}}
cylinder{<12,26,13>,<12,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,13>,<30,26,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,25,13>,<30,25,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,24,13>,<30,24,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,13>,<12,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,25,13>,<12,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,24,13>,<12,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,13>,<12,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,14>,<12,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,15>,<12,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,16>,<12,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,17>,<12,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,18>,<12,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,19>,<12,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,20>,<12,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,21>,<12,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,22>,<12,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,23>,<12,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,24>,<12,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,25>,<12,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,26>,<12,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,27>,<12,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,28>,<12,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,29>,<12,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,30>,<12,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,27,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,27,13><30,27,13><30,0,13><13,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<13,27,13><13,27,30><13,0,30><13,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<13,27,13><30,27,13><30,27,30><13,27,30>pigment { color surfCZ}}
cylinder{<13,27,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,13>,<30,27,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,13>,<30,26,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,13>,<13,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,26,13>,<13,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,13>,<13,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,14>,<13,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,16>,<13,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,17>,<13,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,18>,<13,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,19>,<13,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,20>,<13,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,21>,<13,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,22>,<13,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,23>,<13,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,24>,<13,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,25>,<13,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,26>,<13,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,27>,<13,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,28>,<13,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,29>,<13,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,27,30>,<13,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<14,28,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<14,28,13><30,28,13><30,0,13><14,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<14,28,13><14,28,30><14,0,30><14,0,13>pigment { color surfCXY}}
polygon { 
 4, 
<14,28,13><30,28,13><30,28,30><14,28,30>pigment { color surfCZ}}
cylinder{<14,28,13>,<14,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<15,28,13>,<15,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,13>,<30,28,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,27,13>,<30,27,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,13>,<14,28,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,27,13>,<14,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,13>,<14,0,13>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,14>,<14,0,14>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,15>,<14,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,16>,<14,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,17>,<14,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,18>,<14,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,19>,<14,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,20>,<14,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,21>,<14,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,22>,<14,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,23>,<14,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,24>,<14,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,25>,<14,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,26>,<14,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,27>,<14,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,28>,<14,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,29>,<14,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<14,28,30>,<14,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<15,28,13>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,16,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,16,15><30,16,15><30,0,15><0,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<0,16,15><0,16,30><0,0,30><0,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<0,16,15><30,16,15><30,16,30><0,16,30>pigment { color surfCZ}}
cylinder{<0,16,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,15>,<30,16,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,15>,<30,15,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,15>,<30,14,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,15>,<30,13,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,15>,<30,12,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,15>,<30,11,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,15>,<30,10,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,15>,<30,9,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,15>,<30,8,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,15>,<30,7,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,15>,<30,6,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,15>,<30,5,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,15>,<30,4,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,15>,<30,3,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,15>,<30,2,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,15>,<30,1,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,15>,<30,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,15>,<0,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,15>,<0,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,15>,<0,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,15>,<0,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,15>,<0,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,15>,<0,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,15>,<0,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,15>,<0,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,15>,<0,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,15>,<0,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,15>,<0,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,15>,<0,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,15>,<0,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,15>,<0,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,15>,<0,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,15>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,15>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,15>,<0,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,16>,<0,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,17,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<1,17,15><30,17,15><30,0,15><1,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<1,17,15><1,17,30><1,0,30><1,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<1,17,15><30,17,15><30,17,30><1,17,30>pigment { color surfCZ}}
cylinder{<1,17,15>,<1,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,15>,<30,17,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,16,15>,<30,16,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,17,15>,<1,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,16,15>,<1,16,30>,0.02
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
sphere{<2,18,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,18,15><30,18,15><30,0,15><2,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<2,18,15><2,18,30><2,0,30><2,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<2,18,15><30,18,15><30,18,30><2,18,30>pigment { color surfCZ}}
cylinder{<2,18,15>,<2,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,18,15>,<3,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,15>,<30,18,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,17,15>,<30,17,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,15>,<2,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,17,15>,<2,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,15>,<2,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,16>,<2,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,17>,<2,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,18>,<2,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,19>,<2,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,20>,<2,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,21>,<2,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,22>,<2,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,23>,<2,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,24>,<2,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,25>,<2,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,26>,<2,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,27>,<2,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,28>,<2,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,29>,<2,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,18,30>,<2,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,18,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,20,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,20,15><30,20,15><30,0,15><4,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<4,20,15><4,20,30><4,0,30><4,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<4,20,15><30,20,15><30,20,30><4,20,30>pigment { color surfCZ}}
cylinder{<4,20,15>,<4,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,15>,<30,20,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,19,15>,<30,19,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,15>,<30,18,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,15>,<4,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,19,15>,<4,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,18,15>,<4,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,15>,<4,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,16>,<4,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,20,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,21,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<5,21,15><30,21,15><30,0,15><5,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<5,21,15><5,21,30><5,0,30><5,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<5,21,15><30,21,15><30,21,30><5,21,30>pigment { color surfCZ}}
cylinder{<5,21,15>,<5,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,15>,<30,21,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,20,15>,<30,20,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,15>,<5,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,20,15>,<5,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,15>,<5,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,16>,<5,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,17>,<5,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,18>,<5,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,19>,<5,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,20>,<5,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,21>,<5,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,22>,<5,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,23>,<5,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,24>,<5,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,25>,<5,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,26>,<5,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,27>,<5,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,28>,<5,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,29>,<5,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,21,30>,<5,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<6,22,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,22,15><30,22,15><30,0,15><6,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<6,22,15><6,22,30><6,0,30><6,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<6,22,15><30,22,15><30,22,30><6,22,30>pigment { color surfCZ}}
cylinder{<6,22,15>,<6,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,22,15>,<7,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,15>,<30,22,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,21,15>,<30,21,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,22,15>,<6,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,21,15>,<6,21,30>,0.02
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
sphere{<7,22,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,24,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,24,15><30,24,15><30,0,15><8,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<8,24,15><8,24,30><8,0,30><8,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<8,24,15><30,24,15><30,24,30><8,24,30>pigment { color surfCZ}}
cylinder{<8,24,15>,<8,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,15>,<30,24,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,23,15>,<30,23,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,15>,<30,22,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,24,15>,<8,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,23,15>,<8,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,22,15>,<8,22,30>,0.02
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
sphere{<9,25,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<9,25,15><30,25,15><30,0,15><9,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<9,25,15><9,25,30><9,0,30><9,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<9,25,15><30,25,15><30,25,30><9,25,30>pigment { color surfCZ}}
cylinder{<9,25,15>,<9,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,15>,<30,25,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,24,15>,<30,24,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,15>,<9,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,24,15>,<9,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,15>,<9,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,16>,<9,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,17>,<9,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,18>,<9,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,19>,<9,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,20>,<9,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,21>,<9,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,22>,<9,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,23>,<9,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,24>,<9,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,25>,<9,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,26>,<9,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,27>,<9,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,28>,<9,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,29>,<9,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,25,30>,<9,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<10,26,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,26,15><30,26,15><30,0,15><10,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<10,26,15><10,26,30><10,0,30><10,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<10,26,15><30,26,15><30,26,30><10,26,30>pigment { color surfCZ}}
cylinder{<10,26,15>,<10,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,26,15>,<11,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,15>,<30,26,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,25,15>,<30,25,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,15>,<10,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,25,15>,<10,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,15>,<10,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,16>,<10,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,17>,<10,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,18>,<10,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,19>,<10,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,20>,<10,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,21>,<10,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,22>,<10,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,23>,<10,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,24>,<10,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,25>,<10,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,26>,<10,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,27>,<10,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,28>,<10,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,29>,<10,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,26,30>,<10,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,26,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<12,28,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<12,28,15><30,28,15><30,0,15><12,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<12,28,15><12,28,30><12,0,30><12,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<12,28,15><30,28,15><30,28,30><12,28,30>pigment { color surfCZ}}
cylinder{<12,28,15>,<12,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,15>,<30,28,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,27,15>,<30,27,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,15>,<30,26,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,15>,<12,28,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,27,15>,<12,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,26,15>,<12,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,15>,<12,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,16>,<12,0,16>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,17>,<12,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,18>,<12,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,19>,<12,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,20>,<12,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,21>,<12,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,22>,<12,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,23>,<12,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,24>,<12,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,25>,<12,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,26>,<12,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,27>,<12,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,28>,<12,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,29>,<12,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<12,28,30>,<12,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<13,29,15>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<13,29,15><30,29,15><30,0,15><13,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<13,29,15><13,29,30><13,0,30><13,0,15>pigment { color surfCXY}}
polygon { 
 4, 
<13,29,15><30,29,15><30,29,30><13,29,30>pigment { color surfCZ}}
cylinder{<13,29,15>,<13,0,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,15>,<30,29,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,28,15>,<30,28,15>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,29,15>,<13,29,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<13,28,15>,<13,28,30>,0.02
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
sphere{<0,19,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,19,17><30,19,17><30,0,17><0,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<0,19,17><0,19,30><0,0,30><0,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<0,19,17><30,19,17><30,19,30><0,19,30>pigment { color surfCZ}}
cylinder{<0,19,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,19,17>,<1,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,17>,<30,19,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,17>,<30,18,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,17>,<30,17,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,17>,<30,16,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,17>,<30,15,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,17>,<30,14,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,17>,<30,13,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,17>,<30,12,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,17>,<30,11,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,17>,<30,10,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,17>,<30,9,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,17>,<30,8,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,17>,<30,7,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,17>,<30,6,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,17>,<30,5,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,17>,<30,4,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,17>,<30,3,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,17>,<30,2,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,17>,<30,1,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,17>,<30,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,17>,<0,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,17>,<0,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,17>,<0,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,17>,<0,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,17>,<0,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,17>,<0,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,17>,<0,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,17>,<0,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,17>,<0,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,17>,<0,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,17>,<0,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,17>,<0,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,17>,<0,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,17>,<0,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,17>,<0,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,17>,<0,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,17>,<0,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,17>,<0,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,17>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,17>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,17>,<0,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,18>,<0,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,19>,<0,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,19,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,21,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<2,21,17><30,21,17><30,0,17><2,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<2,21,17><2,21,30><2,0,30><2,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<2,21,17><30,21,17><30,21,30><2,21,30>pigment { color surfCZ}}
cylinder{<2,21,17>,<2,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,21,17>,<3,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,17>,<30,21,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,20,17>,<30,20,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,19,17>,<30,19,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,17>,<2,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,20,17>,<2,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,19,17>,<2,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,17>,<2,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,18>,<2,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,19>,<2,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,20>,<2,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,21>,<2,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,22>,<2,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,23>,<2,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,24>,<2,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,25>,<2,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,26>,<2,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,27>,<2,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,28>,<2,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,29>,<2,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,21,30>,<2,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<3,21,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,23,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,23,17><30,23,17><30,0,17><4,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<4,23,17><4,23,30><4,0,30><4,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<4,23,17><30,23,17><30,23,30><4,23,30>pigment { color surfCZ}}
cylinder{<4,23,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,23,17>,<5,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,17>,<30,23,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,22,17>,<30,22,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,21,17>,<30,21,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,17>,<4,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,22,17>,<4,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,21,17>,<4,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,17>,<4,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,18>,<4,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,19>,<4,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,23,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,25,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<6,25,17><30,25,17><30,0,17><6,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<6,25,17><6,25,30><6,0,30><6,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<6,25,17><30,25,17><30,25,30><6,25,30>pigment { color surfCZ}}
cylinder{<6,25,17>,<6,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,25,17>,<7,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,17>,<30,25,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,24,17>,<30,24,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,23,17>,<30,23,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,25,17>,<6,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,24,17>,<6,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,23,17>,<6,23,30>,0.02
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
sphere{<7,25,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<8,27,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<8,27,17><30,27,17><30,0,17><8,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<8,27,17><8,27,30><8,0,30><8,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<8,27,17><30,27,17><30,27,30><8,27,30>pigment { color surfCZ}}
cylinder{<8,27,17>,<8,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,27,17>,<9,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,17>,<30,27,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,26,17>,<30,26,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,25,17>,<30,25,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,27,17>,<8,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,26,17>,<8,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,25,17>,<8,25,30>,0.02
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
sphere{<9,27,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<10,29,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<10,29,17><30,29,17><30,0,17><10,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<10,29,17><10,29,30><10,0,30><10,0,17>pigment { color surfCXY}}
polygon { 
 4, 
<10,29,17><30,29,17><30,29,30><10,29,30>pigment { color surfCZ}}
cylinder{<10,29,17>,<10,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<11,29,17>,<11,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,17>,<30,29,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,28,17>,<30,28,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,27,17>,<30,27,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,17>,<10,29,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,28,17>,<10,28,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,27,17>,<10,27,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,17>,<10,0,17>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,18>,<10,0,18>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,19>,<10,0,19>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,20>,<10,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,21>,<10,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,22>,<10,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,23>,<10,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,24>,<10,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,25>,<10,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,26>,<10,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,27>,<10,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,28>,<10,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,29>,<10,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<10,29,30>,<10,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<11,29,17>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<0,22,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<0,22,20><30,22,20><30,0,20><0,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<0,22,20><0,22,30><0,0,30><0,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<0,22,20><30,22,20><30,22,30><0,22,30>pigment { color surfCZ}}
cylinder{<0,22,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,22,20>,<1,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,22,20>,<2,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,22,20>,<3,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,20>,<30,22,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,20>,<30,21,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,20>,<30,20,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,20>,<30,19,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,20>,<30,18,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,20>,<30,17,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,20>,<30,16,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,20>,<30,15,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,20>,<30,14,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,20>,<30,13,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,20>,<30,12,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,20>,<30,11,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,20>,<30,10,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,20>,<30,9,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,20>,<30,8,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,20>,<30,7,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,20>,<30,6,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,20>,<30,5,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,20>,<30,4,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,20>,<30,3,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,20>,<30,2,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,20>,<30,1,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<30,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,20>,<0,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,21,20>,<0,21,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,20,20>,<0,20,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,19,20>,<0,19,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,18,20>,<0,18,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,17,20>,<0,17,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,16,20>,<0,16,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,15,20>,<0,15,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,14,20>,<0,14,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,13,20>,<0,13,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,12,20>,<0,12,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,11,20>,<0,11,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,10,20>,<0,10,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,20>,<0,9,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,20>,<0,8,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,20>,<0,7,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,20>,<0,6,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,20>,<0,5,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,20>,<0,4,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,20>,<0,3,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,20>,<0,2,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,20>,<0,1,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,20>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,20>,<0,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,21>,<0,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,22>,<0,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,23>,<0,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,24>,<0,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,25>,<0,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,26>,<0,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,27>,<0,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,28>,<0,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,29>,<0,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,22,30>,<0,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<1,22,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<2,22,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<3,22,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<4,26,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
polygon { 
 4, 
<4,26,20><30,26,20><30,0,20><4,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<4,26,20><4,26,30><4,0,30><4,0,20>pigment { color surfCXY}}
polygon { 
 4, 
<4,26,20><30,26,20><30,26,30><4,26,30>pigment { color surfCZ}}
cylinder{<4,26,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,26,20>,<5,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,26,20>,<6,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,26,20>,<7,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,20>,<30,26,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,25,20>,<30,25,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,24,20>,<30,24,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,20>,<30,23,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,22,20>,<30,22,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,20>,<4,26,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,25,20>,<4,25,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,24,20>,<4,24,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,23,20>,<4,23,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,22,20>,<4,22,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,20>,<4,0,20>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,21>,<4,0,21>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,22>,<4,0,22>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,23>,<4,0,23>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,24>,<4,0,24>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,25>,<4,0,25>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,26>,<4,0,26>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,27>,<4,0,27>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,28>,<4,0,28>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,29>,<4,0,29>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,26,30>,<4,0,30>,0.02
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<5,26,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<6,26,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
sphere{<7,26,20>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
