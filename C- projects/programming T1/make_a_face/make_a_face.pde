void setup(){
  background(255);
  size(500,500);
  frameRate(1);
}
void draw(){
  background(255);
  fill(250,240,50);
  ellipse(width/2,height/2,random(width*.7,width*.95),random(height*.9,height*.98));
  stroke(0);
  //arc(250,150,random(70,30),random(50,10),random(90,10),random(90,10));
  strokeWeight(5);
  fill(255);
  ellipse(170,100,random(50,80),random(50,80));
  ellipse(330,100,random(50,80),random(50,80));
  fill(0);
  ellipse(330,100,15,15);
  ellipse(170,100,15,15);
  noFill();
  line(random(170,180),random(400,350),random(330,340),random(410,360));
  line(250,240,250,300);
  line(280,280,250,300);
}