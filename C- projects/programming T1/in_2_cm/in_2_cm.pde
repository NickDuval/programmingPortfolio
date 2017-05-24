void setup() {
  size(800, 300);
}

void draw() {
  background(125);
  line(50, 50, 300, 50);
  drawReference(100,50);
  //println(tempConverter(mouseX));
  //text("cm: "+ mouseX+"in: "in2cmConverter(mouseX), mouseX, mouseY);
  in2cmConverter(mouseX);
  fill(0,255,0);
  rect(0,50,mouseX,20);
}

float in2cmConverter(float val) {
  val=val*2.54;
  text("inches value =" + int(mouseX), 50, 100);
  text("centimeter value =" + int(val),50,150);
  return val;
}
/*float f2mConverter(float val) {
  return val;
}
float mi2kmConverter(float val) {
  return val;
}*/
void drawReference(int x, int y) {
  fill(255);
  stroke(200);
  line(x,y,950,y);
  for(int i = -100; i<100; i=i+5) {
    line(x+i,y-5,x+i,y+5);
    text(i+100, x+i-5, y-8);
  }
}