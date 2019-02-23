import processing.sound.*; // if missing, go to Sketch > Import Library > Add Library & install the sound library

SoundFile sample1; // declare sounds
SoundFile sample2;

int x=20;
int y=20;

void setup()
{
  size(400,200);
  
  sample1 = new SoundFile(this, "lose.wav"); // load sounds
  sample2 = new SoundFile(this, "positive.wav");
}
void draw()
{
  background(255,255,255);
  text("Press UP/DOWN/LEFT/RIGHT",10,190);
  obstacles();
    
  if(keyCode==UP)
  {
    y=y-1;
  }
  else if(keyCode==DOWN)
  {
    y=y+1;
  }
  else if(keyCode==LEFT)
  {
    x=x-1;
  }
  else if(keyCode==RIGHT)
  {
    x=x+1;
  }
  
  if( green(get(x,y))== 0 )
  {
    sample1.play(); // play sounds
  }
  if( red(get(x,y))== 0 )
  {
    sample2.play();
  }
  
  fill(0,0,0);
  noStroke();
  ellipse(x,y,10,10);
   
}

void obstacles()
{
  fill(255,0,0);
  strokeWeight(1);
  stroke(255,0,0);
  line(0,100,400,100);
  stroke(0,255,0);
  line(200,0,200,200);
  
}
