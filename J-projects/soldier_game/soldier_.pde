class Soldier{
  String name;
  int x,y,w,h;
  
  
  
  Soldier(int x, int y){
    this.x=x;
    this.y=y;
  }
  void display() {
    //body
    rect(x, y, 10, 17);
    //arm left
    rect(x-4, y, 4, 15);
    //arm right
    rect(x+10, y, 4, 15);
    //left leg
    rect(x-1, y+17, 5, 15);
    //right leg
    rect(x+6, y+17, 5, 15);
    //head
    ellipse(x+5,y-5,10,10);
  }
}