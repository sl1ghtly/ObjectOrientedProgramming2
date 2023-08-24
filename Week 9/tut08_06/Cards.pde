class Cards
{  
  private final int NO_OF_CARDS=5;
  private final int MAX_CARDS=13;
  private final int IMAGE_WIDTH=71;
  
  private ArrayList<Card> cards;

  public Cards()
  {
    cards = new ArrayList<Card>();
  }

  public void addCard(Card card)
  {
    cards.add(card);
  }  
  
  public void deal()
  {
    int cardValue;

    for (int i=0; i<NO_OF_CARDS; i++)
    {
      cardValue = (int)random(1, MAX_CARDS);
      addCard(new Card(cardValue));
    }
    
    // sort here
    java.util.Collections.sort(cards);    
  }

  void display()
  {
    PImage cardImage;    // image
    
    int i=0;    
    for (Card card: cards)
    {
      cardImage = loadImage("images/"+card.getValue()+".png"); // load card image
      image(cardImage, IMAGE_WIDTH*i, 0);                       // display card image on window
      i++;
    }
  }
}
