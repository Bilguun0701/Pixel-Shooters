//2-D two player mortal kombat style shooter. Assignment 3 for OOP.


Player Player1;
Player Player2;
Stage1 stage1;

Menu Menu;
Instruction Instruction;
End End;
Keyboard Keyboard;

PImage htpbg;
PImage end1bg;
PImage end2bg;
PImage bg;
PFont f;

void setup()
{
  size(800,600);
  smooth();
  f = createFont("Arial",16,true);
  stage1= new Stage1();
  Player1 = new Player(20, 500, color(255,0,0)); //Player Starting X , Y , Color
  Player2 = new Player(700, 400, color(0,0,255));
  Menu = new Menu();
  Instruction = new Instruction();
  End = new End();
  Keyboard = new Keyboard();
  htpbg = loadImage("instbg.jpg");
  end1bg = loadImage("end1bg.jpg");
  end2bg = loadImage("end2bg.jpg");
  bg = loadImage("bg.jpg");
  
}

int screen = 0;
int j1 = 0;
int j2 = 0;
int hp1 = 20;
int hp2 = 20;


void draw()
{
  if (screen == 0)
  {
    background(bg);
    Menu.draw();
  }
  else if(screen == 1)
  {
    background(255);
    Player1.updatePlayer1(); //Updates movements of player each frame
    Player2.updatePlayer2();
    Player1.showPlayer(); //Draws the player on screen
    Player2.showPlayer();
    
    stage1.draw();
    Player1.collision1();
    Player2.collision2();
    stroke (1);
    if (hp1 == 0 || hp2 == 0)
    {
      screen = 4;
      rectMode(CORNER);
    }
    
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



