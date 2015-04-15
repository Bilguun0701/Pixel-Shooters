class Instruction
{
  int pointer = 0;
  
  void draw()
  {
    textFont(f,30);
    textAlign(LEFT);
    
    if(mouseX > 690 && mouseX < 770)
    {
      if(mouseY > 520 && mouseY < 560)
      {
        pointer = 255;
        fill(0);
        stroke(pointer);
        rect(690,520,80,40);
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
    text("back",700,550);
  }
}
