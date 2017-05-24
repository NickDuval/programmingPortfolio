void setup() {
  size(800,300);
  
}

void draw() {
  background(125);
  
  line(0,50,300,50);
  //println(tempConverter(mouseX));
  //text("F: "+ mouseX+"Cel: "+tempConverter(mouseX),mouseX,mouseY);
  tempConverter(mouseX);
  fill(255,0,0);
  rect(0,50,mouseX,20);
  drawReference(100,50);
}

float tempConverter(float val) {
  val = (val-32) * 5/9;
  text("Farenheit value =" + int(mouseX), 50, 100);
  text("Celcius value =" + int(val),50,150);
  return val;
  
}
void drawReference(int x, int y) {
  fill(255);
  stroke(200);
  line(x,y,950,y);
  for(int i = -100; i<800; i=i+50) {
    line(x+i,y-5,x+i,y+5);
    text(i+100, x+i-5, y-8);
  }
}