public abstract class SpaceObject
{
  private Location location;
  private float speed;
  
  public SpaceObject(Location location, float speed) // add direction later
  {
    this.location = location;
    this.speed = speed;
  }
  
  public SpaceObject()
  {
    this.location=new Location(0,0);
    this.speed=1.0;
  }
  
  public SpaceObject(Location location)
  {
    this.location = location;
    this.speed = 1;
  }
  
  public Location getLocation()
  {
    return this.location;
  }
  
  public void setLocation(Location location)
  {
    this.location = location;
  }
  
  public float getSpeed()
  {
    return this.speed;
  }
  
  public void setSpeed(float speed)
  {
    this.speed = speed;
  }
  
  public abstract void display();
  
  public String toString()
  {
    return "[SpaceObject: location=[" + getLocation() + "], speed=[" + getSpeed() + "]]";
  }
  
}
