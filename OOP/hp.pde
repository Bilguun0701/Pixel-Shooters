class Hp
{
  void draw()
  {
    rectMode(CORNER);
    fill(255,0,0);
    rect(20,5,350,20);
    rect(430,5,350,20);
    fill(0,255,0);
    rect(player1hp,5,hp1,20);
    rect(430,5,hp2,20);
  }
}
