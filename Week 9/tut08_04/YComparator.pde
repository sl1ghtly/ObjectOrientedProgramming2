public class YComparator implements java.util.Comparator<Shape>
{
  public int compare(Shape ob1, Shape ob2)
  {
    return ob1.getY() - ob2.getY();
  }
}
