public class Card implements Comparable<Card>
{
  private int value;
  
  public Card(int value)  
  {
    this.value=value;
  }
  
  public int getValue()
  {
    return value;
  }
  
  public int compareTo(Card obj)
  {
    if(this.value < obj.value)
      return -1;                // negative integer
    if(this.value > obj.value)
      return 1;                 // positive integer
    return 0;
  }
}
