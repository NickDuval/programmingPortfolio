int x;
//People p1;
//People[] p = new People[100];

Soldier s1;
Soldier[] s = new Soldier[1];

//Rock r1;
//Rock[] r = new Rock[100];
void setup() {
  size(500,800);
  background(90,150,50);
}

void draw() {
  s1 = new Soldier(250,750);
  s1.display();
  if(keyPressed) {
    if(key == 'a') {
      x-=50;
    }
    if(key == 'd') {
      x+=50;
    }
    if(key == ' ') {
      //shoot
    }
  }
}