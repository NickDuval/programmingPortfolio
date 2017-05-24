int x, y;
//People p1;
//People[] p = new People[100];

Shot sh1;
Shot [] sh = new Shot[1];

Soldier s1;
Soldier[] s = new Soldier[1];

//Rock r1;
//Rock[] r = new Rock[100];
void setup() {
  size(500, 800);
  background(90, 150, 50);
}

void draw() {
  background(90, 150, 50);
  s1 = new Soldier(250, 750, 20);
  s1.display();
  if(key==' '){
//    sh1
  }
  
  
  //  if(shoot) {
  //    display(gameOver);
  //  }

}


void display() {
  fill(122);
  text("score", 50, 0);
}

void gameOver() {
  background(0);
  textSize(100);
  fill(255);
  text("Game Over", 50, 50);
}