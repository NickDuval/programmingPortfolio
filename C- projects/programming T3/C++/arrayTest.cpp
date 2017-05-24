#include <iostream>
#include <array>
#include <vector>
#include <ctime>
#include <cstdlib>
using namespace std;

 
int main () {
   srand(time(0));
   int numSide;
   int numDice;
   
   cout << "how many sides on the dice" << endl;
   cin >> numSide;
   cout << "how many dice" << endl;
   cin >> numDice;
   
   int mylist[] = {numSide};
   for(int i = 0; i < numDice; i++){
      mylist[i] = i+1;
      cout << "you rolled:" <<mylist[i] << endl;
   }
   
   array <int,121>diceArray;
   
   int i = 1;
   while(i <= numDice) {
      int n = rand() % numSide;
      cout << diceArray[n] << endl;
      i++;
   }
   
   return 0;
}