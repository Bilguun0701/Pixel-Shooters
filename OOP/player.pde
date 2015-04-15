class Player
{
  float playerX;
  float playerY;
  color playerColor;
  float playerXSpeed = 5.00f;
  float playerYSpeed = 0;
  float playerHeight = 30.00f;
  float playerWidth = 30.00f;
  float gravity = 0.1f;
  
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
       if(playerX>15)
       {
         playerX = playerX - playerXSpeed;
       }
    }
    
    if(Keyboard.Player1Right)
    {
      if(playerX<785)
      {
        playerX = playerX + playerXSpeed;
      }
    }
    
  }
  
  void collision1()
  {
    boolean onGround1 = false;
    
    //bottom center
    if(get(int(playerX),int(playerY)+15) == color(0))
    {
      onGround1 = true;
    }
    
    //bottom left
    if(get(int(playerX)-15,int(playerY)+15) == color(0))
    {
      onGround1 = true;
    }
    
    //bottom right
    if(get(int(playerX)+15,int(playerY)+15) == color(0))
    {
      onGround1 = true;
    }
    
    //top left
    if(get(int(playerX)-15,int(playerY)-15) == color(0))
    {
      onGround1 = true;
    }
    
    //top center
    if(get(int(playerX),int(playerY)-15) == color(0))
    {
      onGround1 = true;
    }
    
    //topright
    if(get(int(playerX)+15,int(playerY)-15) == color(0))
    {
      onGround1 = true;
    }
    
    //leftside
    if(get(int(playerX)-15,int(playerY)) == color(0))
    {
      onGround1 = true;
    }
    
    //rightside
    if(get(int(playerX)+15,int(playerY)) == color(0))
    {
      onGround1 = true;
    }
    
    
   if(j1 == 1)
    {
      if(!onGround1)
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;
      }
      else if(onGround1)
      {
        playerY = tempY;
        j1 = 0;
        playerYSpeed = 6.00f;
      }
    }
    else
    {
      if(!onGround1)
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;
      }
      else if(onGround1)
      {
        playerY = tempY;
        playerYSpeed = 0;
      }
    }
  }
  
  void collision2()
  {
    
    boolean onGround2 = false;
    
    //bottom center
    if(get(int(playerX),int(playerY)+15) == color(0))
    {
      onGround2 = true;
    }
    
    //bottom left
    if(get(int(playerX)-15,int(playerY)+15) == color(0))
    {
      onGround2 = true;
    }
    
    //bottom right
    if(get(int(playerX)+15,int(playerY)+15) == color(0))
    {
      onGround2 = true;
    }
    
    //top left
    if(get(int(playerX)-15,int(playerY)-15) == color(0))
    {
      onGround2 = true;
    }
    
    //top center
    if(get(int(playerX),int(playerY)-15) == color(0))
    {
      onGround2 = true;
    }
    
    //topright
    if(get(int(playerX)+15,int(playerY)-15) == color(0))
    {
      onGround2 = true;
    }
    
    //leftside
    if(get(int(playerX)-15,int(playerY)) == color(0))
    {
      onGround2 = true;
    }
    
    //rightside
    if(get(int(playerX)+15,int(playerY)) == color(0))
    {
      onGround2 = true;
    }
    
    
   if(j2 == 1)
    {
      if(!onGround2)
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;

      }
      else if(onGround2)
      {
        playerY = tempY;
        j2 = 0;
        playerYSpeed = 6.00f;
      }
    }
    else
    {
      if(!onGround2)
      {
        tempY = playerY;
        playerY = playerY - playerYSpeed;
        playerYSpeed = playerYSpeed - gravity;
      }
      else if(onGround2)
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
      if(playerX>15)
       {
         playerX = playerX - playerXSpeed;
       }
    }
    if(Keyboard.Player2Right)
    {
      if(playerX<785)
       {
         playerX = playerX + playerXSpeed;
       }
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
