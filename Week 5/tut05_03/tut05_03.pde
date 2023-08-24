Circle c;
Square s;

void setup()
{
  size(300, 300);
  c = new Circle(100, 100, 30); 
  s = new Square(100, 200, 30);
  println(s.getPerimeter());  // should print 240
  println(s);                 // should print "Square: length=30"    
}

void draw()
{
  background(0, 0, 0);
  c.display();
  s.display();
}
