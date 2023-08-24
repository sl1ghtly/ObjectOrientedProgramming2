public class Book
{
  private String name;
  private Author[] authors;
  private double price;
  private int qtyInStock = 0;
  
  public Book(String name, Author[] authors, double price)
  {
    this.name = name;
    this.authors = authors;
    this.price = price;
  }
  
  public Book(String name, Author[] authors, double price, int qtyInStock)
  {
    this.name = name;
    this.authors = authors;
    this.price = price;
    this.qtyInStock = qtyInStock;
  }
  
  public String getName()
  {
    return name;
  }
  public Author[] getAuthors()
  {
    return authors;
  }
  public double getPrice()
  {
    return price;
  }
  public void setPrice(double price)
  {
    this.price = price;
  }
  public int getQtyInStock()
  {
    return qtyInStock;
  }
  
  public void setQtyInStock(int qtyInStock)
  {
    this.qtyInStock = qtyInStock;
  }
  public String toString()
  {
    return "Author Name: " + name + "\nAuthors: " + authors.length + "\nPrice: " + price + "\nQuantity in Stock: " + qtyInStock;
  }
  public void printAuthors()
  {
    for (int i = 0; i < authors.length; i++)
    {
      println(authors[i].getName() + " | " + authors[i].getEmail() + " | " + authors[i].getGender());
    }
  }
}
