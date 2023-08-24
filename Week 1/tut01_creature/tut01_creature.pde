void setup()
{
  size(200, 200);
}

void draw()
{
  background(150, 150, 150);
  creature();
}

void creature()  
{
  fill(128, 128, 128);
  rect(80, 70, 40, 80);
  
  fill(256, 256, 256);
  ellipse(100, 50, 60, 60);
  
  fill(0, 0, 0);
  ellipse(82, 50, 20, 30);
  ellipse(118, 50, 20, 30);
  
  line(120, 150, 130, 160);
  line(80, 150, 70, 160);
}
