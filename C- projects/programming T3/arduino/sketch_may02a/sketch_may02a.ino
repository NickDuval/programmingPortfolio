int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;
int buttonState4 = 0;

int ledPins[] = {10, 11, 12, 13};
int pinCount = 4;

int buttonPins [] = {4, 5, 6, 7};
int buttonCount = 4;


void setup() {
  // put your setup code here, to run once:
  for ( int thisPin = 0; thisPin < pinCount; thisPin++) {
    pinMode(ledPins[thisPin], OUTPUT);
  }
  for ( int thisButton = 0; thisButton < pinCount; thisButton++) {
    pinMode(buttonPins[thisButton], INPUT);
  }
}

void loop() {

  for ( int thisPin = 0; thisPin < pinCount; thisPin++) {
    digitalWrite(ledPins[thisPin], HIGH);
    if (buttonState1 == HIGH) {
      digitalWrite(ledPins[thisPin], LOW);
    }
  }

  
}
