void stampSetup() {
  if ( ellipseC==true ) ellipse( mouseX, mouseY, ellipseDia, ellipseDia );
  if ( triangleC==true ) triangle( mouseX, mouseY-strokeHeight6*1.1, mouseX-strokeWidth6*1/3, mouseY+strokeHeight6/3, mouseX+strokeWidth6*1/3, mouseY+strokeHeight6/3 );
  if ( rectangleC==true ) rect( mouseX-strokeHeight7/2, mouseY-strokeHeight7/2, strokeHeight7, strokeHeight7 );
}
