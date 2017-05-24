//Nick Duval

#include <iostream>

using namespace std;

class Box {
   public:
      double l;   // Length of a box
      double b;  // Breadth of a box
      double h;   // Height of a box
};

int main( ) {
    
   Box Box1;        // Declare Box1 of type Box
   Box1.h;
   Box1.l;
   Box1.b;
   double volume = 0.0;     // Store the volume of a box here
   double surfaceArea = 0.0;
 
   cout << "what is the height of the box?" << endl;
   cin >> Box1.h;
   cout << "what is the length of the box?" << endl;
   cin >> Box1.l;
   cout << "what is the width of the box?" << endl;
   cin >> Box1.b;
	
   // volume of box 1
   volume = Box1.h * Box1.l * Box1.b;
   cout << "Volume of Box: " << volume <<endl;
   
   surfaceArea = (Box1.h * Box1.l + Box1.l * Box1.b + Box1.b * Box1.h) * 2;
   cout << "surface area of box: " << surfaceArea << endl;
	
   return 0;
}