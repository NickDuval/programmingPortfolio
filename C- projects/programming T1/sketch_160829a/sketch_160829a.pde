int x=500;
int y=500;

void setup(){
  size(500,500);
  background(120);
  frameRate(60);
}

void draw(){
  background(120);
  ellipse(x--,y--,50,50);
}