public class Goal extends Shot
{
  public Goal(int x, int y, color colour)
  {
    super(x, y, colour);
  }
  
  @Override
  public void display()
  {
    rectMode(CENTER);
    fill(getColour());
    rect(getX(), getY(), Shot.SIZE, Shot.SIZE);
  }
  
  public String toString()
  {
    return "Goal@("+getX() + "," + getY() + ")";
  }
}
