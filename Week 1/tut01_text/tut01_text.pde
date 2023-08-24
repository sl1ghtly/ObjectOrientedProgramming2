void setup() 
{
  size(800, 400);
  background(0);
}

void draw()
{
  //background(0);
}

void mouseClicked()
{
  println("[" + mouseX + ", " + mouseY +"]");
  ellipse(mouseX, mouseY, 5, 5);
  text("[" + mouseX + ", " + mouseY +"]", mouseX, mouseY);
}
