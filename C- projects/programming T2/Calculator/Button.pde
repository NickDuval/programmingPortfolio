class Button {
  //member variables
  int x, y, h, w;
  color b1, b2, t1, t2; //color for buttons and text
  String val = "";
  Boolean over=false;
  boolean isSpecial=false;
  int numVal;
  String opVal;
  boolean isNum=false;
  boolean isOp=false;
  String spVal;

  // construtor
  Button(int x, int y) {
    this.x = x;
    this.y = y;
  }

  Button asNum(int numVal, int w, int h) {
    isNum= true;
    this.numVal=numVal;
    this.w=w;
    this.h=h;
    return this;
  }

  Button asOperator(String opVal, int w, int h) {
    isOp=true;
    this.opVal=opVal;
    this.w=w;
    this.h=h;
    return this;
  }

  Button asSpecial(String spVal, int w, int h) {

    this.spVal=spVal;
    this.w=w;
    this.h=h;
    isSpecial=true;
    return this;
  }

  void display() {
    if (isNum) {
      textSize(20);
      fill(0, 180, 200);
      ellipse(x, y, w, h);
      fill(0);
      text(numVal, x-5, y+5);
    } else if (isOp) {
      textSize(20);
      fill(200, 200, 255);
      ellipse(x, y, w, h);
      fill(0);
      if (opVal=="+/-") {
        text(opVal, x-18, y+5);
      } else if(opVal=="cos()"||opVal=="sin()"||opVal=="tan()") {
        text(opVal, x-20, y+5);
      }else {
        text(opVal, x-5, y+5);
      }
    } else if (isSpecial) {
      fill(#81138E);
      ellipse(x, y, w, h);
      fill(255);
      text(spVal, x-5, y+5);
    }
  }
  //hover
  void hover(int xpos, int ypos) {
    over = xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}