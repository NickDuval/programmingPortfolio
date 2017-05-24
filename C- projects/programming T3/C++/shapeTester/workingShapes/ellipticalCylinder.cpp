//Nick Duval

#include <iostream>
#include <cmath>
#include <math.h>

using namespace std;

class Ellipse {
   public:
      double a;
      double b;
      double h;
      double Q = (a - b)/(a + b);
};

int main( ) {
    
   Ellipse e1;
   e1.a;
   e1.b;
   e1.h;
   e1.Q;
   
   double volume = 0.0;
   double surfaceArea = 0.0;
   
   cout << "what is the length of the major axis of the elliptical cylinder?" << endl;
   cin >> e1.a;
   
   cout << "what is the length of the minor axis of the elliptical cylinder?" << endl;
   cin >> e1.b;
   
   cout << "what is the height of the ellipstical cylinder?" << endl;
   cin >> e1.h;
   
   volume = M_PI * e1.a * e1.b * e1.h / 4;
   cout << "Volume of sphere: " << volume << endl;
   
   
   surfaceArea = (M_PI * e1.h/2) * (e1.a + e1.b) * (1 + ((e1.Q*e1.Q)/4) + ((e1.Q*e1.Q*e1.Q*e1.Q)/64) + ((e1.Q*e1.Q*e1.Q*e1.Q*e1.Q*e1.Q)/256));
   cout << "surface area of sphere: " << surfaceArea << endl;
	
   return 0;
}