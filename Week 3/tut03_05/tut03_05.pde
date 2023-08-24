Spot sp;

void setup()
{
  size(300, 200);
  
  try
  {
    sp = new Spot(-50, 100, 50);
  }
  catch(Exception e)
  {
    println(e.getMessage());
    exit();
  }
}

void draw()
{
  background(0, 0, 0);
  sp.move();
  sp.display();
}
