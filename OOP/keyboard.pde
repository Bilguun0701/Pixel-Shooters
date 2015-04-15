class Keyboard
{
  boolean Player1Left , Player1Right , Player1Up;
  boolean Player2Left , Player2Right , Player2Up;
  Keyboard()
  {
    Player1Left=Player1Right=Player1Up=false;
    Player2Left=Player2Right=Player2Up=false;
  }
  
  void pressedKey(int keyCode)
  {
    if (keyCode == 65) 
    {
      Player1Left = true;
    }
    if (keyCode == 68) 
    {
      Player1Right = true;
    }
    if (keyCode == 87 && j1 == 0) 
    {
      Player1Up = true;
      j1 = 1;
    }
    if (keyCode == 37) 
    {
      Player2Left = true;
    }
    if (keyCode == 39) 
    {
      Player2Right = true;
    }
    if (keyCode == 38 && j2 == 0) 
    {
      Player2Up = true;
      j2 = 1;
    }
  }
  void releasedKey(int keyCode)
  {
    if (keyCode == 65) 
    {
      Player1Left = false;
    }
    if (keyCode == 68) 
    {
      Player1Right = false;
    }
    if (keyCode == 87) 
    {
      Player1Up = false;
    }
    if (keyCode == 37) 
    {
      Player2Left = false;
    }
    if (keyCode == 39) 
    {
      Player2Right = false;
    }
    if (keyCode == 38) 
    {
      Player2Up = false;
    }
  }
}
