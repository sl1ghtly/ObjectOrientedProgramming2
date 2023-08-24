public class Circle extends Shape 
{
  private int radius;

  // Constructor
  public Circle(int x, int y, int radius) 
  {
    super(x, y);
    this.radius = radius;
  }
  public Circle(int x, int y, color colour, int radius)
  {
    super(x, y, colour);
    this.radius = radius;
  }
  
  public int getRadius()
  {
    return radius;
  }
  
  public void setRadius(int r)
  {
    if (this.radius < 0)
      this.radius = 0;
    else
      this.radius = this.radius + r;
  }
  
  public boolean equals(Circle shape)
  {
    if (this.radius == shape.getRadius())
      return true;
    else
      return false;
  }

  @Override
  public double getArea() 
  {
    return PI*sq(radius);
  }

  @Override
  public void display()
  {    
    fill(getColour());
    ellipse(getX(), getY(), radius*2, radius*2);
  } 

  @Override
  public boolean intersects(Shape shape)
  {
    if (dist(shape.x, shape.y, getX(), getY()) < radius*2)    
      return true;
    else
      return false;
  }

  @Override
  public String toString() 
  {
    return "Circle[radius*2=" + radius + "," + super.toString() + "]";
  }
  
  @Override
  public void update()
  {
    if ((getX()>width - this.radius))
      changeXDirection();
    if ((getY()>height - this.radius))
      changeYDirection();
    if ((getX()<0 + this.radius))
      changeXDirection();
    if ((getY()<0 + this.radius))
      changeYDirection();
    incX(5);
    incY(5);
  }

}
