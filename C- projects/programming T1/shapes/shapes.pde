void setup() {
  size(650, 550);
  background(145);
}
void draw() {
  fill(255, 255, 0);
  rect(20, 20, 120, 120);
  rect(180, 20, 120, 120, 15);
  rect(350, 20, 120, 120, 20, 10, 35, 50);
  rect(500, 40, 120, 80);
  fill(255, 0, 0);
  ellipse(80, 260, 120, 120);
  ellipse(240, 260, 120, 80);
  ellipse(400, 260, 80, 120);
  fill(0, 0, 255);
  triangle(500, 300, 560, 180, 620, 300);
  triangle(20, 420, 40, 340, 140, 450);
  fill(0, 245, 250);
}