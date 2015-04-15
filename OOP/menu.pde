class Menu
{
  int stroke;
  
  void draw()
  {
    background(255);
    fill(255,255,0);
    stroke(255,255,0);
    rect(285, 295, 240, 200);
    stroke = 255;
    
    textFont(f,30);
    textAlign(LEFT);
    
    if(mouseX > 300 && mouseX < 410)
    {
      if(mouseY > 300 && mouseY < 330)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(300,303,110,30);
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
    text("START",310,330);
    
    if(mouseX > 300 && mouseX < 500)
    {
      if(mouseY > 350 && mouseY < 380)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(300,353,220,30);
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
    text("HOW TO PLAY",310,380);
    if(mouseX > 300 && mouseX < 500)
    {
      if(mouseY > 400 && mouseY < 430)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(300,403,210,30);
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
    text("HIGH SCORE",310,430);
    
    if(mouseX > 300 && mouseX < 380)
    {
      if(mouseY > 450 && mouseY < 480)
      {
        stroke = 0;
        fill(255,255,0);
        stroke(stroke);
        rect(300,453,80,30);
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
    text("EXIT",310,480);
  }
}
