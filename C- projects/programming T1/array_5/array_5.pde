int x=50;
int y=50;
int w=100;
int h=75;

void setup() {
  size(200,200);
}

void draw() {
  background(255);
  stroke(0);
  if(mouseX>=x && mouseX<=w+x && mouseY<h+y && mouseY>y) {
    fill(0,0,255);
  } else {
    fill(0,255,0);
  }
  rect(x,y,w,h);
}