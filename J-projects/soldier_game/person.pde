class People {
  int x, y;
  
  People(int x,int y){
    this.x=x;
    this.y=y;
  }
  void display() {
    //body
    rect(x, y, 4, 5);
    //arm left
    rect(x-5, y, 2, 6);
    //arm right
    rect(x+5, y, 2, 6);
    //left leg
    rect(x-3, y+10, 3, 8);
    //head
    ellipse(x+2,y+2,2,2);
  }
}