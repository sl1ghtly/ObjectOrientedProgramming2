public class Circle extends Shape implements Comparable<Circle>
{
  private int radius;

  public Circle(int x, int y, int radius) 
  {
    super(x, y);
    this.radius = radius;
  }

  public void display(int num)
  {
    fill(255);
    ellipse(getX(), getY(), radius*2, radius*2);
    fill(0, 0, 255);
    textSize(24);
    text(num, getX(), getY());    
  }
 
  @Override  
  public String toString()
  {
    return "Circle[x="+getX()+",y="+getY()+",radius="+radius+"]";
  }
  
  public int compareTo(Circle obj)
  {
    if(this.radius < obj.radius)
      return -1;                // negative integer
    if(this.radius > obj.radius)
      return 1;                 // positive integer
    return 0;
  }
}
