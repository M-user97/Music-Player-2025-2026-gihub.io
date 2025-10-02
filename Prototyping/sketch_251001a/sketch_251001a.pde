/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 7.5/22.5;
float imageY = appHeight * 0.7/12.5 ;
float imageWidth = appWidth * 7.5/22.5 ;
float imageHeight = appHeight * 5.8/12.5 ;
//
rect(imageX, imageY, imageWidth, imageHeight);
