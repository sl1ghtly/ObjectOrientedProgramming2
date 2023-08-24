public class Circle
{
  private int x;
  private int y;
  private int radius;

  public Circle()
  {
    this.x=0;
    this.y=0;
    this.radius=20;
  }
  public Circle(int x, int y, int radius)
  {
    this.x=x;
    this.y=y;
    this.radius=radius;
  }

  public void display()
  {
    ellipse(x, y, radius, radius);
  }

  public int getRadius()
  {
    return radius;
  }
  public int getX()
  {
    return x;
  }
  public int getY()
  {
    return x;
  }
  public double getArea()  
  {
    return radius*radius*Math.PI;
  }
  
  public void setRadius(int radius)
  {
    this.radius=radius;
  }
  public void setX(int x)
  {
    this.x=x;
  }
  public void setY(int y)
  {
    this.y=y;
  }
  
  public String toString()
  {
    return "Circle: x=" + getX() + "; y= " + getY() + "; radius=" + getRadius() + ";";
  }
}
