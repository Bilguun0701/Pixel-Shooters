class Menu
{
  int stroke;
  
  void draw()
  {
    background(255);
    fill(255,255,0);
    stroke(255,255,0);
    rect(390, 365, 244, 200);
    stroke = 255;
    
    textFont(f,30);
    textAlign(LEFT);
    
    if(mouseX > 400 && mouseX < 510)
    {
      if(mouseY > 375 && mouseY < 405)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(400,375,110,30);
        if (mousePressed == true)
        {
          screen = 1;
        }
      }
      else
      {
        stroke = 255;
      }
    }
    else
    {
      stroke = 255;
    }
    fill(0);
    text("START",410,400);
    
    if(mouseX > 400 && mouseX < 600)
    {
      if(mouseY > 425 && mouseY < 455)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(400,425,220,30);
        if (mousePressed == true)
        {
          screen = 2;
        }
      }
      else
      {
        stroke = 255;
      }
    }
    else
    {
      stroke = 255;
    }
    fill(0);
    text("HOW TO PLAY",410,450);
    if(mouseX > 400 && mouseX < 600)
    {
      if(mouseY > 475 && mouseY < 505)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(400,475,210,30);
        if (mousePressed == true)
        {
          screen = 3;
        }
      }
      else
      {
        stroke = 255;
      }
    }
    else
    {
      stroke = 255;
    }
    fill(0);
    text("HIGH SCORE",410,500);
    
    if(mouseX > 400 && mouseX < 480)
    {
      if(mouseY > 525 && mouseY < 555)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(400,525,80,30);
        if (mousePressed == true)
        {
          exit();
        }
      }
      else
      {
        stroke = 255;
      }
    }
    else
    {
      stroke = 255;
    }
    fill(0);
    text("EXIT",410,550);
  }
}
