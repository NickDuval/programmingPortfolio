lines[] myLines = new lines[10]; 
void setup() {
  background(255);
  size(displayWidth, displayHeight);
  for(int i=0; i<myLines.length; i++) {
    myLines[i] = new lines(random(width),random(height),random(8),random(100));
    frameRate(10);
  }
}

void draw() {
  for(int i=0; i<myLines.length; i++) {
    lines ilines = myLines[i];
    ilines.display();
  }
  if(frameCount>500) {
    background(255);
    frameCount=0;
  }
}