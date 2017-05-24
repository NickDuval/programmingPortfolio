class game {
  public:
    bool king;

    bool normalMov;

    bool kingMov;

    bool turns;

    bool win;

    bool captured;

    int led[3] = {11, 12, 13};

    int buttons[33] = {4, 5, 6, 7};

    int buttonState1 = 0;
    int buttonState2 = 0;
    int buttonState3 = 0;
    int buttonState4 = 0;
   
    
    String jump;
    // move daignal forword
    String Kingjump;
    // move daignal forword or backwords
    String normal;
};

class player1: public game {
  public:
    String playerVal = normal;

    int playerCount1 = 12;

    int led[] = {};

    

    if (playerVal = normal &&  player1 && turns = true) {
      //can only move in certain ways
      normalMov = true

    }  else {
      normalMov = false
    }

    //|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

    if (playerVal = king && player1 && turns = true) {
      kingMov = true;
    }

    else if ( playerVal = king && player1 && turns = false) {
      kingMov = false;
    }

};


class player2: public game {
  public:

    String playerVal = normal;

    int led[0] = {};

    int playerCount2 = 12;

    if (playerVal = normal &&  player2 && turns = true) {
      //can only move in certain ways
      normalMov = true;

    }  else {
      normalMov = false;
    }

    //|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

    if (playerVal = king && player2 && turns = true) {
      kingMov = true;
    } else {
      kingMov = false;
    }

};



