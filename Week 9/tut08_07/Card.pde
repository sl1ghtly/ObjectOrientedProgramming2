public class Card implements Comparable<Card>
{
  private int value;
  private String suite;
  
  public Card(int value, String suite)  
  {
    this.value=value;
    this.suite=suite;
  }
  
  public int getValue()
  {
    return value;
  }
  
  public String getSuite()
  {
    return suite;
  }
  
  public int compareTo(Card otherCard)
  {
    return (this.value-1)%13-(otherCard.value-1)%13;
  }
}
