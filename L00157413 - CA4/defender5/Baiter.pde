public class Baiter extends SpaceObject implements Blockable
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
  public boolean intersect(Alien alien)
  {
    if (dist(alien.getLocation().getX()+(Game.CHARACTER_SIZE/2),alien.getLocation().getY()+(Game.CHARACTER_SIZE/2), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
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
  
  // added this to see if it works and if it does then it's staying
  public boolean intersect(Projectile projectile)
  {
    if (dist(projectile.getLocation().getX()+(Game.CHARACTER_SIZE/2),projectile.getLocation().getY()+(Game.CHARACTER_SIZE/2), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE)   
      return true;
    else
      return false;
  } 
  
  //toString method for Baiter
  public String toString()
  {
    return "[Baiter: location=[" + getLocation() + "], speed=" + getSpeed() + ", direction=" + this.direction + "]";
  }
  
  //blocksProjectile abstract method???
  @Override
  public boolean blocksProjectile(Projectile projectile)
  {
    if (intersect(projectile) == true)
      return true;
    else
      return false;
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
