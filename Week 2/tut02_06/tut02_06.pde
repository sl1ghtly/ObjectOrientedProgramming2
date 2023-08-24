import java.util.ArrayList;

ArrayList<Integer> data;
int grades[] = {35, 48, 26, 71, 58, 27, 53, 46, 54, 74, 49, 80, 50, 47, 43, 35, 61, 53, 59, 49, 14, 41, 83, 54, 53, 37, 32, 32, 48, 43, 37, 34, 41, 41, 46, 8, 1, 16, 3, 7, 46, 46, 35, 57, 49, 41, 55, 57, 40, 48, 29, 55, 61, 42, 45, 47, 44, 40, 79, 41, 32, 44, 48, 41, 52, 37, 37, 36, 57, 57, 85, 44, 0, 61, 49, 42, 39, 70, 41, 46, 41, 50, 47, 42, 40, 37, 42, 45, 31, 32, 45, 31, 32, 54, 40, 51, 38, 7, 55, 45, 40, 60, 40, 2, 44, 25, 37, 40, 40, 41, 21, 53, 56, 46, 33, 40, 28, 35, 48, 41, 56, 43, 55, 33, 55, 49, 39, 54, 14, 66, 42, 52, 38};

void setup()
{
  size(800, 800);

  // create ArrayList 
  data = new ArrayList<Integer>();

  // iterate through grades array and add values to data arraylist
  for (int i=0; i<grades.length; i++)
    data.add(new Integer(grades[i]));

  //noLoop(); // means draw() is called just once
}

void draw()
{
  background(0, 0, 0);

  for (int i=0; i<data.size(); i++)
  {
    if (data.get(i)<40)
      fill(255, 0, 0, 100);
    else
      fill(0, 255, 0, 100);

    // draw ellipse using current index value in arraylist 
    ellipse(random(width), random(height), data.get(i), data.get(i));
  }
}