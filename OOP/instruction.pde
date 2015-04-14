class Instruction
{
  int pointer = 0;
  
  void draw()
  {
    textFont(f,30);
    textAlign(LEFT);
    
    if(mouseX > 880 && mouseX < 1000)
    {
      if(mouseY > 670 && mouseY < 710)
      {
        pointer = 255;
        fill(0);
        stroke(pointer);
        rect(880,670,100,40);
        if (mousePressed == true)
        {
          screen = 0;
        }
      }
      else
      {
        pointer = 0;
      }
    }
    else
    {
      pointer = 0;
    }
    fill(255);
    text("back",900,700);
  }
}
