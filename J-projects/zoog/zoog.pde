void setup() {
  size(1000,1000);
  frameRate(1);
}

void draw() {
  background(0,150,0);
  zoog(int(random(width)),int(random(height)));
  zag(int(random(width)),int(random(height)));
  zog(int(random(width)),int(random(height)));
  zug(int(random(width)),int(random(height)));
}

void zoog(int x,int y){
  
  fill(150,200,255);
  rect(0,0,2000,200);
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(150);
  rect(x,y,20,100);
  stroke(0);
  fill(255);
  ellipse(x,y-30,60,60);
  fill(0);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,16,32);
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
  line(x-10,y+5,x-30,y-5);
  line(x+10,y+5,x+30,y-5);
}

void zag(int x,int y){
  
  fill(150,200,255);
  rect(0,0,2000,200);
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(150,0,150);
  rect(x,y,20,100);
  stroke(0);
  fill(255);
  ellipse(x,y-30,60,60);
  fill(0);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,16,32);
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
  line(x-10,y+5,x-30,y-5);
  line(x+10,y+5,x+30,y-5);
}

void zog(int x,int y){
  
  fill(150,200,255);
  rect(0,0,2000,200);
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(0,150,150);
  rect(x,y,20,100);
  stroke(0);
  fill(255);
  ellipse(x,y-30,60,60);
  fill(0);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,16,32);
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
  line(x-10,y+5,x-30,y-5);
  line(x+10,y+5,x+30,y-5);
}

void zug(int x,int y){
  
  fill(150,200,255);
  rect(0,0,2000,200);
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(25,20,255);
  rect(x,y,20,100);
  stroke(0);
  fill(255);
  ellipse(x,y-30,60,60);
  fill(0);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,16,32);
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
  line(x-10,y+5,x-30,y-5);
  line(x+10,y+5,x+30,y-5);
}