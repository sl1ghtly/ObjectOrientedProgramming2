Cards myCards;

void setup()
{   
  size(355, 96);
  noLoop();

  myCards = new Cards();  
  myCards.deal();  
}

void draw()
{  
  myCards.display();
}