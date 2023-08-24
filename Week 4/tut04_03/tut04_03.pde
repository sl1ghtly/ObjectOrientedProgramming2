Lizard lizard;
Fly[] flys;

void setup()
{
  size(800, 800);
  noCursor();  // hides mouse cursor
  flys = new Fly[10];
  for (int i=0; i<flys.length; i++)
  {
    flys[i] = new Fly();
  }
  lizard = new Lizard(flys);
}

void draw()
{
  background(0);  
  lizard.display();
  println(lizard);  
}
