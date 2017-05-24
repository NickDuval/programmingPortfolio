class Car {
  //member variables
  color c;
  float x, y, speed;


  //costructor
  Car() {
    c=color(random(255),random(255), random(255));
    x=width/2;
    y=random(height);
    speed=random(5);
  }
  //member methods
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x, y, 20, 10);
    fill(150);
    rect(x-5,y-5,6,3);
    rect(x+4,y-5,6,3);
    rect(x+4,y+5,6,3);
    rect(x-5,y+5,6,3);
  }

  void drive() {
    x=x+speed;
    if (x>width) {
      x=0;
    }
  }
}
