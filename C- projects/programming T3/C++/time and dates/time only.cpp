//Nick Duval 1/31/17
#include <iostream>
#include <ctime>
#include <stdlib.h>

using namespace std;

int main() {
    time_t now = time(0);
    
    tm * ltm = localtime(&now);
    cout << "time:" << ltm -> tm_mday << ":";
    cout << ltm -> tm_mon << ":";
    cout << ltm -> tm_year << endl;
}