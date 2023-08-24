public class Circle extends Shape
{
  
  public Circle(int x, int y, int radius)
  {
    super(x, y, radius);
  }

  public void display()
  {
    ellipse(getX(), getY(), getRadius(), getRadius());
  }

  public double getArea()  
  {
    return getRadius()*getRadius()*Math.PI;
  }

  public String toString()
  {
    return "Circle: x="+getX()+"; y="+getY()+"; radius="+getRadius()+";";
  }
}
