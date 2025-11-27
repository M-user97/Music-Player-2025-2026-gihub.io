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
//
PImage errorimage = loadImage( "errorimage.png");
PImage image1 = loadImage( imagePathway1 );
if ( image1 == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image1 = errorimage;
  exit();
}
//
int imageWidth1 = 1200;
int imageHeight1 = 630;
//Aspect Ratio
float image1AspectRatio_GreaterOne = (imageWidth1 >= imageHeight1) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ;
//
println("Aspect Ratio >1", image1AspectRatio_GreaterOne, "Testing for Decimals, formuale", imageWidth1/imageHeight1);
//
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
}
//
//DIV
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image(image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//image(image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1);
//
