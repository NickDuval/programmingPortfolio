void setup(){
  size(500,500);
  background(150);
}

void draw(){
  button(200,200,100,30,5,"Button Text");
  button(285,115,100,30,30,"hi");
  button(115,285,100,30,30,"press");
  button(285,285,100,30,30,"do not touch");
  button(115,115,100,30,30,"BOOM");
  
}

void button(int x,int y,int w,int h, int r, String bt){
  //shadow
  noStroke();
  fill(100);
  rect(x+10,y+10,w,h,r);
  //top rect
  stroke(0);
  fill(220);
  rect(x,y,w,h,r);
  //reder text
  fill(0);
  text(bt,x+15,y+20);
}