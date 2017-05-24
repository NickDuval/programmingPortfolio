//Nick Duval 1/31/17
#include <iostream>
#include <ctime>
#include <stdlib.h>

using namespace std;

int main() {
    time_t now = time(0);
    
    tm * ltm = localtime(&now);
    char year[4];
    char month[2];
    char day[2];
    cout << "date:" << "YYYY/MM/DD";
}