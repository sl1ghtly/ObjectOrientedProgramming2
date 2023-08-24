Author authors[];
Book book;

void setup()
{
  size(600, 600);

  authors = new Author[2];
  authors[0] = new Author("Keith Duggan", "images/kd.png");
  authors[1] = new Author("Jim McGuinness", "images/jmg.png");
  
  book = new Book("Until Victory Always", authors, 9.00, "images/uva.jpg");
}

void draw()
{
  background(0, 0, 0);
  book.display();
}