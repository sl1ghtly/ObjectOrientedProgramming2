// declare an ArrayList shapes here  
ArrayList<Shape> shapes;

void setup()
{
  size(800, 800);

  // ------------------------------------------------------------------------------------
  //
  // PART 3 - Polymorphism with ArrayList
  //
  
  println("-- Part 3 --\n");

  // create and add shapes to the shapes arraylist
  shapes = new ArrayList<Shape>();
  shapes.add(new Square(200, 200, Shape.BLUE, 50));
  shapes.add(new Triangle(300, 300, Shape.RED, 50));
  shapes.add(new Triangle(400, 400, Shape.RED, 50));
  shapes.add(new Circle(400, 400, Shape.GREEN, 50));
  shapes.add(new Circle(400, 500, Shape.GREEN, 50));
  
  
  

  println(shapes);
  // ------------------------------------------------------------------------------------
}

void draw()
{
  // Part 3 - add for loop here
  for (Shape shape : shapes)
  {
    shape.display();
  }
}


// Part 4 can use mouse keys to create and add shapes to arraylist
void mousePressed()
{
  if (mouseButton == LEFT) 
  {
    shapes.add(new Square(mouseX, mouseY, Shape.WHITE, 50));
  } 
  else if (mouseButton == RIGHT) 
  {
    shapes.add(new Triangle(mouseX, mouseY, Shape.WHITE, 50));
  }
}
