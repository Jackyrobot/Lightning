int startX = mouseX; 
int startY = 0; 
int endX = 200; 
int endY = 0;
int back = 0;

void setup()
{
  size(800,600);
  frameRate(30);
  strokeWeight((int)(Math.random()*1)+2);
  fill(200);
  
}

void draw()
{
  background(back);
  
  stroke((255));  
  while(endY < 600)
  {
    endY = startY + (int)(Math.random()*5)+8;
    endX = startX + (int)(Math.random()*20)-10;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if(back>0)
    back-=20;
  
}

void mousePressed()
{
  back = 100;
  background(back);
  startX = mouseX; //(int)(Math.random()*100)+150; 
  startY = 0;
  endX = 0;
  endY = 0;
}

