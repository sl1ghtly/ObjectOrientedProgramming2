Circle circle1;
Circle circle2;

void setup()
{
  size(800, 600);

  //Shape shape1 = new Shape(100, 100, Shape.WHITE);  
  //shape1.display();
  //println(shape1);

  circle1 = new Circle(100, 100, Shape.WHITE, 50);  
  println(circle1);

  circle2 = new Circle(700, 100, Shape.WHITE, 50);  
  println(circle2);
  
  if (circle1.equals(circle2))
  {
    println("Circle 1 equals Circle 2!");
  }
}

void draw()
{  
  background(0);
  circle1.display();  
  circle1.update();  // 
  circle2.display();
  circle2.update();  // 
  if (circle1.equals(circle2))
  {
    if (circle1.intersects(circle2))
    {
      circle1.setRadius(-1);
      circle1.setColour(Shape.RED);
    }
    else
    {
      circle1.setColour(Shape.WHITE);
    }
    if (circle2.intersects(circle1))
    {
      circle2.setRadius(-1);
      circle2.setColour(Shape.RED);
    }
    else
    {
      circle2.setColour(Shape.WHITE);
    }
  }
  
  if (circle1.getRadius() == 0 && circle2.getRadius() == 0)
    exit();
  
}



void keyPressed()
{
  if (keyCode == UP) 
  {
    circle1.setRadius(1);
    circle2.setRadius(1);
  }
  if (keyCode == DOWN) 
  {
    circle1.setRadius(-1);
    circle2.setRadius(-1);
  }
}
