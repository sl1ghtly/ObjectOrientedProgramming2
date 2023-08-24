public class Planet
{
  private float angle=0.01;
  // add class member variables here
  private String name;
  private float radius;
  private float distance;
  private float speed;
  private Moon[] moons;

  // add constructor here
  public Planet(String name, float radius, float distance, float speed, Moon[] moons)
  {
    this.name = name;
    this.radius = radius;
    this.distance = distance;
    this.speed = speed;
    this.moons = moons;
  }

  // add other methods here
  public String getName()
  {
    return name;
  }
  public float getRadius()
  {
    return radius;
  }
  public float getDistance()
  {
    return distance;
  }
  public float getSpeed()
  {
    return speed;
  }
  public Moon[] getMoons()
  {
    return moons;
  }
  public void setRadius(float radius)
  {
    this.radius = radius;
  }
  public String toString()
  {
    return "PLANET: " + name + " (R=" + radius + " D=" + distance + " has " + moons.length + " moon(s))";
  }
  public void printMoons()
  {
    for (Moon moon : getMoons())
    {
      println(moon.getName());
    }
  }
  public String getMoonName(int i)
  {
    return moons[i].getName();
  }
  public float getMoonRadius(int i)
  {
    return moons[i].getRadius();
  }

  // This will display the moon when other code is completed.  You don't need to understand this code.
  public void display()
  {
    angle=angle+(0.01*speed);
    pushMatrix();
    rotate(angle);
    translate(distance,0);
    fill(255, 255, 255);
    ellipse(0, 0, radius*2, radius*2);
    for (Moon moon : getMoons())
    {
      moon.display();
    }
        
    popMatrix();    
  }
}
