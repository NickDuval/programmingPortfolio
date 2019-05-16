//Pin connected to ST_CP of 74HC595
int rgb1latch = 2;
//Pin connected to SH_CP of 74HC595
int rgb1clock = 3;
////Pin connected to DS of 74HC595
int rgb1data = 1;

int button1 = 4;
int button2 = 5;
int button3 = 6;

int buttonstate1 = 0;
int buttonstate2 = 0;
int buttonstate3 = 0;

byte sr1 = 0;

void setup() {
  //set pins to output so you can control the shift register
  pinMode(rgb1latch, OUTPUT);
  pinMode(rgb1clock, OUTPUT);
  pinMode(rgb1data, OUTPUT);

  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  pinMode(button3, INPUT);
}

void loop() {
  int rgb1 = 0;
  // take the latchPin low so
  // the LEDs don't change while you're sending in bits:
  digitalWrite(rgb1latch, LOW);
  if (button1 == HIGH) {
    //output 001
    bitSet(rgb1,0);
    shiftOut(rgb1data, rgb1clock, LSBFIRST, rgb1);
  }
  
  if(button2 == HIGH){
    //output 010
    bitSet(rgb1,1);
    shiftOut(rgb1data, rgb1clock, LSBFIRST, rgb1);
  }

  if(button3 == HIGH){
    //output 100
    bitSet(rgb1,2);
    shiftOut(rgb1data, rgb1clock, LSBFIRST, rgb1);
  }
  //take the latch pin high so the LEDs will light up:
  digitalWrite(rgb1latch, HIGH);
  // pause before next value:
  delay(500);
}
