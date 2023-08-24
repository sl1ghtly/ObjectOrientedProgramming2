ArrayList<Circle> circles;

void setup()
{
  size(800, 600);
  circles = new ArrayList<Circle>();
  circles.add(new Circle(100, 300, 50));
  circles.add(new Circle(200, 200, 40));
  circles.add(new Circle(300, 100, 30));

  // sort circles by their x coordinate value
  //java.util.Collections.sort(circles, new XComparator());
  
  // sort circles by y coordinate value
  java.util.Collections.sort(circles, new YComparator());
  
}

void draw()
{
  background(0);
  int num=1;
  for (Circle c : circles)
    c.display(num++);
}
