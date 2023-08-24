public class Square extends Shape
{  
  public Square(int x, int y, int radius)
  {
    super(x, y, radius * 2);
  }
  
  public void display()
  {
    rect(getX(), getY(), getRadius(), getRadius());
  }
  
  public int getPerimeter()  
  {
    return 4*getRadius();
  }
  
  public String toString()
  {
    return "Square: x="+getRadius()/2+";";
  }
}
