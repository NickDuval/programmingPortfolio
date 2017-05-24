//global variable
color btn2 = #000000; //black
color txt1 = #00008A; //dark blue
color btn1 = #FFFFFF; //white
color bg2 = #04A19A; //green-blue
color bg1 = #FFFFE1; //light yellow
color txt2 = #0079DF; //blue
void setup() {
  size(900, 400);
}

void draw() {
  background(bg1);
  drawRef(50,200,850,200);
  histEvent(50, 150, 100, 20, "Test Button", "Test Description", true);
  histEvent(100, 250, 100, 20, "Test Button", "Test Description", false);
  histEvent(200, 150, 100, 20, "Test Button", "Test Description", true);
  histEvent(250, 250, 100, 20, "Test Button", "Test Description", false);
  histEvent(350, 150, 100, 20, "Test Button", "Test Description", true);
  histEvent(400, 250, 100, 20, "Test Button", "Test Description", false);
  histEvent(500, 150, 100, 20, "Test Button", "Test Description", true);
  histEvent(550, 250, 100, 20, "Test Button", "Test Description", false);
  println("x:" + mouseX + "y:" + mouseY);
}

void histEvent(int x, int y, int w, int h, String tText, String dText, boolean top) {
  strokeWeight(1);
  fill(bg2);
  if (top) {
    line(x+20,y+h,x+40,200);
  } else {
    line(x+20,y,x+40,200);
  }
  fill(btn2);
  noStroke();
  rect(x+5, y+5, w, h, 5);  //shadow
  fill(btn1);
  stroke(0);
  rect(x, y, w, h, 5); //button
  fill(txt1);
  text(tText, x+15, y+15);
  if (mouseX>x && mouseX<=x+w && mouseY>y && mouseY<=y+h) {
    fill(txt2);
    if (top) {
      text(dText, x, y-60);
    } else {
      text(dText, x, y+60);
    }
  }
}

void drawRef(int x, int y, int w, int h) {
  strokeWeight(4);
  fill(bg2);
  line(x,y,w,h);
}