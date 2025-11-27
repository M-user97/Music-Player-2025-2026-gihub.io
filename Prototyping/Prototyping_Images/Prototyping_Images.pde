/* Aspect Ratio: FullMoon Only Demonstration
- FullMoon
*/
//
//Display
//fullScreen(); //Landscape
size(500, 250); //Portrait
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\t\t\tSize\t\t, width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images/";
String FullMoon = "FullMoon";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + FullMoon + fileExtensionJPG;
//println("FullMoon Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
if ( image1 == null ) {
  println("NullPointerExeption on Image .. Spelling
}
//
int imageWidth1 = 1200;
int imageHeight1 = 630;
//Aspect Ratio
float image1AspectRatio_GreaterOne = (imageWidth1 >= imageHeight1) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ;
//
println("Aspect Ratio >1", image1AspectRatio_GreaterOne, "Testing for Decimals, formuale", imageWidth1/imageHeight1);
//
//
//DIV
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image(image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//image(image1, imageDivX, imageDivY,
