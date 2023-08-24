Cards myCards;

void setup()
{   
  size(710, 96);
  noLoop();

  myCards = new Cards();  
  myCards.deal();  
}

void draw()
{  
  myCards.display();
}