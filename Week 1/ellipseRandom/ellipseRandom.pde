void setup()
{
  size(640, 360);
  background(0, 0, 0);
}

void draw()
{
  float x = mouseX;
  float y = mouseY;
  
  float rgb = random(100);
  
  fill(random(255), random(255), random(255));
  ellipse(x, y, rgb, rgb);
}
