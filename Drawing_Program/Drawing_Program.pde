import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
PImage pic, pic1;
float appHeight, appWidth;
float imgX, imgY, imgWidth, imgHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
float imgX1, imgY1, imgWidth1, imgHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float buttonX, buttonY, buttonWidth, buttonHeight;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float picWidthAdjusted, picHeightAdjusted, picWidthAdjusted1, picHeightAdjusted1;
Boolean widthLarger = false, heightLarger = false, widthLarger1 = false, heightLarger1 = false;
Boolean draw=false, colorSelect=false;
color lightBlue= #48A4BC, blue= #117659, resetButtonColour, buttonFill;
//
void setup() 
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1500, 900); //Landscape (Portrait or Square)
  //
  //Pouplation
  int appWidth = width;
  int appHeight = height;
  int centerX = width/2;
  int centerY = height/2;
  drawingSurfaceX = centerX-appWidth*39/80;
  drawingSurfaceY = height*0+appWidth/80;
  drawingSurfaceWidth = appWidth*3/4;
  drawingSurfaceHeight = appHeight*4/5;//Use appWidth and appHeight (this is only an example)
  drawingDiameter = appWidth*1/100;
  //
  //button
  //
  buttonX = centerX+appWidth*13/40;
  buttonY = appHeight*0;
  buttonWidth = appWidth*14/80;
  buttonHeight = appHeight/10;
  //
  buttonX1 = centerX+appWidth*13/40;
  buttonY1 = appHeight/10;
  buttonWidth1 = appWidth*14/80;
  buttonHeight1 = appHeight/10;
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
  //


  pic = loadImage("../images/free-exit-logout-icon-2857-thumb.png"); //Dimentions: width: 512 height: 512
  
  int picWidth = 512;
  int picHeight = 512;
  if ( picWidth >= picHeight ) {
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }
  println(imgX, imgY, picWidthAdjusted, picHeightAdjusted);

  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension/imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension/imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension/imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageLargerDimension/imageLargerDimension;
  //
  imgX = centerX+appWidth*15/40;
  imgY = appHeight*0;
  imgWidth = buttonWidth/2;
  imgHeight = buttonHeight;
  picWidthAdjusted = imgWidth * imageWidthRatio;
  picHeightAdjusted = imgHeight * imageHeightRatio;

  //
  
  
  pic1 = loadImage("../images/3074740.png"); //Dimentions: width: 512 height: 512
  int picWidth1 = 512;
  int picHeight1 = 512;
  if ( picWidth1 >= picHeight1 ) {
    imageLargerDimension = picWidth1;
    imageSmallerDimension = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger = true;
  }
  println(imgX1, imgY1, picWidthAdjusted1, picHeightAdjusted1);

  if ( widthLarger1 == true ) imageWidthRatio1 = imageLargerDimension1/imageLargerDimension1;
  if ( widthLarger1 == true ) imageHeightRatio1 = imageSmallerDimension1/imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageSmallerDimension1/imageLargerDimension1;
  if ( heightLarger1 == true ) imageWidthRatio1 = imageLargerDimension1/imageLargerDimension1;
  //
  imgX1 = centerX+appWidth*15/40;
  imgY1 = appHeight*0;
  imgWidth1 = buttonWidth/2;
  imgHeight1 = buttonHeight;
  picWidthAdjusted1 = imgWidth * imageWidthRatio;
  picHeightAdjusted1 = imgHeight * imageHeightRatio;
  //
  //
}//End setup
//
void draw() 
{
  
  //Hover-over
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    buttonFill = lightBlue;
  } else {
    buttonFill = blue;
  }//End Hover-over
  fill(buttonFill);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetButtonColour);
  image(pic, imgX, imgY, picWidthAdjusted, picHeightAdjusted);
  //
  if ( mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) {
    buttonFill = lightBlue;
  } else {
    buttonFill = blue;
  }//End Hover-over
  fill(buttonFill);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(resetButtonColour);
  image(pic1, imgX1, imgY1, picWidthAdjusted1, picHeightAdjusted1);
  //
  if (mousePressed==true && mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) line(mouseX, mouseY, pmouseX, pmouseY); //Example drawing tool
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
  //
  if ( mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw == true ) { 
      draw = false;
    } else {
      draw = true;
    }
  }//End drawing tools
}//End mousePressed
//
//End MAIN Program
