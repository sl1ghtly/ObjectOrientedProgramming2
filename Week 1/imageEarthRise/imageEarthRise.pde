PImage img;
float x;
float y;

void setup() {
  size(300, 300);
  
  img = loadImage("./earthrise.jpg");  // image in same directory to program
}

void draw() {
  image(img, 0, 0);
  
  x = mouseX;
  y = mouseY;
  creature(x, y);
}

void creature(float xAxis, float yAxis)  
{
  // draw your creature using rect(), ellispse(), line(), fill(), etc.
  fill(128, 128, 128);
  rect(xAxis, yAxis - 10, 40, 80);
  
  fill(256, 256, 256);
  ellipse(xAxis + 20, yAxis - 30, 60, 60);
  
  fill(0, 0, 0);
  ellipse(xAxis + 2, yAxis - 30, 20, 30);
  ellipse(xAxis + 38, yAxis - 30, 20, 30);
  
  line(xAxis + 40, yAxis + 70, xAxis + 50, yAxis + 80);
  line(xAxis, yAxis + 70, xAxis - 10, yAxis + 80);
}
