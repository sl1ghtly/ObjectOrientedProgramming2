float x = 10;
float bx = 1;

void setup()
{
  size(200, 200);
}

void draw()
{
  background(150, 150, 150);
  creature(x);
  x=x+bx;
}

void creature(float xAxis)  
{
  // draw your creature using rect(), ellispse(), line(), fill(), etc.
  fill(128, 128, 128);
  rect(xAxis, 70, 40, 80);
  
  fill(256, 256, 256);
  ellipse(xAxis + 20, 50, 60, 60);
  
  fill(0, 0, 0);
  ellipse(xAxis + 2, 50, 20, 30);
  ellipse(xAxis + 38, 50, 20, 30);
  
  line(xAxis + 40, 150, xAxis + 50, 160);
  line(xAxis, 150, xAxis - 10, 160);
}
