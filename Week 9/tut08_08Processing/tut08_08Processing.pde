ArrayList<Square> squares;

void setup()
{
  size(800, 600);  
  squares = new ArrayList<Square>();
  squares.add(new Square(100, 100, 100));
}

void draw()
{
  background(0);
  for (Square square : squares)
    square.display();
}