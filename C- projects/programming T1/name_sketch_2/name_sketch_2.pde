int x, y;

void setup() {
  size(1000, 300);
  x=500;
  y=150;
}

void draw() {
  fill(255);
  strokeWeight(3);
  //drawName();
  //noLoop();
}
void mouseClicked() {
  saveFrame("line-#####.PNG");
}

/*void drawName() {
  strokeWeight(3);
  moveUp(20);
  moveDownRight(10);
  moveUp(20);
  moveDown(20);
  moveRight(10);
  moveUp(20);
  moveRight(5);
  moveLeft(10);
  moveRight(5);
  moveDown(20);
  moveRight(10);
  moveUp(20);
  moveRight(10);
  moveDown(5);
  moveUp(5);
  moveLeft(10);
  moveDown(20);
  moveRight(10);
  moveUp(5);
  moveDown(5);
  moveRight(10);
  moveUp(20);
  moveDown(10);
  moveUpRight(3);
  moveDownLeft(3);
  moveDownRight(5);
  
}
*/
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}

void moveDownRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y+i*2);
  }
  x=x+(10*rep);
  y=y+(20*rep);
}

void moveUpRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y-i*2);
  }
  x=x+(10*rep);
  y=y-(20*rep);
}

void moveUpLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y-i*2);
  }
  x=x-(10*rep);
  y=y-(20*rep);
}

void moveDownLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y+i*2);
  }
  x=x-(10*rep);
  y=y+(20*rep);
}

void keyPressed() {
  if(key ==CODED) {
    println(keyCode);
    if(keyCode == RIGHT) {
      moveRight(1);
    }else if(keyCode == DOWN) {
      moveDown(1);
    }else if(keyCode == LEFT) {
      moveLeft(1);
    }else if(keyCode == UP) {
      moveUp(1);
    }/*else if(keyCode == 81) {
      moveUpLeft(1);
    }else if(keyCode == 87) {
      moveUpRight(1);
    }else if(keyCode == 65) {
      moveDownLeft(1);
    }else if(keyCode == 83) {
      moveDownRight(1);
    }*/
  }
}