void setup()
{
  size(640, 360);
  background(0, 0, 0);
}

void draw()
{
  // draw nothing here
}

void mousePressed()
{
  ellipse(mouseX, mouseY, 50, 50);  // draw a ellipse at mouse (x,y) coords
}

void keyPressed()
{
  if (key=='r')
    fill(255, 0, 0);
  if (key=='g')
    fill(0, 255, 0);
  if (key=='b')
    fill(0, 0, 255);

}
