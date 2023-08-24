public class SuitComparator implements java.util.Comparator<Cards>
{
  public int compare(Cards ob1, Cards ob2)
  {
    return ob1.getSuite() - ob2.getSuite();
  }
}
