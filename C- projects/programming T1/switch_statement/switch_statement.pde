int rand = int(random(0,10));

println(rand);

switch(rand) {
  case 9:
    println("Letter is A");
    break;
  case 8:
    println("Letter is B");
    break;
  case 7:
    println("Letter is C");
    break;
  case 6:
    println("Letter is D");
    break;
  case 5:
  case 4:
  case 3:
  case 2: 
  case 1:
  case 0:
    println("letter is F");
}