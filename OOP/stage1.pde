class Stage1
{
 float x1 = 100;
 float y1 = 300;
 
 float x2 = 200;
 float y2 = 500;
 
 float x3 = 400;
 float y3 = 200;
 
 float x4 = 400;
 float y4 = 400;
 
 float x5 =700;
 float y5 =300;
 
 float x6 =600;
 float y6 =500;
 
 void draw()
 {
   rectMode(CENTER);
   fill(0);
   
   //platform1
   rect(x1, y1, 200, 10);
   //platform2
   rect(x2, y2, 200, 10);
   //platform3
   rect(x3, y3, 200, 10);
   //platform4
   rect(x4, y4, 100, 10);
   //platform5
   rect(x5, y5, 200, 10);
   //platform6
   rect(x6, y6, 200, 10);
   
   
   //top boundary
   rect(400, 30, 800, 10);
   
   //bottom boundary
   rect(400, 595, 800, 10);
   
   
 }
}
   
