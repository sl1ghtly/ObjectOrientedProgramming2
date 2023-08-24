void setup()
{  
  size(800, 600);
  PImage pitch;
  pitch = loadImage("images/instructions.jpg");
  image(pitch, 0, 0);
}

void draw()
{
}

void keyPressed()
{
  try
  {
    PImage pitch; 
    String letter=String.valueOf(key);
    String image = "images/"+letter.toLowerCase()+".jpg";
    pitch = loadImage(image);
    image(pitch, 0, 0);
  }
  catch(NullPointerException e)
  {
    PImage pitch; 
    println("Image not found.");
    String image = "images/noImage.jpg";
    pitch = loadImage(image);
    image(pitch, 0, 0);
  }
}
