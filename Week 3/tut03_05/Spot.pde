public class Spot
{
  private float x, y;
  private float diameter;
  private float speed;
  private float direction;

  public Spot(float x, float y, float diameter) throws Exception
  {
    if (x < 0 || x > width || y < 0 || y > height)
      throw new Exception("Invalid coordinate: outside window");

    if (diameter > height)
      throw new Exception("Invalid diameter: bigger than window");
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.speed = 1;
    this.direction = 1;
  }

  public void display()
  {
    ellipse(x, y, diameter, diameter);
  }

  public void move()
  {
    x=x+(speed*direction);
  }

  //public String toString()
  //{
  //  return "Spot";
  //}
}
