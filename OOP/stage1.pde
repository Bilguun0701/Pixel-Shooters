class Stage1
{
 float x1 = 400;
 float y1 = 300;
 
 float x2 = 100;
 float y2 = 150;
 
 float x3 = 700;
 float y3 = 150;
 
 float x4 = 100;
 float y4 = 450;
 
 float x5 =700;
 float y5 =450;

 
 void draw()
 {
   rectMode(CENTER);
   fill(0);
   
   rect(x1, y1, 300, 10);
   rect(x2, y2, 200, 10);
   rect(x3, y3, 200, 10);
   rect(x4, y4, 200, 10);
   rect(x5, y5, 200, 10);
   
   rect(400, 595, 800, 10);
   rect(400, 5, 800, 10);
   
 }
}
   
