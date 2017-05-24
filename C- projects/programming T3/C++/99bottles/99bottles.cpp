#include <iostream>
using namespace std;
 
int main () {
   // a = # of bottles
   int a = 99;
   
   while( a >= 2 ) {
      cout << a << " bottles of beer on the wall " << a << " bottles of beer take one down pass it around " << a-1 << " bottles of beer on the wall" << endl;
      a--;
   }
   if(a = 1){
       cout << a << " bottle of beer on the wall " << a << " bottle of beer take it down pass it around no bottles of beer on the wall" << endl;
       a--;
   }
 
   return 0;
}
