public class Moon
{
  private float angle=0.01;
  // add class member variables here
  private String name;
  private float radius;
  private float distance;
  private float speed;
  private int orbitalPeriod;

  // add constructor here
  public Moon(String name, float radius, float distance, float speed, int orbitalPeriod)
  {
    this.name = name;
    this.radius = radius;
    this.distance = distance;
    this.speed = speed;
    this.orbitalPeriod = orbitalPeriod;
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
  public int getOrbitalPeriod()
  {
    return orbitalPeriod;
  }
  public void setOrbitalPeriod(int op)
  {
    this.orbitalPeriod = op;
  }
  public void setName(String nm)
  {
    this.name = nm;
  }
  public String toString()
  {
    return "MOON: " + name;
  }
  

  // This will display the moon when other code is completed.  You don't need to understand this code.
  public void display()
  {
    angle=angle+(0.01*speed);
    pushMatrix();
    rotate(angle);
    translate(distance, 0);
    fill(149, 149, 149);
    ellipse(0, 0, radius*2, radius*2);
    popMatrix();
  }
}
