Circle c;
Circle c2;

void setup()
{
  size(300, 300);
  c = new Circle(100,100,50);
  c2 = new Circle();
  println(c.toString());
  
  c2.setX(150);
  c2.setY(150);
  c2.setRadius(30);
}

void draw()
{
  background(0, 0, 0);
  c.display();
  c2.display();
}
