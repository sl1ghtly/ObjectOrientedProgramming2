// runs one time
void setup() 
{
  // Set the size of the window
  size(640, 360);
  //background(0, 0, 0);
}

// loops continuously 
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); 

  ellipse(mouseX, mouseY, mouseY, mouseY);  // draw ellipse using mouse x coordinate
}
