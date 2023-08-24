import java.util.ArrayList;

ArrayList<Bubble> bubbles;                  // Declare arraylist of Bubble objects

int ranNum;

void setup()
{
  size(300, 300);
  bubbles = new ArrayList<Bubble>();        // Create arraylist of Bubble objects
  
  ranNum = int(random(1, 20));
  
  for (int j=0; j<ranNum; j++)              // add between 1 to 20 Bubble objects to arraylist
  {
    bubbles.add(new Bubble());
  }

  // find bubble with largest diameter
  float largest=bubbles.get(0).getDiameter();
  for (int i=0; i<bubbles.size(); i++)
  {
    if (bubbles.get(i).getDiameter()>largest)
      largest=bubbles.get(i).getDiameter();
  }
  println("Bubble with largest diameter = " + largest);
  println("Bubble array list size is = " + bubbles.size());
}

void draw()
{
  background(185, 223, 234);

  for (int i=0; i<bubbles.size(); i++)
  {
    // stop bubbles from going into negative Y coordinate
    if (bubbles.get(i).getY() > bubbles.get(i).getDiameter() / 2)
    {
      bubbles.get(i).move();
      bubbles.get(i).display();
    }
    else
    {
      bubbles.get(i).display();
    }
    
    if(bubbles.size() == 0)                 // exit if array size is 0
    {
      exit();
    }
  }
}
