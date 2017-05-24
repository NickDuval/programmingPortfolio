boolean isNegative(int val) {
  boolean b;
  if(val<0) {
    b=true;
  }else {
    b=false;
  }
  return(b);
}

void draw() {
  println(isNegative(-9));
}