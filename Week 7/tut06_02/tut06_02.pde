void setup()
{
  size(800, 800);

  // ------------------------------------------------------------------------------------
  //
  // PART 2 - Polymorphism
  //
  println("-- Part 2 --\n");
  
  Shape shape1 = new Shape(100, 100, Shape.WHITE);  
  shape1.display();
  println(shape1);

  Shape shape2 = new Square(200, 200, Shape.BLUE, 100); 
  shape2.display();
  println(shape2);

  Shape shape3 = new Triangle(300, 300, Shape.RED, 100); 
  shape3.display();
  println(shape3);

  // ------------------------------------------------------------------------------------
}

void draw()
{
}
