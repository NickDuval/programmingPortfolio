class Button {
  //member variables
  int x, y, h, w;
  color b1, b2, t1, t2; //color for buttons and text
  String val;
  Boolean over;

  // construtor
  Button(int x, int y, int h, int w, String val) {
    this.b1 = b1;
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.val = val;
    over = false;
  }
  //display
  void display() {
    if (over) {
      fill(128);
      rect(x, y, h, w, 5);
      fill(0,120,200);
      rect(x-4, y+4, w, h, 5);
      fill(0);
      text(val, x+5, y+10);
    } else {
      fill(200,200,255);
      rect(x-4, y+4, w, h, 5);
      fill(0);
      text(val, x+5, y+10);
    }
  }
  //hover
  void hover(int xpos, int ypos) {
    over = xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}