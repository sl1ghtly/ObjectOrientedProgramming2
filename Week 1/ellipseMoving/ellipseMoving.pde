float x; 
float inc=1;


// setup() runs first one time
void setup() 
{  
  size(200, 200); // Set the size of the window  
  x=25;            // intialise x coordinated
}

// draw() loops continuously until you close the window
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255);
  ellipse(x, 100, 50, 50);  // draw ellipse using x

  x=x+inc;
  if(x > 175)
    inc=-1;
  else if(x < 25)
    inc=1;
    
}


void mousePressed()
{
  exit();
}
