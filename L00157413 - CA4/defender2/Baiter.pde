public class Baiter extends SpaceObject
{
  //private Location location; 
  //private float speed;   
  private int direction;

  public Baiter(Location location)
  {
    super(location);
    setSpeed(8);
    this.direction=-1;
  }
  
  public boolean visible()
  {
    if (getLocation().getX()+((int)getSpeed()*1)<0)
      return false;
    else
      return true;
  }

  private void updateX()
  {
    getLocation().setX(getLocation().getX()+(direction*(int)getSpeed()));
  }

  // overloaded intersect() methods
  public boolean intersect(Lander lander)
  {
    if (dist(lander.getLocation().getX()+(Game.CHARACTER_SIZE/2),lander.getLocation().getY()+(Game.CHARACTER_SIZE/2), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  }
  public boolean intersect(Defender defender)
  {
    if (dist(defender.getLocation().getX()+(Game.CHARACTER_SIZE/2),defender.getLocation().getY()+(Game.CHARACTER_SIZE/2), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  }  
  
  //toString method for Baiter
  public String toString()
  {
    return "[Baiter: location=[" + getLocation() + "], speed=" + getSpeed() + ", direction=" + this.direction + "]";
  }



  //
  // Add your code ABOVE this method
  //
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.BAITER_COLOUR);
    stroke(153);

    pushMatrix();
    updateX();
    translate(getLocation().getX(), getLocation().getY());

    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);   rect(Game.BLOCK_SIZE*1, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(0,20,Game.BLOCK_SIZE*2,Game.BLOCK_SIZE);                rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 

    popMatrix();
  }
}
