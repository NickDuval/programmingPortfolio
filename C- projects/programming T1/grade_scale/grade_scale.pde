float grade=random(0,200);
if(grade>=94){
  println("assign letter grade A");
}else if(grade>=89 && grade<93){
  println("assign letter grade -A");
}else if(grade>=87 && grade<88){
  println("assign letter grade +B");
}else if(grade>=83 && grade<87){
  println("assign letter grade B");
}else if(grade>=80 && grade<83){
  println("assign letter grade -B");
}else if(grade>=77 && grade<80){
  println("assign letter grade +C");
}else if(grade>=73 && grade<77){
  println("assign letter grade C");
}else if(grade>=70 && grade<73){
  println("assign letter grade -C");
}else if(grade>=67 && grade<70){
  println("assign letter grade +D");
}else if(grade>=63 && grade<67){
  println("assign letter grade D");
}else if(grade>=60 && grade<63){
  println("assign letter grade -D");
}else {
  println("assign letter grade F");
}