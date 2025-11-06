/* DIVs: 2D Rectangles
*/
//
fullScreen(); //dispalyWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Ruler action of numbers, verify by changing ratio numbers from GUI DIVs
float divX = appWidth * 10.4/22.5;
float divY = appHeight * 9.4/12.5;
float divWidth = appWidth * 1.8/22.5;
float divHeight = appHeight * 1.9/12.5;
//Paperfolding action of ratios, never changes
//
float mute1X1 = stopX;
float mute1Y1 = stopY;
float mute2X2 = ;
float mute2Y2 = ;
float mute3X1 = ;
float mute3Y1 = ;
float mute4X2 = ;
float mute4Y2 = ;


float playX1 = divX + divWidth * 1/4;
float playY1 = divY + divHeight * 1/4;
float playX2 = divX + divWidth * 3/4;
float playY2 = divY + divHeight * 1/2;
float playX3 = divX + divWidth * 1/4;
float playY3 = divY + divHeight * 3/4;
//
//
rect(divX, divY, divWidth, divHeight); ////Group of Variables
//
//////Group of Variables
rect(stopX, stopY, stopWidth, stopHeight);
//triangle(playX1, playY1, playX2, playY2, playX3, playY3); ////Group of Variables
line (mute1X1, mute1Y1, mute2X2, mute 2Y2);
line (mute3X1, mute3Y1, mute4X2, mute4Y2);
