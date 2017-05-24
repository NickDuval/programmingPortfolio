//Nick Duval
//March 6

#include <iostream>

using namespace std;

class Hurricane
{
    public:
        void setRain(int r){
            Rain = r;
        }
        void setWind(int w){
            Wind = w;
        }
        void setEye(int e){
            Eye = e;
        }
        void setSpinningVortexOfDeath(int svod){
            SpinningVortexOfDeath = svod;
        }
        void setWarm(int wa){
            Warm = wa
        }
        void setTropic(int t){
            Tropic = t
        }
        void setCloud(int c){
            Cloud = c
        }
        int r;
        int w;
        int e;
        int svod;
        int wa;
        int t;
        int c;
        
};

//subclass
class TropicalDepression public: Hurricane{
    public:
        void setWindSpeed(int ws){
            ws = 1-38;
        }
         void setSize(int s){
            Size = s;
        }
    
};

class TropicalStorm public: Hurricane{
    public:
        void setWindspeed(int ws){
            ws = 39-73;
        }
        void setSize(int s){
            Size = s
        }
};

class Hurricane1 public: Hurricane{
    public:
        void setWindSpeed(int ws){
            ws = 74-95;
        }
         void setSize(int s){
            Size = s;
        }
    
};

class Hurricane2 public: Hurricane{
    public:
        void setWindspeed(int ws){
            ws = 96-110;
        }
        void setSize(int s){
            Size = s
        }
};

class Hurricane3 public: Hurricane{
    public:
        void setWindspeed(int ws){
            ws = 111-129;
        }
        void setSize(int s){
            Size = s
        }
};

class Hurricane4 public: Hurricane{
    public:
        void setWindSpeed(int ws){
            ws = 130-156;
        }
         void setSize(int s){
            Size = s;
        }
    
};

class Hurricane5 public: Hurricane{
    public:
        void setWindspeed(int ws){
            ws = 157+;
        }
        void setSize(int s){
            Size = s
        }
};
cout >> "what is the wind speed" >> endl;
cin << ws;

if(int ws = )