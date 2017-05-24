//create a car object
Car c1 = new Car();
Car c2 = new Car();
Car[] cars = new Car[1000];

void setup() {
  size(1000, 1000);
  for(int i=0; i<cars.length; i++){
    cars[i] =new Car();
  }
}

void draw() {
  background(0);
  for(int i=0; i<cars.length; i++){
    cars[i].display();
    cars[i].drive();
  }
}
