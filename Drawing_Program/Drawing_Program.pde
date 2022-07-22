import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
PImage pic;
float imgX, imgY, imgWidth, imgHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float buttonX, buttonY, buttonWidth, buttonHeight;
float picWidthAdjusted, picHeightAdjusted;
Boolean widthLarger = false, heightLarger = false;
Boolean draw=false;
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
  int centerX = width/2;
  int centerY = height/2;
  drawingSurfaceX = centerX-width*39/80;
  drawingSurfaceY = height*0+width/80;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;//Use appWidth and appHeight (this is only an example)
  drawingDiameter = width*1/100;
  //
  //button
  //
  buttonX = centerX+width*13/40;
  buttonY = height*0;
  buttonWidth = width*14/80;
  buttonHeight = height/10;
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
  imgX = centerX+width*13/40;
  imgY = height*0+centerY;
  imgWidth = buttonWidth;
  imgHeight = buttonHeight;
  picWidthAdjusted = imgWidth * imageWidthRatio;
  picHeightAdjusted = imgHeight * imageHeightRatio;

  //
  //
  //
}//End setup
//
void draw() 
{
  image(pic, imgX, imgY, picWidthAdjusted, picHeightAdjusted);
  //Hover-over
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    buttonFill = lightBlue;
  } else {
    buttonFill = blue;
  }//End Hover-over
  fill(buttonFill);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetButtonColour);
  //
  if (mousePressed==true && mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) line(mouseX, mouseY, pmouseX, pmouseY); //Example drawing tool
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{
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
