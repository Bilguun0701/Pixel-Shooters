//2-D two player mortal kombat style shooter. Assignment 3 for OOP.
import ddf.minim.*;

Object Object;
Minim minim;
AudioPlayer player;
Player Player1;
Player Player2;
Stage1 stage1;
Credit Credit;
Menu Menu;
Instruction Instruction;
End End;
Keyboard Keyboard;
Hp Hp;

PImage htpbg;
PImage end1bg;
PImage end2bg;
PImage bg;
PImage creditbg;
PFont f;

void setup()
{
  size(800,600);
  smooth();
  minim = new Minim(this);
  player = minim.loadFile("GameSong.mp3");
  player.play();
  f = createFont("Arial",16,true);
  Object = new Object(random(20, 780),random(50, 570));
  stage1= new Stage1();
  Player1 = new Player(20, 500, color(255,0,0)); //Player Starting X , Y , Color
  Player2 = new Player(700, 400, color(0,0,255));
  Menu = new Menu();
  Instruction = new Instruction();
  Credit = new Credit();
  End = new End();
  Keyboard = new Keyboard();
  Hp = new Hp();
  htpbg = loadImage("instbg.jpg");
  end1bg = loadImage("end1bg.jpg");
  end2bg = loadImage("end2bg.jpg");
  bg = loadImage("bg.jpg");
  creditbg = loadImage("credit.jpg");
  
}

int screen = 0;
int j1 = 0;
int j2 = 0;
float hp1 = 350;
float hp2 = 350;
float player1hp; 

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
    player1hp = 370; 
    player1hp = player1hp-hp1;
    Hp.draw();
    Object.updateObject();
    Player1.updatePlayer1(); //Updates movements of player each frame
    Player2.updatePlayer2();
    Player1.showPlayer(); //Draws the player on screen
    Player2.showPlayer();
    stage1.draw();
    Player1.collision1();
    Player2.collision2();
    Object.collision();
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
    background(creditbg);
    Credit.draw(); 
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



