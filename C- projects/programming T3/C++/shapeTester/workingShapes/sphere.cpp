//Nick Duval

#include <iostream>
#include <cmath>
#include <math.h>

using namespace std;

class sphere {
   public:
      double r;
};

int main( ) {
    
   sphere s1;
   s1.r;
   double volume = 0.0;
   double surfaceArea = 0.0;
   
   cout << "what is the radius of the sphere?" << endl;
   cin >> s1.r;
   
   volume = (4/3) * M_PI * s1.r * s1.r * s1.r;
   cout << "Volume of sphere: " << volume << endl;
   
   surfaceArea = 4 * M_PI * s1.r * s1.r;
   cout << "surface area of sphere: " << surfaceArea << endl;
	
   return 0;
}