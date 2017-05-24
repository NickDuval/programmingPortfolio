Button b1;

void setup() {
  size(500,500);
  b1 = new Button(30, 20, 50, 50, "hi");
}

void draw() {
  background(200);
  b1.display(); 
  b1.hover(mouseX, mouseY);
}