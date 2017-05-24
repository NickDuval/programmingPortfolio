//Nick Duval 1/31/17
#include <iostream>
#include <ctime>
#include <stdlib.h>

using namespace std;

int main() {
    time_t now = time(0);
    char* tm =ctime(&now);
    cout << "date is: " << tm << endl;   
}