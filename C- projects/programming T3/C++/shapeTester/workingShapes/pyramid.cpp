//Nick Duval

#include <iostream>
#include <cmath>
#include <math.h>

using namespace std;

class pyramid {
   public:
      double l;
      double b;
      double h; 
      

};

int main( ) {
    
   pyramid py1;
   py1.h;
   py1.l;
   py1.b;
   double volume = 0.0;
   double surfaceArea = 0.0;
   
   cout << "what is the height of the pyramid?" << endl;
   cin >> py1.h;
   cout << "what is the length of the pyramid?" << endl;
   cin >> py1.l;
   cout << "what is the width of the pyramid?" << endl;
   cin >> py1.b;
   
   volume = ((py1.h * py1.l * py1.b) /3);
   cout << "Volume of Pyramid: " << volume << endl;
   
   surfaceArea = py1.l * py1.b + py1.l * sqrt(((py1.b/2)*(py1.b/2) )+(py1.h * py1.h)+py1.b) * sqrt(((py1.l/2)*(py1.l/2))+py1.h* py1.h);
   cout << "surface area of pyramid: " << surfaceArea << endl;
	
   return 0;
}