public class XComparator implements java.util.Comparator<Shape>
{
  public int compare(Shape ob1, Shape ob2)
  {
    return ob1.getX() - ob2.getX();
  }
}
