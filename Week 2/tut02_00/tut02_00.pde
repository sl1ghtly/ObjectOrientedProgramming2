Spot spot;  // declare

void setup()
{
  size(200, 200);    
  spot = new Spot(150, 150);  // create
}


void draw()
{
  background(0, 0, 0);
  spot.display();  // invoke a method
}
