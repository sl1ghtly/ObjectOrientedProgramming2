public class Square extends Shape implements Resizable, Displayable
{
  private int length;

  public Square(int x, int y, int length) 
  {
    super(x, y);
    this.length = length;
  }

  public void display()
  {
    rect(getX(), getY(), length, length);
    
  }
  
  public void resize(int len)
  {
    this.length = this.length + len;
    
  }
  
  @Override  
  public String toString()
  {
    return "Square[length="+length+"]";
  }
}
