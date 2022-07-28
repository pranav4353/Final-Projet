import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
PImage pic, pic1, pic2, pic3, pic4, pic5, pic6, pic4Demo, pic5Demo, pic6Demo;
float appHeight, appWidth;
float imgX, imgY, imgWidth, imgHeight, imageLargerDimension, imageSmallerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
float imgX1, imgY1, imgWidth1, imgHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float imgX2, imgY2, imgWidth2, imgHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float imgX3, imgY3, imgWidth3, imgHeight3, imageLargerDimension3, imageSmallerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
float imgX4, imgY4, imgWidth4, imgHeight4, imageLargerDimension4, imageSmallerDimension4, imageWidthRatio4=0.0, imageHeightRatio4=0.0;
float imgX5, imgY5, imgWidth5, imgHeight5, imageLargerDimension5, imageSmallerDimension5, imageWidthRatio5=0.0, imageHeightRatio5=0.0;
float imgX6, imgY6, imgWidth6, imgHeight6, imageLargerDimension6, imageSmallerDimension6, imageWidthRatio6=0.0, imageHeightRatio6=0.0;
float imgX4Demo, imgY4Demo, imgWidth4Demo, imgHeight4Demo, imageLargerDimension4Demo, imageSmallerDimension4Demo, imageWidthRatio4Demo=0.0, imageHeightRatio4Demo=0.0;
float imgX5Demo, imgY5Demo, imgWidth5Demo, imgHeight5Demo, imageLargerDimension5Demo, imageSmallerDimension5Demo, imageWidthRatio5Demo=0.0, imageHeightRatio5Demo=0.0;
float imgX6Demo, imgY6Demo, imgWidth6Demo, imgHeight6Demo, imageLargerDimension6Demo, imageSmallerDimension6Demo, imageWidthRatio6Demo=0.0, imageHeightRatio6Demo=0.0;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float ellipseDia; 
float buttonX, buttonY, buttonWidth, buttonHeight;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float colorRectX, colorRectY, colorRectWidth, colorRectHeight;
float colorRectX1, colorRectY1, colorRectWidth1, colorRectHeight1;
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
float strokeX5, strokeY5, strokeWidth5, strokeHeight5;
float strokeX6, strokeY6, strokeWidth6, strokeHeight6;
float strokeX7, strokeY7, strokeWidth7, strokeHeight7;
float strokeXZ, strokeYZ, strokeWidthZ, strokeHeightZ;
float strokeXZ1, strokeYZ1, strokeWidthZ1, strokeHeightZ1;
float strokeXZ2, strokeYZ2, strokeWidthZ2, strokeHeightZ2;
float picWidthAdjusted, picHeightAdjusted, picWidthAdjusted1, picHeightAdjusted1, picWidthAdjusted2, picHeightAdjusted2, picWidthAdjusted3, picHeightAdjusted3, picWidthAdjusted4, picHeightAdjusted4, picWidthAdjusted5, picHeightAdjusted5, picWidthAdjusted6, picHeightAdjusted6, picWidthAdjusted4Demo, picHeightAdjusted4Demo, picWidthAdjusted5Demo, picHeightAdjusted5Demo, picWidthAdjusted6Demo, picHeightAdjusted6Demo;
float backGroundX, backGroundY, backGroundWidth, backGroundHeight; 
Boolean widthLarger = false, heightLarger = false, widthLarger1 = false, heightLarger1 = false, widthLarger2 = false, heightLarger2 = false, widthLarger3 = false, heightLarger3 = false, widthLarger4 = false, heightLarger4 = false, widthLarger5 = false, heightLarger5 = false, widthLarger6 = false, heightLarger6 = false, widthLarger4Demo = false, heightLarger4Demo = false, widthLarger5Demo = false, heightLarger5Demo = false, widthLarger6Demo = false, heightLarger6Demo = false;
Boolean draw=true, draw1=false, colorSelect=false, backGround=false, colorSelect1=false, ellipseC=false, triangleC=false, rectangleC=false;
Boolean yellowC=false, pinkC=false, greenC=false, orangeC=false, blueC=false, purpleC=false, redC=false, blackC=true, eraseC=false;
Boolean yellowC1=false, pinkC1=false, greenC1=false, orangeC1=false, blueC1=false, purpleC1=false, redC1=false, blackC1=false, whiteC1=true;
Boolean stroke=true, stroke1=false, stroke2=false, stroke3=false, stroke4=false, run=false, piC4=false, piC5=false, piC6=false;
color lightgreen1=#48A4BC, green1=#117659, resetButtonColour, buttonFill, resetWhite=#fcfcfc, gray=#5A5A5A, resetBackground=#fcfcfc, backgroundColor;
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
  //stamp
  //
  ellipseDia = appWidth/30;//Use for both hight and width of ellipse
  //
  strokeX6 = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth/6;
  strokeY6 = (centerY+appHeight*7/20)+colorRectHeight/2;
  strokeWidth6 = colorRectWidth/6;
  strokeHeight6 = colorRectHeight/2;
  //
  //button
  //
  buttonX = centerX+appWidth*13/40;
  buttonY = appHeight*0;
  buttonWidth = appWidth*14/80;
  buttonHeight = appHeight/10;
  //
  buttonX1 = centerX+appWidth*13/40;
  buttonY1 = buttonHeight;
  buttonWidth1 = appWidth*14/80;
  buttonHeight1 = appHeight/10;
  //
  buttonX2 = centerX+appWidth*13/40;
  buttonY2 = buttonHeight*2;
  buttonWidth2 = appWidth*14/80;
  buttonHeight2 = appHeight/10;
  //
  colorRectX = centerX-appWidth*39/80;
  colorRectY = centerY+appHeight*7/20;
  colorRectWidth = appWidth*239/320;
  colorRectHeight = appHeight*5/40;
  //
  colorRectX1 = centerX-appWidth*39/80;
  colorRectY1 = centerY+appHeight*7/20;
  colorRectWidth1 = appWidth*239/320;
  colorRectHeight1 = appHeight*5/40;
  //
  //color switches
  //
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
  strokeX5 = (centerX-appWidth*39/80)+colorRectHeight*5;
  strokeY5 = (centerY+appHeight*7/20)+colorRectHeight/2;
  strokeWidth5 = colorRectWidth/6;
  strokeHeight5 = colorRectHeight/2;
  //
  strokeX6 = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth/6;
  strokeY6 = (centerY+appHeight*7/20)+colorRectHeight/2;
  strokeWidth6 = colorRectWidth/6;
  strokeHeight6 = colorRectHeight/2;
  //
  strokeX7 = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth*2/6;
  strokeY7 = (centerY+appHeight*7/20)+colorRectHeight/2;
  strokeWidth7 = colorRectWidth/6;
  strokeHeight7 = colorRectHeight/2;
  //
  strokeXZ = (centerX-appWidth*39/80)+colorRectHeight*5;
  strokeYZ = centerY+appHeight*7/20;
  strokeWidthZ = colorRectWidth/6;
  strokeHeightZ = colorRectHeight;
  //
  strokeXZ1 = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth/6;
  strokeYZ1 = centerY+appHeight*7/20;
  strokeWidthZ1 = colorRectWidth/6;
  strokeHeightZ1 = colorRectHeight;
  //
  strokeXZ2 = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth*2/6;
  strokeYZ2 = centerY+appHeight*7/20;
  strokeWidthZ2 = colorRectWidth/6;
  strokeHeightZ2 = colorRectHeight;
  //
  //pic
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
  pic3 = loadImage("../images/1663167-200.png"); //Dimentions: width: 200 height: 200
  int picWidth3 = 200;
  int picHeight3 = 200;
  if ( picWidth3 >= picHeight3 ) {
    imageLargerDimension3 = picWidth3;
    imageSmallerDimension3 = picHeight3;
    widthLarger3 = true;
  } else {
    //False if Portrait
    imageLargerDimension3 = picHeight3;
    imageSmallerDimension3 = picWidth3;
    heightLarger = true;
  }
  println(imgX3, imgY3, picWidthAdjusted3, picHeightAdjusted3);
  if ( widthLarger3 == true ) imageWidthRatio3 = imageLargerDimension3/imageLargerDimension3;
  if ( widthLarger3 == true ) imageHeightRatio3 = imageSmallerDimension3/imageLargerDimension3;
  if ( heightLarger3 == true ) imageWidthRatio3 = imageSmallerDimension3/imageLargerDimension3;
  if ( heightLarger3 == true ) imageWidthRatio3 = imageLargerDimension3/imageLargerDimension3;
  //
  imgX3 = centerX+appWidth*15/40;
  imgY3 = buttonY2;
  imgWidth3 = buttonWidth/2;
  imgHeight3 = buttonHeight;
  picWidthAdjusted3 = imgWidth3 * imageWidthRatio3;
  picHeightAdjusted3 = imgHeight3 * imageHeightRatio3;
  //
  pic4 = loadImage("../images/ab7fc9be5ab8b32cd4c38a57c7219d67.png"); //Dimentions: width: 3300 height: 2550
  int picWidth4 = 3300;
  int picHeight4 = 2550;
  if ( picWidth4 >= picHeight4 ) {
    imageLargerDimension4 = picWidth4;
    imageSmallerDimension4 = picHeight4;
    widthLarger4 = true;
  } else {
    //False if Portrait
    imageLargerDimension4 = picHeight4;
    imageSmallerDimension4 = picWidth4;
    heightLarger4 = true;
  }
  println(imgX4, imgY4, picWidthAdjusted4, picHeightAdjusted4);
  if ( widthLarger4 == true ) imageWidthRatio4 = imageLargerDimension4/imageLargerDimension4;
  if ( widthLarger4 == true ) imageHeightRatio4 = imageSmallerDimension4/imageLargerDimension4;
  if ( heightLarger4 == true ) imageWidthRatio4 = imageSmallerDimension4/imageLargerDimension4;
  if ( heightLarger4 == true ) imageWidthRatio4 = imageLargerDimension4/imageLargerDimension4;
  //
  imgX4 = (centerX-appWidth*39/80)+colorRectHeight*5;
  imgY4 = centerY+appHeight*7/20;
  imgWidth4 = colorRectWidth/6;
  imgHeight4 = colorRectHeight*195/150;
  picWidthAdjusted4 = imgWidth4 * imageWidthRatio4;
  picHeightAdjusted4 = imgHeight4 * imageHeightRatio4;
  //
  pic5 = loadImage("../images/799-7996851_130-latest-pokemon-coloring-pages-for-kids-and.png"); //Dimentions: width: 947 height: 730
  int picWidth5 = 947;
  int picHeight5 = 730;
  if ( picWidth5 >= picHeight5 ) {
    imageLargerDimension5 = picWidth5;
    imageSmallerDimension5 = picHeight5;
    widthLarger5 = true;
  } else {
    //False if Portrait
    imageLargerDimension5 = picHeight5;
    imageSmallerDimension5 = picWidth5;
    heightLarger5 = true;
  }
  println(imgX5, imgY5, picWidthAdjusted5, picHeightAdjusted5);
  if ( widthLarger5 == true ) imageWidthRatio5 = imageLargerDimension5/imageLargerDimension5;
  if ( widthLarger5 == true ) imageHeightRatio5 = imageSmallerDimension5/imageLargerDimension5;
  if ( heightLarger5 == true ) imageWidthRatio5 = imageSmallerDimension5/imageLargerDimension5;
  if ( heightLarger5 == true ) imageWidthRatio5 = imageLargerDimension5/imageLargerDimension5;
  //
  imgX5 = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth/6;
  imgY5 = centerY+appHeight*7/20;
  imgWidth5 = colorRectWidth/6;
  imgHeight5 = colorRectHeight*195/150;
  picWidthAdjusted5 = imgWidth5 * imageWidthRatio5;
  picHeightAdjusted5 = imgHeight5 * imageHeightRatio5;
  //
  pic6 = loadImage("../images/Kijgpqg5T.png"); //Dimentions: width: 1000 height: 1000
  int picWidth6 = 1000;
  int picHeight6 = 1000;
  if ( picWidth6 >= picHeight6 ) {
    imageLargerDimension6 = picWidth6;
    imageSmallerDimension6 = picHeight6;
    widthLarger6 = true;
  } else {
    //False if Portrait
    imageLargerDimension6 = picHeight6;
    imageSmallerDimension6 = picWidth6;
    heightLarger6 = true;
  }
  println(imgX6, imgY6, picWidthAdjusted6, picHeightAdjusted6);
  if ( widthLarger6 == true ) imageWidthRatio6 = imageLargerDimension6/imageLargerDimension6;
  if ( widthLarger6 == true ) imageHeightRatio6 = imageSmallerDimension6/imageLargerDimension6;
  if ( heightLarger6 == true ) imageWidthRatio6 = imageSmallerDimension6/imageLargerDimension6;
  if ( heightLarger6 == true ) imageWidthRatio6 = imageLargerDimension6/imageLargerDimension6;
  //
  imgX6 = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth*2/6;
  imgY6 = centerY+appHeight*7/20;
  imgWidth6 = colorRectWidth/6;
  imgHeight6 = colorRectHeight;
  picWidthAdjusted6 = imgWidth6 * imageWidthRatio6;
  picHeightAdjusted6 = imgHeight6 * imageHeightRatio6;
  //
  pic4Demo = loadImage("../images/ab7fc9be5ab8b32cd4c38a57c7219d67_MINI.png"); //Dimentions: width: 1039 height: 803
  int picWidth4Demo = 1039;
  int picHeight4Demo = 803;
  if ( picWidth4Demo >= picHeight4Demo ) {
    imageLargerDimension4Demo = picWidth4Demo;
    imageSmallerDimension4Demo = picHeight4Demo;
    widthLarger4Demo = true;
  } else {
    //False if Portrait
    imageLargerDimension4Demo = picHeight4Demo;
    imageSmallerDimension4Demo = picWidth4Demo;
    heightLarger4Demo = true;
  }
  println(imgX4Demo, imgY4Demo, picWidthAdjusted4Demo, picHeightAdjusted4Demo);
  if ( widthLarger4Demo == true ) imageWidthRatio4Demo = imageLargerDimension4Demo/imageLargerDimension4Demo;
  if ( widthLarger4Demo == true ) imageHeightRatio4Demo = imageSmallerDimension4Demo/imageLargerDimension4Demo;
  if ( heightLarger4Demo == true ) imageWidthRatio4Demo = imageSmallerDimension4Demo/imageLargerDimension4Demo;
  if ( heightLarger4Demo == true ) imageWidthRatio4Demo = imageLargerDimension4Demo/imageLargerDimension4Demo;
  //
  imgX4Demo = (centerX-appWidth*39/80)+colorRectHeight*5;
  imgY4Demo = centerY+appHeight*7/20;
  imgWidth4Demo = colorRectWidth/6;
  imgHeight4Demo = colorRectHeight*195/150;
  picWidthAdjusted4Demo = imgWidth4Demo * imageWidthRatio4Demo;
  picHeightAdjusted4Demo = imgHeight4Demo * imageHeightRatio4Demo;
  //
  pic5Demo = loadImage("../images/799-7996851_130-latest-pokemon-coloring-pages-for-kids-and_MINI.png"); //Dimentions: width: 295 height: 227
  int picWidth5Demo = 295;
  int picHeight5Demo = 227;
  if ( picWidth5Demo >= picHeight5Demo ) {
    imageLargerDimension5Demo = picWidth5Demo;
    imageSmallerDimension5Demo = picHeight5Demo;
    widthLarger5Demo = true;
  } else {
    //False if Portrait
    imageLargerDimension5Demo = picHeight5Demo;
    imageSmallerDimension5Demo = picWidth5Demo;
    heightLarger5Demo = true;
  }
  println(imgX5Demo, imgY5Demo, picWidthAdjusted5Demo, picHeightAdjusted5Demo);
  if ( widthLarger5Demo == true ) imageWidthRatio5Demo = imageLargerDimension5Demo/imageLargerDimension5Demo;
  if ( widthLarger5Demo == true ) imageHeightRatio5Demo = imageSmallerDimension5Demo/imageLargerDimension5Demo;
  if ( heightLarger5Demo == true ) imageWidthRatio5Demo = imageSmallerDimension5Demo/imageLargerDimension5Demo;
  if ( heightLarger5Demo == true ) imageWidthRatio5Demo = imageLargerDimension5Demo/imageLargerDimension5Demo;
  //
  imgX5Demo = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth/6;
  imgY5Demo = centerY+appHeight*7/20;
  imgWidth5Demo = colorRectWidth/6;
  imgHeight5Demo = colorRectHeight*195/150;
  picWidthAdjusted5Demo = imgWidth5Demo * imageWidthRatio5Demo;
  picHeightAdjusted5Demo = imgHeight5Demo * imageHeightRatio5Demo;
  //
  pic6Demo = loadImage("../images/Kijgpqg5T_MINI.png"); //Dimentions: width: 477 height: 477
  int picWidth6Demo = 477;
  int picHeight6Demo = 477;
  if ( picWidth6Demo >= picHeight6Demo ) {
    imageLargerDimension6Demo = picWidth6Demo;
    imageSmallerDimension6Demo = picHeight6Demo;
    widthLarger6Demo = true;
  } else {
    //False if Portrait
    imageLargerDimension6Demo = picHeight6Demo;
    imageSmallerDimension6Demo = picWidth6Demo;
    heightLarger6Demo = true;
  }
  println(imgX6Demo, imgY6Demo, picWidthAdjusted6Demo, picHeightAdjusted6Demo);
  if ( widthLarger6Demo == true ) imageWidthRatio6Demo = imageLargerDimension6Demo/imageLargerDimension6Demo;
  if ( widthLarger6Demo == true ) imageHeightRatio6Demo = imageSmallerDimension6Demo/imageLargerDimension6Demo;
  if ( heightLarger6Demo == true ) imageWidthRatio6Demo = imageSmallerDimension6Demo/imageLargerDimension6Demo;
  if ( heightLarger6Demo == true ) imageWidthRatio6Demo = imageLargerDimension6Demo/imageLargerDimension6Demo;
  //
  imgX6Demo = (centerX-appWidth*39/80)+colorRectHeight*5+colorRectWidth*2/6;
  imgY6Demo = centerY+appHeight*7/20;
  imgWidth6Demo = colorRectWidth/6;
  imgHeight6Demo = colorRectHeight;
  picWidthAdjusted6Demo = imgWidth6Demo * imageWidthRatio6Demo;
  picHeightAdjusted6Demo = imgHeight6Demo * imageHeightRatio6Demo;
  //
  backGroundX = centerX-appWidth*39/80;
  backGroundY = centerY+appHeight*7/20;
  backGroundWidth = appWidth*239/320;
  backGroundHeight = appHeight*5/40;
  //
  backColorSetup();
  fill(backgroundColor);
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
  fill(resetWhite);
  //
}//End setup
//
void draw() 
{
  if ( mousePressed==true && draw1==true && mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    colorSetup();
    stampSetup();
    fill(resetWhite);
    stroke(black);
  }
  if ( run==true ) {
    backColorSetup();
    fill(backgroundColor);
    rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
    fill(resetWhite);
  }
  backColorPattern();
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
  if ( mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) {
    buttonFill = lightgreen1;
  } else {
    buttonFill = green1;
  }//End Hover-over
  fill(buttonFill);
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  fill(resetButtonColour);
  image(pic3, imgX3, imgY3, picWidthAdjusted3, picHeightAdjusted3);
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
      buttonFill = backgroundColor;
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
    //
    if ( mouseX>strokeX5 && mouseX<strokeX5+strokeWidth5 && mouseY>strokeY5 && mouseY<strokeY5+strokeHeight5 ) {
      buttonFill = gray;
    } else {
      buttonFill = resetWhite;
    }//End Hover-over
    fill(buttonFill);
    rect(strokeX5, strokeY5, strokeWidth5, strokeHeight5);
    fill(resetButtonColour);
    ellipse( strokeX5+strokeWidth5/2, strokeY5+strokeHeight5/2, ellipseDia, ellipseDia);
    //
    if ( mouseX>strokeX6 && mouseX<strokeX6+strokeWidth6 && mouseY>strokeY6 && mouseY<strokeY6+strokeHeight6 ) {
      buttonFill = gray;
    } else {
      buttonFill = resetWhite;
    }//End Hover-over
    fill(buttonFill);
    rect(strokeX6, strokeY6, strokeWidth6, strokeHeight6);
    fill(resetButtonColour);
    triangle(strokeX6+strokeWidth6/2, strokeY6, strokeX6+strokeWidth6/3, strokeY6+strokeHeight6, strokeX6+strokeWidth6*2/3, strokeY6+strokeHeight6);
    //
    if ( mouseX>strokeX7 && mouseX<strokeX7+strokeWidth7 && mouseY>strokeY7 && mouseY<strokeY7+strokeHeight7 ) {
      buttonFill = gray;
    } else {
      buttonFill = resetWhite;
    }//End Hover-over
    fill(buttonFill);
    rect(strokeX7, strokeY7, strokeWidth7, strokeHeight7);
    fill(resetButtonColour);
    rect( strokeX7+strokeWidth7/2-strokeHeight7/2, strokeY7, strokeHeight7, strokeHeight7);
  }
  //
  if ( colorSelect1==true ) {
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
    rect(eraserX, eraserY, eraserWidth, eraserHeight);
    //
    if ( mouseX>strokeXZ && mouseX<strokeXZ+strokeWidthZ && mouseY>strokeYZ && mouseY<strokeYZ+strokeHeightZ ) {
      buttonFill = gray;
    } else {
      buttonFill = resetWhite;
    }//End Hover-over
    fill(buttonFill);
    rect(strokeXZ, strokeYZ, strokeWidthZ, strokeHeightZ);
    fill(resetButtonColour);
    image(pic4Demo, imgX4Demo, imgY4Demo, picWidthAdjusted4Demo, picHeightAdjusted4Demo);
    //
    if ( mouseX>strokeXZ1 && mouseX<strokeXZ1+strokeWidthZ1 && mouseY>strokeYZ1 && mouseY<strokeYZ1+strokeHeightZ1 ) {
      buttonFill = gray;
    } else {
      buttonFill = resetWhite;
    }//End Hover-over
    fill(buttonFill);
    rect(strokeXZ1, strokeYZ1, strokeWidthZ1, strokeHeightZ1);
    fill(resetButtonColour);
    image(pic5Demo, imgX5Demo, imgY5Demo, picWidthAdjusted5Demo, picHeightAdjusted5Demo);
    //
    if ( mouseX>strokeXZ2 && mouseX<strokeXZ2+strokeWidthZ2 && mouseY>strokeYZ2 && mouseY<strokeYZ2+strokeHeightZ2 ) {
      buttonFill = gray;
    } else {
      buttonFill = resetWhite;
    }//End Hover-over
    fill(buttonFill);
    rect(strokeXZ2, strokeYZ2, strokeWidthZ2, strokeHeightZ2);
    fill(resetButtonColour);
    image(pic6Demo, imgX6Demo, imgY6Demo, picWidthAdjusted6Demo, picHeightAdjusted6Demo);
    //
  }
  //
  if ( backGround==true ) {
    fill(#CCCCCC);
    stroke(#CCCCCC);
    rect(backGroundX, backGroundY, backGroundWidth, backGroundHeight);
    fill(resetWhite);
    stroke(black);
  }
  //
  if ( draw==true && mousePressed==true && mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
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
  if ( mousePressed==true && mouseX>colorX && mouseX<colorX+colorWidth && mouseY>colorY && mouseY<colorY+colorHeight && colorSelect1==true ) {
    run=true;
    yellowC1=true;
    pinkC1=false;
    greenC1=false;
    orangeC1=false;
    blueC1=false;
    purpleC1=false;
    redC1=false;
    blackC1=false;
    whiteC1=false;
  } else { 
    run=false;
  }
  //
  if ( mouseX>colorX1 && mouseX<colorX1+colorWidth1 && mouseY>colorY1 && mouseY<colorY1+colorHeight1 && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=true;
    greenC1=false;
    orangeC1=false;
    blueC1=false;
    purpleC1=false;
    redC1=false;
    blackC1=false;
    whiteC1=false;
  }
  //
  if ( mouseX>colorX2 && mouseX<colorX2+colorWidth2 && mouseY>colorY2 && mouseY<colorY2+colorHeight2 && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=false;
    greenC1=true;
    orangeC1=false;
    blueC1=false;
    purpleC1=false;
    redC1=false;
    blackC1=false;
    whiteC1=false;
  }
  //
  if ( mouseX>colorX3 && mouseX<colorX3+colorWidth3 && mouseY>colorY3 && mouseY<colorY3+colorHeight3 && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=false;
    greenC1=false;
    orangeC1=true;
    blueC1=false;
    purpleC1=false;
    redC1=false;
    blackC1=false;
    whiteC1=false;
  }
  //
  if ( mouseX>colorX4 && mouseX<colorX4+colorWidth4 && mouseY>colorY4 && mouseY<colorY4+colorHeight4 && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=false;
    greenC1=false;
    orangeC1=false;
    blueC1=true;
    purpleC1=false;
    redC1=false;
    blackC1=false;
    whiteC1=false;
  }
  //
  if ( mouseX>colorX5 && mouseX<colorX5+colorWidth5 && mouseY>colorY5 && mouseY<colorY5+colorHeight5 && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=false;
    greenC1=false;
    orangeC1=false;
    blueC1=false;
    purpleC1=true;
    redC1=false;
    blackC1=false;
    whiteC1=false;
  }
  //
  if ( mouseX>colorX6 && mouseX<colorX6+colorWidth6 && mouseY>colorY6 && mouseY<colorY6+colorHeight6 && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=false;
    greenC1=false;
    orangeC1=false;
    blueC1=false;
    purpleC1=false;
    redC1=true;
    blackC1=false;
    whiteC1=false;
  }
  //
  if ( mouseX>colorX7 && mouseX<colorX7+colorWidth7 && mouseY>colorY7 && mouseY<colorY7+colorHeight7 && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=false;
    greenC1=false;
    orangeC1=false;
    blueC1=false;
    purpleC1=false;
    redC1=false;
    blackC1=true;
    whiteC1=false;
  }
  //
  if ( mouseX>eraserX && mouseX<eraserX+eraserWidth && mouseY>eraserY && mouseY<eraserY+eraserHeight && colorSelect1==true ) {
    run=true;
    yellowC1=false;
    pinkC1=false;
    greenC1=false;
    orangeC1=false;
    blueC1=false;
    purpleC1=false;
    redC1=false;
    blackC1=false;
    whiteC1=true;
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
    draw=true;
    draw1=false;
  }
  //
  if ( mouseX>strokeX1 && mouseX<strokeX1+strokeWidth1 && mouseY>strokeY1 && mouseY<strokeY1+strokeHeight1 && colorSelect==true ) {
    stroke=false;
    stroke1=true;
    stroke2=false;
    stroke3=false;
    stroke4=false;
    draw=true;
    draw1=false;
  }
  //
  if ( mouseX>strokeX2 && mouseX<strokeX2+strokeWidth2 && mouseY>strokeY2 && mouseY<strokeY2+strokeHeight2 && colorSelect==true ) {
    stroke=false;
    stroke1=false;
    stroke2=true;
    stroke3=false;
    stroke4=false;
    draw=true;
    draw1=false;
  }
  //
  if ( mouseX>strokeX3 && mouseX<strokeX3+strokeWidth3 && mouseY>strokeY3 && mouseY<strokeY3+strokeHeight3 && colorSelect==true ) {
    stroke=false;
    stroke1=false;
    stroke2=false;
    stroke3=true;
    stroke4=false;
    draw=true;
    draw1=false;
  }
  //
  if ( mouseX>strokeX4 && mouseX<strokeX4+strokeWidth4 && mouseY>strokeY4 && mouseY<strokeY4+strokeHeight4 && colorSelect==true ) {
    stroke=false;
    stroke1=false;
    stroke2=false;
    stroke3=false;
    stroke4=true;
    draw=true;
    draw1=false;
  }
  //
  if ( mouseX>strokeX5 && mouseX<strokeX5+strokeWidth5 && mouseY>strokeY5 && mouseY<strokeY5+strokeHeight5 && colorSelect==true ) {
    ellipseC=true;
    triangleC=false;
    rectangleC=false;
    draw=false;
    draw1=true;
  }
  if ( mouseX>strokeX6 && mouseX<strokeX6+strokeWidth6 && mouseY>strokeY6 && mouseY<strokeY6+strokeHeight6 && colorSelect==true ) {
    ellipseC=false;
    triangleC=true;
    rectangleC=false;
    draw=false;
    draw1=true;
  }
  if ( mouseX>strokeX7 && mouseX<strokeX7+strokeWidth7 && mouseY>strokeY7 && mouseY<strokeY7+strokeHeight7 && colorSelect==true ) {
    ellipseC=false;
    triangleC=false;
    rectangleC=true;
    draw=false;
    draw1=true;
  }
  //
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
  //
  if ( mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) {
    if ( colorSelect==false ) { 
      colorSelect=true;
      colorSelect1=false;
      backGround=false;
    } else {
      backGround=true;
      colorSelect=false;
      colorSelect1=false;
    }
  }
  if ( mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) {
    if ( colorSelect1==false ) { 
      colorSelect1=true;
      colorSelect=false;
      backGround=false;
    } else {
      backGround=true;
      colorSelect1=false;
      colorSelect=false;
    }
  }
  if ( mouseX>imgX4 && mouseX<imgX4+picWidthAdjusted4 && mouseY>imgY4 && mouseY<imgY4+picHeightAdjusted4 && colorSelect1==true ) {
    if ( piC4==false ) {
      fill(backgroundColor);
      rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
      fill(resetWhite);
      piC4=true;
      piC5=false;
      piC6=false;
    } else {
      piC4=false;
      piC5=false;
      piC6=false;
      fill(backgroundColor);
      rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
      fill(resetWhite);
    }
  }
  //
  if ( mouseX>imgX5 && mouseX<imgX5+picWidthAdjusted5 && mouseY>imgY5 && mouseY<imgY5+picHeightAdjusted5 && colorSelect1==true ) {
    if ( piC5==false ) {
      fill(backgroundColor);
      rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
      fill(resetWhite);
      piC4=false;
      piC5=true;
      piC6=false;
    } else {
      piC4=false;
      piC5=false;
      piC6=false;
      fill(backgroundColor);
      rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
      fill(resetWhite);
    }
  }
  //
  if ( mouseX>imgX6 && mouseX<imgX6+picWidthAdjusted6 && mouseY>imgY6 && mouseY<imgY6+picHeightAdjusted6 && colorSelect1==true ) {
    if ( piC6==false ) {
      fill(backgroundColor);
      rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
      fill(resetWhite);
      piC4=false;
      piC5=false;
      piC6=true;
    } else {
      piC4=false;
      piC5=false;
      piC6=false;
      fill(backgroundColor);
      rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight );
      fill(resetWhite);
    }
  }
  //
}//End mousePressed
//
//End MAIN Program
