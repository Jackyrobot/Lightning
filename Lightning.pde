int startX = mouseX; 
int startY = 0; 
int endX = 200; 
int endY = 0;
int back = 0;
int kills = 0;
PImage photo;

void setup()
{
  size(740,600);
  frameRate(30);
  strokeWeight((int)(Math.random()*1)+2);
  fill(200);
  photo = loadImage("angus.PNG");
}

void draw()
{
  background(back);
  
  stroke((255));  
  while(endY < 600)
  {
    endY = startY + (int)(Math.random()*5)+8;
    endX = startX + (int)(Math.random()*7)-3;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if(back>0)
    back-=20;
  for(int i = 20; i<=820; i+=100)
  {
    person(i, 560); 
  }
  textSize(20);
  text("Kills: " + kills, 20, 23);
  image(photo,200,530);
}

void mousePressed()
{
  back = 100;
  background(back);
  startX = mouseX; //(int)(Math.random()*100)+150; 
  startY = 0;
  endX = 0;
  endY = 0;
  if ((mouseX>10 && mouseX<30) || (mouseX >110 && mouseX<130) || (mouseX>210 && mouseX<230) || (mouseX>310 && mouseX<330) || (mouseX>410 && mouseX<430) || (mouseX>510 && mouseX<530) || (mouseX>610 && mouseX<630) || (mouseX>710 && mouseX<730) )
  {
    kills++;
  }
}

void person(int x, int y)
{
  noFill();
  stroke(255);
  strokeWeight(2);
  ellipse(x, y, 16, 16);
  line(x, y+8, x, y+20);
  line(x-8, y+10, x+8, y+10);
  line(x, y+20, x-8, y+28);
  line(x, y+20, x+8, y+28);
}
