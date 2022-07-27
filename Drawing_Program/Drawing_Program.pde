import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
PImage pic, pic1, pic2;
float appHeight, appWidth;
float imgX, imgY, imgWidth, imgHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
float imgX1, imgY1, imgWidth1, imgHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float imgX2, imgY2, imgWidth2, imgHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float buttonX, buttonY, buttonWidth, buttonHeight;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float colorRectX, colorRectY, colorRectWidth, colorRectHeight;
float colorX, colorY, colorWidth, colorHeight;
float colorX1, colorY1, colorWidth1, colorHeight1;
float colorX2, colorY2, colorWidth2, colorHeight2;
float colorX3, colorY3, colorWidth3, colorHeight3;
float colorX4, colorY4, colorWidth4, colorHeight4;
float colorX5, colorY5, colorWidth5, colorHeight5;
float colorX6, colorY6, colorWidth6, colorHeight6;
float colorX7, colorY7, colorWidth7, colorHeight7;
float eraserX, eraserY, eraserWidth, eraserHeight;
float strokeX, strokeY, strokeWidth, strokeHeight;
float strokeX1, strokeY1, strokeWidth1, strokeHeight1;
float strokeX2, strokeY2, strokeWidth2, strokeHeight2;
float strokeX3, strokeY3, strokeWidth3, strokeHeight3;
float strokeX4, strokeY4, strokeWidth4, strokeHeight4;
float picWidthAdjusted, picHeightAdjusted, picWidthAdjusted1, picHeightAdjusted1, picWidthAdjusted2, picHeightAdjusted2;
Boolean widthLarger = false, heightLarger = false, widthLarger1 = false, heightLarger1 = false, widthLarger2 = false, heightLarger2 = false;
Boolean draw=false, colorSelect=false;
Boolean yellowC=false, pinkC=false, greenC=false, orangeC=false, blueC=false, purpleC=false, redC=false, blackC=true, eraseC=false;
Boolean stroke=true, stroke1=false, stroke2=false, stroke3=false, stroke4=false;
color lightgreen1= #48A4BC, green1= #117659, resetButtonColour, buttonFill, resetWhite=#fcfcfc, gray=#5A5A5A, resetBackground=#fcfcfc;
color yellow=#F5E639, pink=#ED5DE6, green=#4CDE65, orange=#F5B128, blue=#2545F5, purple=#A11EE8, red=#E8251E, black=#000000;
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
  drawingSurfaceY = appHeight*0+appWidth/80;
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
  colorRectX = centerX-appWidth*39/80;
  colorRectY = centerY+appHeight*7/20;
  colorRectWidth = appWidth*239/320;
  colorRectHeight = appHeight*5/40;
  //
  //color switches

  colorX = centerX-appWidth*39/80;
  colorY = centerY+appHeight*7/20;
  colorWidth = colorRectHeight;
  colorHeight = colorRectHeight/2;
  //

  colorX1 = (centerX-appWidth*39/80)+colorRectHeight;
  colorY1 = centerY+appHeight*7/20;
  colorWidth1 = colorRectHeight;
  colorHeight1 = colorRectHeight/2;
  //
  colorX2 = (centerX-appWidth*39/80)+colorRectHeight*2;
  colorY2 = centerY+appHeight*7/20;
  colorWidth2 = colorRectHeight;
  colorHeight2 = colorRectHeight/2;
  //
  colorX3 = (centerX-appWidth*39/80)+colorRectHeight*3;
  colorY3 = centerY+appHeight*7/20;
  colorWidth3 = colorRectHeight;
  colorHeight3 = colorRectHeight/2;
  //
  colorX4 = centerX-appWidth*39/80;
  colorY4 = (centerY+appHeight*7/20)+colorRectHeight/2;
  colorWidth4 = colorRectHeight;
  colorHeight4 = colorRectHeight/2;
  //
  colorX5 = (centerX-appWidth*39/80)+colorRectHeight;
  colorY5 = (centerY+appHeight*7/20)+colorRectHeight/2;
  colorWidth5 = colorRectHeight;
  colorHeight5 = colorRectHeight/2;
  //
  colorX6 = (centerX-appWidth*39/80)+colorRectHeight*2;
  colorY6 = (centerY+appHeight*7/20)+colorRectHeight/2;
  colorWidth6 = colorRectHeight;
  colorHeight6 = colorRectHeight/2;
  //
  colorX7 = (centerX-appWidth*39/80)+colorRectHeight*3;
  colorY7 = (centerY+appHeight*7/20)+colorRectHeight/2;
  colorWidth7 = colorRectHeight;
  colorHeight7 = colorRectHeight/2;
  //
  eraserX = (centerX-appWidth*39/80)+colorRectHeight*4;
  eraserY = centerY+appHeight*7/20;
  eraserWidth = colorRectHeight;
  eraserHeight = colorRectHeight;
  //
  strokeX = (centerX-appWidth*39/80)+colorRectHeight*5;
  strokeY = centerY+appHeight*7/20;
  strokeWidth = colorRectHeight;
  strokeHeight = colorRectHeight/2;
  //
  strokeX1 = (centerX-appWidth*39/80)+colorRectHeight*6;
  strokeY1 = centerY+appHeight*7/20;
  strokeWidth1 = colorRectHeight;
  strokeHeight1 = colorRectHeight/2;
  //
  strokeX2 = (centerX-appWidth*39/80)+colorRectHeight*7;
  strokeY2 = centerY+appHeight*7/20;
  strokeWidth2 = colorRectHeight;
  strokeHeight2 = colorRectHeight/2;
  //
  strokeX3 = (centerX-appWidth*39/80)+colorRectHeight*8;
  strokeY3 = centerY+appHeight*7/20;
  strokeWidth3 = colorRectHeight;
  strokeHeight3 = colorRectHeight/2;
  //
  strokeX4 = (centerX-appWidth*39/80)+colorRectHeight*9;
  strokeY4 = centerY+appHeight*7/20;
  strokeWidth4 = colorRectHeight;
  strokeHeight4 = colorRectHeight/2;
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
  imgY1 = appHeight/10;
  imgWidth1 = buttonWidth1;
  imgHeight1 = buttonHeight1;
  picWidthAdjusted1 = imgWidth * imageWidthRatio;
  picHeightAdjusted1 = imgHeight * imageHeightRatio;
  //
  pic2 = loadImage("../images/1827954.png"); //Dimentions: width: 512 height: 512

  int picWidth2 = 512;
  int picHeight2 = 512;
  if ( picWidth2 >= picHeight2 ) {
    imageLargerDimension2 = picWidth2;
    imageSmallerDimension2 = picHeight2;
    widthLarger2 = true;
  } else {
    //False if Portrait
    imageLargerDimension2 = picHeight2;
    imageSmallerDimension2 = picWidth2;
    heightLarger2 = true;
  }
  println(imgX2, imgY2, picWidthAdjusted2, picHeightAdjusted2);

  if ( widthLarger2 == true ) imageWidthRatio2 = imageLargerDimension2/imageLargerDimension2;
  if ( widthLarger2 == true ) imageHeightRatio2 = imageSmallerDimension2/imageLargerDimension2;
  if ( heightLarger2 == true ) imageWidthRatio2 = imageSmallerDimension2/imageLargerDimension2;
  if ( heightLarger2 == true ) imageWidthRatio2 = imageLargerDimension2/imageLargerDimension2;
  //
  imgX2 = eraserX;
  imgY2 = eraserY;
  imgWidth2 = eraserWidth;
  imgHeight2 = eraserHeight;
  picWidthAdjusted2 = imgWidth2 * imageWidthRatio2;
  picHeightAdjusted2 = imgHeight2 * imageHeightRatio2;
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  //
}//End setup
//
void draw() 
{
  //Hover-over
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    buttonFill = lightgreen1;
  } else {
    buttonFill = green1;
  }//End Hover-over
  fill(buttonFill);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetButtonColour);
  image(pic, imgX, imgY, picWidthAdjusted, picHeightAdjusted);
  //
  if ( mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) {
    buttonFill = lightgreen1;
  } else {
    buttonFill = green1;
  }//End Hover-over
  fill(buttonFill);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(resetButtonColour);
  image(pic1, imgX1, imgY1, picWidthAdjusted1, picHeightAdjusted1);
  //
  //colorSelector
  //
  if ( colorSelect == true ) {
    fill(resetWhite);
    rect(colorRectX, colorRectY, colorRectWidth, colorRectHeight);
    fill(yellow);
    rect(colorX, colorY, colorWidth, colorHeight);
    fill(resetWhite);
    fill(pink);
    rect(colorX1, colorY1, colorWidth1, colorHeight1);
    fill(resetWhite);
    fill(green);
    rect(colorX2, colorY2, colorWidth2, colorHeight2);
    fill(resetWhite);
    fill(orange);
    rect(colorX3, colorY3, colorWidth3, colorHeight3);
    fill(resetWhite);
    fill(blue);
    rect(colorX4, colorY4, colorWidth4, colorHeight4);
    fill(resetWhite);
    fill(purple);
    rect(colorX5, colorY5, colorWidth5, colorHeight5);
    fill(resetWhite);
    fill(red);
    rect(colorX6, colorY6, colorWidth6, colorHeight6);
    fill(resetWhite);
    fill(black);
    rect(colorX7, colorY7, colorWidth7, colorHeight7);
    fill(resetWhite);
    //
    //Hover-over
    if ( mouseX>eraserX && mouseX<eraserX+eraserWidth && mouseY>eraserY && mouseY<eraserY+eraserHeight ) {
      buttonFill = gray;
    } else {
      buttonFill = resetWhite;
    }//End Hover-over
    fill(buttonFill);
    rect(eraserX, eraserY, eraserWidth, eraserHeight);
    fill(resetButtonColour);
    image(pic2, imgX2, imgY2, picWidthAdjusted2, picHeightAdjusted2);
    //
    //strokes
    //
    fill(resetWhite);
    
    //Hover-over
  if ( mouseX>strokeX && mouseX<strokeX+strokeWidth && mouseY>strokeY && mouseY<strokeY+strokeHeight ) {
    buttonFill = gray;
  } else {
    buttonFill = resetWhite;
  }//End Hover-over
  fill(buttonFill);
  rect(strokeX, strokeY, strokeWidth, strokeHeight);
  fill(resetButtonColour);
  strokeCap(SQUARE);
  strokeWeight(1);
  line(strokeX, (strokeY+strokeHeight/2), strokeX1, (strokeY+strokeHeight/2));
  strokeWeight(1);
  strokeCap(ROUND);
  //
  //Hover-over
  if ( mouseX>strokeX1 && mouseX<strokeX1+strokeWidth1 && mouseY>strokeY1 && mouseY<strokeY1+strokeHeight1 ) {
    buttonFill = gray;
  } else {
    buttonFill = resetWhite;
  }//End Hover-over
  fill(buttonFill);
  rect(strokeX1, strokeY1, strokeWidth1, strokeHeight1);
  fill(resetButtonColour);
  strokeCap(SQUARE);
  strokeWeight(10);
  line(strokeX1, (strokeY+strokeHeight/2), strokeX2, (strokeY+strokeHeight/2));
  strokeWeight(1);
  strokeCap(ROUND);
  //
  //Hover-over
  if ( mouseX>strokeX2 && mouseX<strokeX2+strokeWidth2 && mouseY>strokeY2 && mouseY<strokeY2+strokeHeight2 ) {
    buttonFill = gray;
  } else {
    buttonFill = resetWhite;
  }//End Hover-over
  fill(buttonFill);
  rect(strokeX2, strokeY2, strokeWidth2, strokeHeight2);
  fill(resetButtonColour);
  strokeCap(SQUARE);
  strokeWeight(20);
  line(strokeX2, (strokeY+strokeHeight/2), strokeX3, (strokeY+strokeHeight/2));
  strokeWeight(1);
  strokeCap(ROUND);
  //
  //Hover-over
  if ( mouseX>strokeX3 && mouseX<strokeX3+strokeWidth3 && mouseY>strokeY3 && mouseY<strokeY3+strokeHeight3 ) {
    buttonFill = gray;
  } else {
    buttonFill = resetWhite;
  }//End Hover-over
  fill(buttonFill);
  rect(strokeX3, strokeY3, strokeWidth3, strokeHeight3);
  fill(resetButtonColour);
  strokeCap(SQUARE);
  strokeWeight(30);
  line(strokeX3, (strokeY+strokeHeight/2), strokeX4, (strokeY+strokeHeight/2));
  strokeWeight(1);
  strokeCap(ROUND);
  //
  //Hover-over
  if ( mouseX>strokeX4 && mouseX<strokeX4+strokeWidth4 && mouseY>strokeY4 && mouseY<strokeY4+strokeHeight4 ) {
    buttonFill = gray;
  } else {
    buttonFill = resetWhite;
  }//End Hover-over
  fill(buttonFill);
  rect(strokeX4, strokeY4, strokeWidth4, strokeHeight4);
  fill(resetButtonColour);
  strokeCap(SQUARE);
  strokeWeight(50);
  line(strokeX4, (strokeY+strokeHeight/2), strokeX4+strokeWidth4, (strokeY+strokeHeight/2));
  strokeWeight(1);
  strokeCap(ROUND);
  }

  //
  if (mousePressed==true && mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    colorSetup(); 
    strokeSetup();
    line(mouseX, mouseY, pmouseX, pmouseY); 
    strokeWeight(1);
    stroke(black);
  }


  //Example drawing tool {stroke(blue); strokeWeight(); line(mouseX, mouseY, pmouseX, pmouseY); stroke(black);}
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() 
{ 
  //color select
  //
  if ( mouseX>colorX && mouseX<colorX+colorWidth && mouseY>colorY && mouseY<colorY+colorHeight && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=false;
    orangeC=false;
    blueC=false;
    purpleC=false;
    redC=false;
    blackC=false;
    eraseC=false;
  }
  //
  if ( mouseX>colorX1 && mouseX<colorX1+colorWidth1 && mouseY>colorY1 && mouseY<colorY1+colorHeight1 && colorSelect==true ) {
    yellowC=false;
    pinkC=true;
    greenC=false;
    orangeC=false;
    blueC=false;
    purpleC=false;
    redC=false;
    blackC=false;
    eraseC=false;
  }
  //
  if ( mouseX>colorX2 && mouseX<colorX2+colorWidth2 && mouseY>colorY2 && mouseY<colorY2+colorHeight2 && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=true;
    orangeC=false;
    blueC=false;
    purpleC=false;
    redC=false;
    blackC=false;
    eraseC=false;
  }
  //
  if ( mouseX>colorX3 && mouseX<colorX3+colorWidth3 && mouseY>colorY3 && mouseY<colorY3+colorHeight3 && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=false;
    orangeC=true;
    blueC=false;
    purpleC=false;
    redC=false;
    blackC=false;
    eraseC=false;
  }
  //
  if ( mouseX>colorX4 && mouseX<colorX4+colorWidth4 && mouseY>colorY4 && mouseY<colorY4+colorHeight4 && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=false;
    orangeC=false;
    blueC=true;
    purpleC=false;
    redC=false;
    blackC=false;
    eraseC=false;
  }
  //
  if ( mouseX>colorX5 && mouseX<colorX5+colorWidth5 && mouseY>colorY5 && mouseY<colorY5+colorHeight5 && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=false;
    orangeC=false;
    blueC=false;
    purpleC=true;
    redC=false;
    blackC=false;
    eraseC=false;
  }
  //
  if ( mouseX>colorX6 && mouseX<colorX6+colorWidth6 && mouseY>colorY6 && mouseY<colorY6+colorHeight6 && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=false;
    orangeC=false;
    blueC=false;
    purpleC=false;
    redC=true;
    blackC=false;
    eraseC=false;
  }
  //
  if ( mouseX>colorX7 && mouseX<colorX7+colorWidth7 && mouseY>colorY7 && mouseY<colorY7+colorHeight7 && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=false;
    orangeC=false;
    blueC=false;
    purpleC=false;
    redC=false;
    blackC=true;
    eraseC=false;
  }
  //
  if ( mouseX>eraserX && mouseX<eraserX+eraserWidth && mouseY>eraserY && mouseY<eraserY+eraserHeight && colorSelect==true ) {
    yellowC=true;
    pinkC=false;
    greenC=false;
    orangeC=false;
    blueC=false;
    purpleC=false;
    redC=false;
    blackC=false;
    eraseC=true;
  }
  //
  //Stroke select
  //
  


  if ( mouseX>strokeX && mouseX<strokeX+strokeWidth && mouseY>strokeY && mouseY<strokeY+strokeHeight && colorSelect==true ) {
  stroke=true;
  stroke1=false;
  stroke2=false;
  stroke3=false;
  stroke4=false;
  }
  //
  if ( mouseX>strokeX1 && mouseX<strokeX1+strokeWidth1 && mouseY>strokeY1 && mouseY<strokeY1+strokeHeight1 && colorSelect==true ) {
  stroke=false;
  stroke1=true;
  stroke2=false;
  stroke3=false;
  stroke4=false;
  }
  //
  if ( mouseX>strokeX2 && mouseX<strokeX2+strokeWidth2 && mouseY>strokeY2 && mouseY<strokeY2+strokeHeight2 && colorSelect==true ) {
  stroke=false;
  stroke1=false;
  stroke2=true;
  stroke3=false;
  stroke4=false;
  }
  //
  if ( mouseX>strokeX3 && mouseX<strokeX3+strokeWidth3 && mouseY>strokeY3 && mouseY<strokeY3+strokeHeight3 && colorSelect==true ) {
  stroke=false;
  stroke1=false;
  stroke2=false;
  stroke3=true;
  stroke4=false;
  }
  //
  if ( mouseX>strokeX4 && mouseX<strokeX4+strokeWidth4 && mouseY>strokeY4 && mouseY<strokeY4+strokeHeight4 && colorSelect==true ) {
  stroke=false;
  stroke1=false;
  stroke2=false;
  stroke3=false;
  stroke4=true;
  }
  //







  //
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
  //
  if ( mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) {
    if ( colorSelect==false ) { 
      colorSelect=true;
    } else {
      colorSelect=false;
    }
  }
  //

  //
  /* (this might not be needed)
   if ( mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
   if ( draw == true ) { 
   draw = false;
   } else {
   draw = true;
   }
   }//End drawing tools
   */
}//End mousePressed
//
//End MAIN Program
