class Player
{
  float playerX;
  float playerY;
  color playerColor;
  float playerXSpeed = 5.00f;
  float playerYSpeed = 0;
  float playerHeight = 30.00f;
  float playerWidth = 30.00f;
  float gravity = 0.25f;
  boolean onGround = true;
  float tempY;
  
  Player(float playerX , float playerY ,color playerColor)
  {
    this.playerX = playerX;
    this.playerY = playerY;
    this.playerColor = playerColor;
  }
  
  //I had to use an update for each player separately because when I combined it , both characters kept moving with 1 control
  void updatePlayer1()
  {
    if(Keyboard.Player1Left)
    {
      playerX = playerX - playerXSpeed;
    }
    if(Keyboard.Player1Right)
    {
      playerX = playerX + playerXSpeed;
    }
  }
  void collision1()
  {
   if(j1 == 1)
    {
      if(get(int(playerX),int(playerY)+15) != color(0))
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;
      }
      else if(get(int(playerX),int(playerY)+15) == color(0))
      {
        playerY = tempY;
        j1 = 0;
        playerYSpeed = 7.00f;
      }
    }
    else
    {
      if(get(int(playerX),int(playerY)+15) != color(0))
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;
      }
      else if(get(int(playerX),int(playerY)+15) == color(0))
      {
        playerY = tempY;
        playerYSpeed = 0;
      }
    }
  }
  
  void collision2()
  {
   if(j2 == 1)
    {
      if(get(int(playerX),int(playerY)+15) != color(0))
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;
      }
      else if(get(int(playerX),int(playerY)+15) == color(0))
      {
        playerY = tempY;
        j2 = 0;
        playerYSpeed = 7.00f;
      }
    }
    else
    {
      if(get(int(playerX),int(playerY)+15) != color(0))
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;
      }
      else if(get(int(playerX),int(playerY)+15) == color(0))
      {
        playerY = tempY;
        playerYSpeed = 0;
      }
    }
  }
  
  void updatePlayer2()
  {
    if(Keyboard.Player2Left)
    {
      playerX = playerX-playerXSpeed;
    }
    if(Keyboard.Player2Right)
    {
      playerX = playerX+playerXSpeed;
    }
  }
  
  void showPlayer()
  {
    pushMatrix();
    noStroke();
    fill(playerColor);
    rectMode(CENTER);
    rect (playerX,playerY,playerWidth,playerHeight);
    popMatrix(); 
  }
  
}
