class Object
{
  float x;
  float y;
  boolean hit = false;
  
  Object (float x,float y)
  {
    this.x = x;
    this.y = y;
  }
  
  void collision()
  {
    if(get(int(x),int(y))== color(255,0,0))
    {
       hit = true;
       hp2 = hp2 - 50;
    }
    if(get(int(x),int(y))== color(0,0,255))
    {
       hit = true;
       hp1 = hp1 - 50;
    }
  }
  void updateObject()
  {
    noStroke();
    fill(0,255,0);
    rect(x, y, 15, 15);
    if(hit)
    {
      x=random(20,780);
      y=random(50,570);
      hit = false;
    }
  }
  
    
}
