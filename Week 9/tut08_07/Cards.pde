class Cards
{  
  private final int NO_OF_CARDS=10;
  private final int MAX_CARDS=52;
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
    String suite;
    for (int i=0; i<NO_OF_CARDS; i++)
    {
      cardValue = (int)random(1, MAX_CARDS);
      if (cardValue >=1 || cardValue <= 13)
        suite = "Clubs";
      if (cardValue >=14 || cardValue <= 26)
        suite = "Diamonds";
      if (cardValue >=27 || cardValue <= 39)
        suite = "Hearts";
      if (cardValue >=40 || cardValue <= 52)
        suite = "Spades";
      addCard(new Card(cardValue, suite));
    }
    
    // sort by card value 
    java.util.Collections.sort(cards);    
    
    // sort by card suit 
    java.util.Collections.sort(cards, new SuitComparator());
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
