void setup() {
    size(1000, 1000);
    frameRate(10);
}

void draw() {
  for (int x=0; x<width; x+=10) {
    for (int y=0; y<height; y+=10) {
      noStroke();
      fill(random(0, 255));
      rect(x, y, 10, 10);
    }
  }
}