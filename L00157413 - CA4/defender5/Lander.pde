public class Lander extends Alien
{
  //private Location location; 
  //private float speed;   
  private int direction;
  
  public Lander(int number, Location location)
  {
    super(number);
    setLocation(location);
    setSpeed(2);
    this.direction=1;
  }
  
  public int getDirection()
  {
    return this.direction;
  }

  //public boolean visible()
  //{    
  //  if (getLocation().getY()>height)
  //    return false;
  //  else
  //    return true;
  //}
  
  private void updateY()
  {
    getLocation().setY(getLocation().getY()+(direction*(int)getSpeed()));
  }

  //toString method for Lander
  public String toString()
  {
    return "[Lander: number=" + getNumber() + ", location=[" + getLocation() + "], speed=" + getSpeed() + ", direction=" + getDirection() + "]";
  }
  
  
  
  //
  // Add your code ABOVE this method
  //  
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    
    fill(Game.LANDER_COLOUR);
    stroke(153);
    
    pushMatrix();
    updateY();
    translate(getLocation().getX(), getLocation().getY());
    
    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                              rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
       
       
    // Part 1 - display the lander number here
    fill(255);
    textSize(12);
    text(str(getNumber()), 13,19);
    
    
    popMatrix();
  }

}
