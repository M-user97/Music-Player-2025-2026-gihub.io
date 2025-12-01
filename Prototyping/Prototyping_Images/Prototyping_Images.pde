/* Aspect Ratio: FullMoon Only Demonstration
 - FullMoon
 */
//
//Display
//fullScreen(); //Landscape
size(500, 250); //Portrait, testing smaller DIVs ONLY
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*1/5; //4/5  
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
PImage errorImage = loadImage( "errorimage.png" );
PImage image1 = loadImage( imagePathway1 );
if ( image1 == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image1 = errorImage;
  exit();
}
//
int imageWidth1 = 1200; 
int imageHeight1 = 630; 
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; 
//println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; 
//Verification: looks good
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0;
  while ( imageHeightAdjusted1>imageDivHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++);
    if ( indexWhile < 10000 ) {
      //Checking Image Size, below
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit(); 
      imageHeightAdjusted1=imageDivHeight;
    } //End Check Infinite loop
    //Image Adjustment Percent v Pixel
    imageWidthAdjusted1 *= 0.70; // -= 1
    imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
    println("Inspection of percent decrase:", imageWidthAdjusted1, imageHeightAdjusted1, imageDivHeight);
  } //End While
  while ( imageHeightAdjusted1<imageDivHeight ) {
    println("Iteration of Pixel WHILE Loop", indexWhile++);
    if ( indexWhile < 10000 ) {
      //Checking Image Size
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Pixel WHILE, value:", indexWhile);
      //exit(); //doesn't work, must force WHILE Stop
      imageHeightAdjusted1=imageDivHeight;
    }
    imageHeightAdjusted1++;
    println("Inspection of percent dcrease:", imageWidthAdjusted1, imageHeightAdjusted1, imageDivHeight);
  } //End WHILE Error Check, Counting Up
  //
} //END IF
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
