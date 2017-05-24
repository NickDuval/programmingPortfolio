class Button {
  float x;
  float y;
  float w;
  float h;
  boolean on;

  Button(float tempX, float tempY, float tempW, float tempH) {
    x=tempX;
    y=tempY;
    w=tempW;
    h=tempH;
    on=false; //Button always starts as off
  }
  void display() {
    background(255);
    stroke(0);
    if (mouseX>=x && mouseX<=w+x && mouseY<h+y && mouseY>y) {
      fill(0, 0, 255);
    } else {
      fill(0, 255, 0);
    }
    rect(x, y, w, h);
  }
}