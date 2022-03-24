 #include "colors.inc" 
 #include "shapes.inc" 
 #include "math.inc" 
 #include "functions.inc" 
 #declare surfCXY = color rgb<0.6,0.6,0.6>;
 #declare surfCZ = color rgb<0.6,0.6,0.6>;
 #declare mainColor = color rgb<0.8,0.3,0.3>;
 #declare axisColor = color rgb<0,0,0>;
 camera {location <20,20,-20>
look_at <0,2,0>}
light_source{<100,100,-200> rgb<1,1,1>*2}
background{rgb<0.9,0.9,0.9>}
text { 
 ttf "timrom.ttf" "O-count" 0.1, 0
 pigment { rgb<0.1,0.1,0.1> }
 rotate -90*y
rotate +90*z 
 translate -3.5*z 
 translate 0.1*y scale 1} 
text { 
 ttf "timrom.ttf" "I-count" 0.1, 0
 pigment { rgb<0.1,0.1,0.1> }
     rotate +90*x
 translate -z 
  translate 1*x
 scale 1 }text { 
 ttf "timrom.ttf" "T-shift" 0.1, 0
 pigment { rgb<0.1,0.1,0.1> }
   rotate -90*z   
   rotate -90*y 
   translate -z 
   translate +4*y scale 1 } 
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate -90*y  translate -z  translate 5*y scale 1 } 
text {ttf "timrom.ttf" "5 " 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate 5*x scale 1 }
cylinder{<0,0,0>,<10,0,0>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,10>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,10,0>,0.1
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,0>,<1,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,0>,<2,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,0>,<3,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,0>,<4,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,0>,<5,0,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,0>,<6,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,0>,<7,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<8,0,0>,<8,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<9,0,0>,<9,0,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<10,0,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,1>,<10,0,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<10,0,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,3>,<10,0,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<10,0,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<10,0,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<10,0,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,7>,<10,0,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<10,0,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,9>,<10,0,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,0,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,1,0>,<0,1,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,2,0>,<0,2,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,3,0>,<0,3,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,4,0>,<0,4,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,5,0>,<0,5,10>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,6,0>,<0,6,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,7,0>,<0,7,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,8,0>,<0,8,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,9,0>,<0,9,10>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,0>,<0,10,0>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,1>,<0,10,1>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,2>,<0,10,2>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,3>,<0,10,3>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,4>,<0,10,4>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,5>,<0,10,5>,0.05
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,6>,<0,10,6>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,7>,<0,10,7>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,8>,<0,10,8>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<0,0,9>,<0,10,9>,0.02
 pigment{rgb<0.1,0.1,0.1> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
sphere{<0,0,2>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<0,0,2>,<0,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<0,0,3><0,0,2><0,0,2><0,0,3>pigment { color surfCXY}}
sphere{<1,0,3>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<1,0,3>,<0,0,3>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<1,0,3><0,0,3><0,0,3><1,0,3>pigment { color surfCXY}}
polygon { 
 4, 
<1,0,3><0,0,3><0,0,10><1,0,10>pigment { color surfCZ}}
cylinder{<1,0,3>,<1,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<1,0,4>,<0,0,4>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<1,0,4><1,0,3><1,0,3><1,0,4>pigment { color surfCXY}}
sphere{<2,0,4>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<2,0,4>,<1,0,4>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<2,0,4><1,0,4><1,0,4><2,0,4>pigment { color surfCXY}}
polygon { 
 4, 
<2,0,4><1,0,4><1,0,10><2,0,10>pigment { color surfCZ}}
cylinder{<2,0,4>,<2,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<2,0,5>,<0,0,5>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<2,0,5><2,0,4><2,0,4><2,0,5>pigment { color surfCXY}}
sphere{<3,0,5>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<3,0,5>,<2,0,5>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<3,0,5><2,0,5><2,0,5><3,0,5>pigment { color surfCXY}}
polygon { 
 4, 
<3,0,5><2,0,5><2,0,10><3,0,10>pigment { color surfCZ}}
cylinder{<3,0,5>,<3,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<3,0,6>,<0,0,6>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<3,0,6><3,0,5><3,0,5><3,0,6>pigment { color surfCXY}}
sphere{<4,0,6>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<4,0,6>,<3,0,6>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<4,0,6><3,0,6><3,0,6><4,0,6>pigment { color surfCXY}}
polygon { 
 4, 
<4,0,6><3,0,6><3,0,10><4,0,10>pigment { color surfCZ}}
cylinder{<4,0,6>,<4,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<4,0,7>,<0,0,7>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<4,0,7><4,0,6><4,0,6><4,0,7>pigment { color surfCXY}}
sphere{<5,0,7>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<5,0,7>,<4,0,7>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<5,0,7><4,0,7><4,0,7><5,0,7>pigment { color surfCXY}}
polygon { 
 4, 
<5,0,7><4,0,7><4,0,10><5,0,10>pigment { color surfCZ}}
cylinder{<5,0,7>,<5,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<5,0,8>,<0,0,8>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<5,0,8><5,0,7><5,0,7><5,0,8>pigment { color surfCXY}}
sphere{<6,0,8>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<6,0,8>,<5,0,8>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<6,0,8><5,0,8><5,0,8><6,0,8>pigment { color surfCXY}}
polygon { 
 4, 
<6,0,8><5,0,8><5,0,10><6,0,10>pigment { color surfCZ}}
cylinder{<6,0,8>,<6,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<6,0,9>,<0,0,9>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<6,0,9><6,0,8><6,0,8><6,0,9>pigment { color surfCXY}}
sphere{<7,0,9>,0.18
 pigment{rgb<0,0,1> filter .2 transmit .1}
 finish{ reflection .2 phong .7}}
cylinder{<7,0,9>,<6,0,9>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<7,0,9><6,0,9><6,0,9><7,0,9>pigment { color surfCXY}}
polygon { 
 4, 
<7,0,9><6,0,9><6,0,10><7,0,10>pigment { color surfCZ}}
cylinder{<7,0,9>,<7,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
cylinder{<7,0,10>,<0,0,10>,0.05
 pigment{rgb<0,0,0> filter .2 transmit .1}
 finish{ reflection .2 phong .6}}
polygon { 
 4, 
<7,0,10><7,0,9><7,0,9><7,0,10>pigment { color surfCXY}}
