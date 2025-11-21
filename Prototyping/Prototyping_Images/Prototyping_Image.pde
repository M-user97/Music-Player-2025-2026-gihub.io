/* Aspect Ratio:
- 
*/
//
//Display
fullScreen(); //Landscape
//size(500, 331); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen\t, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth * 1/4;
float imageDivY = appHeight * 1/10;
float imageDivWidth = appWidth * 1/2;
float imageDivHeight = appHeight * 4/5;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images";
String Sunset = "Sunset";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + Sunset + fileExtensionJPG;
//println("Sunset Pathway:", imagePathway1);
//image Loading & Aspect Ration
PImage image1 = loadImage ( imagePathway1 );
int imageWidth1 = 500;
int imageHeight1 = 331;
//Aspect Ratio
//
//DIV
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image(image1 , imageDivX, imageDivY, imageDivWidth, imageDivHeight);
