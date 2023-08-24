public class Lizard
{
  public final String imageFile = "images/lizard.png";
  
  // add class variables here
  private Fly[] flys; // A Lizard "has-a" Fly
  private PImage img;
  private int x;
  private int y;

  public Lizard(Fly[] fly)
  {
    this.flys=fly;
    this.x=0;
    this.y=0;
  }

  // setters and getters go here
  public void setX(int x)
  {
    this.x=x;
  }

  public void setY(int y)
  {
    this.y=y;
  }
  
  public int getX()
  {
    return x;
  }
  
  public int getY()
  {
    return y;
  }
 
  
  public void display()
  {
    img = loadImage(imageFile);
    setX(mouseX);
    setY(mouseY);
    image(img, getX(), getY());
    for (Fly fly : flys)
    {
      fly.move();
      fly.display();
    }
  }
  
  public String toString()
  {
    return "[Lizard: (" + x + ", " + y + ")]";
  }
  
}
