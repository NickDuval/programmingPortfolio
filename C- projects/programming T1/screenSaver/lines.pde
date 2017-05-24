class lines {
  //class variables
  float x;
  float y;
  float w;
  float lineLength;

  //constructor
  lines(float tempX, float tempY, float tempW, float tempLength) {
    x = tempX;
    y = tempY;
    w = tempW;
    lineLength = tempLength;
  }

  //display method
  void display() {
    w = random(1, 5);
    lineLength = random(1, 50);
    stroke(random(255),random(255),random(255));
    strokeWeight(2);
    if (x>width || x<0 || y>height || y<0) {
      x = random(width);
      y = random(height);
    } else {
      if (random(100)>78) {
        strokeWeight(2);
        moveL(x, y, lineLength);
      } else if (random(100)>70) {
        strokeWeight(2);
        moveU(x, y, lineLength);
      } else if (random(100)>55) {
        strokeWeight(2);
        moveR(x, y, lineLength);
      } else if (random(100)>40) {
        strokeWeight(2);
        moveD(x, y, lineLength);
      } else {
        moveDL(x, y, lineLength);
      }
    }
  }
  //movements
  void moveR(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      x=startX+i;
    }
  }

  void moveL(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      x=startX-i;
    }
  }

  void moveD(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      y=startY+i;
    }
  }

  void moveU(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      y=startY-i;
    }
  }
  void moveDL(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY+i);
      y=startY-i;
    }
  }
}