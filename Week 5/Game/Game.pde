World gameWorld;

void setup()
{
  size(488, 488);
  gameWorld = new World(new Player(new Location(0, 0)), 4);  
  gameWorld.drawWorld();
}

void draw()
{
}

void keyPressed()
{
  //All games boil down to this – update world and render
  gameWorld.update(keyCode);
  gameWorld.drawWorld();
}


void mousePressed()
{
  print(gameWorld.printLocationInfo());
}
