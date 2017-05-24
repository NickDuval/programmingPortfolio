void setup() {
  size(800, 700);
}

void draw() {
  background(125);
  line(0, 50, 800, 50);
  line(0,250,800,250);
  line(0,450,800,450);
  drawReference(100, 50);
  in2cmConverter(mouseX);
  text("inches value =" + int(mouseX/8), 50, 100);
  text("centimeter value =" + in2cmConverter(mouseX/8), 50, 150);
  drawReference(100,250);
  ft2mConverter(mouseX);
  text("feet value =" + int(mouseX/8), 50, 300);
  text("meter value =" + ft2mConverter(mouseX/8), 50, 350);
  drawReference(100,450);
  mi2kmConverter(mouseX);
  text("mile value =" + int(mouseX/8), 50, 500);
  text("kilometer value =" + mi2kmConverter(mouseX/8), 50, 550);
  fill(0, 255, 0);
  rect(0, 50, mouseX, 20);
  rect(0,250,mouseX,20);
  rect(0,450,mouseX,20);
  text("Inches to centimeters by Nick Duval",150,25);
  text("feet to meter", 150, 225);
  text("move mouse to desired length in inches to get the same distance in centimeters",150,650);
}

float in2cmConverter(float val) {
  val=val*2.54;
  return val;
}

void drawReference(int x, int y) {
  fill(255);
  stroke(200);
  for (int i = 0; i<x; i=i+5) {
    line(i*8, y-5, i*8, y+5);
    text(i, (i*8)-5, y-8);
  }
}

float ft2mConverter(float val) {
  val = val*.3048;
  return val;
}

float mi2kmConverter(float val) {
  val = val*1.60934;
  return val;
}