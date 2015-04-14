//2-D two player mortal kombat style shooter. Assignment 3 for OOP.


Player Player1;
Player Player2;
Menu Menu;
Instruction Instruction;
End End;
Keyboard Keyboard;

PImage htpbg;
PImage endbg;
PFont f;
void setup()
{
  size(800,600);
  smooth();
  f = createFont("Arial",16,true);
  Player1 = new Player(10,500,130); //Player Starting X , Y , Color
  Player2 = new Player(690,500,200);
  Menu = new Menu();
  Instruction = new Instruction();
  End = new End();
  Keyboard = new Keyboard();
  htpbg = loadImage("instbg.jpg");
  endbg = loadImage("endbg.jpg");
}

int screen = 0;
int j1 = 0;
int j2 = 0;


void draw()
{
  if (screen == 0)
  {
    Menu.draw();
  }
  else if(screen == 1)
  {
    background(255);
    Player1.updatePlayer1(); //Updates movements of player each frame
    Player2.updatePlayer2();
    Player1.showPlayer(); //Draws the player on screen
    Player2.showPlayer();
    
    fill(0);
    rect(0,600,1600,30);
    Player1.collision1();
    Player2.collision2();
    stroke (1);
    
  }
  else if(screen == 2)
  {
    background(htpbg);
    Instruction.draw();
  }
  else if(screen == 3)
  {
    
  }
  else if (screen == 4)
  {
    background(endbg);
    End.draw();
  }
}
  
void keyPressed()
{
  Keyboard.pressedKey(keyCode);
}

void keyReleased()
{
  Keyboard.releasedKey(keyCode);
}



