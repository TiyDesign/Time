galaxy stars[]=new galaxy[50];
int bgcolour=-1,step=1;

//-----------------------------

void setup()
{
  size(1000,1000);
  for(int i=0;i<stars.length;i++)
  {
    stars[i]=new galaxy();
  } //<>//
  background(0);
}

//----------------------------- //<>//

void draw()
{
    bgcolour=bgcolour+step;
  if(bgcolour>255||bgcolour<0)
  {
    step=step*(-1);
  }
  fill(bgcolour,20);
  strokeWeight(0);
  rect(0,0,width,height);
   
  for(int i=0;i<stars.length;i++)
  {
    stars[i].update();
    stars[i].display();
  }
}

class galaxy
{
  float x,y,R,r,angle,speed;
  galaxy()
  {
    angle=random(360);
    R=random(100,800);
    speed=random(-1,1);
  }
  void display()
  {
    fill(0);
    ellipse(x,y,r,r);
  }
  void update()
  {
  x=mouseX+R*cos(radians(angle));
  y=mouseY+R*sin(radians(angle));
  angle=angle+speed;
  strokeWeight(255);
  fill(255);
  ellipse(x,y,15,20);
  }
}
