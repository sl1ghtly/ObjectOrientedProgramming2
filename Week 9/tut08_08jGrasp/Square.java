public class Square extends Shape implements Displayable
{
  private int length;

  public Square(int x, int y, int length) 
  {
    super(x, y);
    this.length = length;
  }

  public void display()
  {
    // provide code here to display the square!!!
    
    // try to draw a square using asterisks like this:
    //
    // ****
    // *  *
    // *  *
    // ****
    for (int i = 0; i < length; i++) 
    {
      for (int j = 0; j < length; j++) 
      {
          if (i == 0 || i == length || j == 0 || j == length)
              System.out.print("*");
          else
              System.out.print(" ");
      }
      System.out.println();
  }
}
  @Override
  public String toString()
  {
    return "Square[length="+length+"]";
  }
}