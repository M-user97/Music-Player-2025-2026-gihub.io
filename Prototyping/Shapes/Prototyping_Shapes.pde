//
//Display CANVAS
//size(); //width //height
fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//rect(x, y, width, height);
//Note: the debuggger expects rectangles to have float or double type variables
//Using Ratios
float exitX = appWidth * 0.2/22.5;
float exitY = appHeight * 0.2/12.5;
float exitWidth = appWidth * 1/22.5;
float exitHeight = appHeight * 1/12.5;
//
rect(exitX, exitY, exitWidth, exitHeight);
//
float homeX = appWidth * 21.3/22.5;
float homeY = appHeight * 0.2/12.5;
float homeWidth = appWidth * 1/22.5;
float homeHeight = appHeight * 1/12.5;
//
rect(homeX, homeY, homeWidth, homeHeight);
//
float imageX = appWidth * 7.5/22.5;
float imageY = appHeight * 0.7/12.5;
float imageWidth = appWidth * 7.5/22.5;
float imageHeight = appHeight * 5.8/12.5;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
float playX = appWidth * 10.5/22.5;
float playY = appHeight * 9.4/12.5;
float playWidth = appWidth * 1.8/22.5;
float playHeight = appHeight * 1.9/12.5;
//
rect(playX, playY, playWidth, playHeight);
//
float skipleftX = appWidth * 8.6/22.5;
float skipleftY = appHeight * 9.4/12.5;
float skipleftWidth = appWidth * 1.8/22.5;
float skipleftHeight = appHeight * 1.9/12.5;
//
rect(skipleftX, skipleftY, skipleftWidth, skipleftHeight);
//
float skiprightX = appWidth * 12.4/22.5;
float skiprightY = appHeight * 9.4/12.5;
float skiprightWidth = appWidth * 1.9/22.5;
float skiprightHeight = appHeight * 1.9/12.5;
//
rect(skiprightX, skiprightY, skiprightWidth, skiprightHeight);
//square(nameX, nameY, nameDimension);
//line(nameX1, nameY1, nameX2, nameY2);
//triangle(nameX1, nameY1, nameX2, nameY2, nameX3, nameY3);
