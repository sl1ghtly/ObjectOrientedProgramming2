public class Book
{
  private String name;
  private Author[] authors = new Author[2];
  private double price;
  private String pictureName;

  public Book(String name, Author[] author, double price, String pictureName)
  {
    this.name=name;
    this.authors=author;
    this.price=price;
    this.pictureName=pictureName;
  }

  public void display()
  {
    PImage bookImg;
    bookImg = loadImage(pictureName);   
    
    stroke(255);line(0, 50, width, 50);  // has-a line
    stroke(255);line(0, 250, width, 250);  // has-a line
    
    image(bookImg, 0, 0);
    for(int i=0;i<authors.length;i++)
    {
      authors[i].display(i*200);
    }
  }


  // setters and getters
  public void setName(String name)
  {
    this.name=name;
  }

  public String getName()
  {
    return name;
  }

  public void setAuthor(Author[] author)
  {
    this.authors=author;
  }

  public Author[] getAuthor()
  {
    return authors;
  }

  public void setPrice(double price)
  {
    this.price=price;
  }

  public double getPrice()
  {
    return price;
  }


  public String toString()
  {
    return "Book: " + name + " by " + getAuthor() ;
  }
}
