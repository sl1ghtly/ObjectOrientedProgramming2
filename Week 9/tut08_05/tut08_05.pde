ArrayList<Triangle> triangles;

void setup()
{
  size(800, 600);
  triangles = new ArrayList<Triangle>();
  triangles.add(new Triangle(100,100,30));
  triangles.add(new Triangle(200,200,60));
  triangles.add(new Triangle(300,300,90));

  println("UnSorted :"+triangles);
  java.util.Collections.sort(triangles);
  println("Sorted :"+triangles);
  
}

void draw()
{
  background(0);
  int num=1;
  for (Triangle t : triangles)
    t.display(num++);
}
