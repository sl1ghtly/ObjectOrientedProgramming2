void setup()
{
  // create authors array with objects for: 
  Author[] authors = new Author[3];
  //"Heidi Pitior", "hpitior@gmail.com", 'f'
  authors[0] = new Author("Heidi Pitior", "hpitior@gmail.com", 'f');
  // "Jennifier Egan", "jegan@yahoo.com", 'f'
  authors[1] = new Author("Jennifier Egan", "jegan@yahoo.com", 'f');
  // "Mike Atwell", "matwell@hotmail.com", 'm'
  authors[2] = new Author("Mike Atwell", "matwell@hotmail.com", 'm');
  
  
  // create book object for:
  Book aBook = new Book("The Best American Short Stories", authors, 9.80, 3); 
  // "The Best American Short Stories", price: 9:80, quantity: 3.
  

  // print authors
  aBook.printAuthors();
  
  // (4) Search for Jennifier Egan here
  for (int i = 0; i < authors.length; i++)
  {
    if (authors[i].getName() == "Jennifier Egan")
      {
        authors[i].setEmail("jennifer.egan@gmail.com");
      }
  }


  // print authors again to check Jennifier Egans email has changed
  aBook.printAuthors();    
}

void draw()
{
}
