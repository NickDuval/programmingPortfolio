
int button1 = 4;
int button2 = 5;
int button3 = 6;

int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;

void setup() {
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);

  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  pinMode(button3, INPUT);

}
void loop() {
  //button corralate with led pins
  buttonState1 = digitalRead(button1);
  buttonState2 = digitalRead(button2);
  buttonState3 = digitalRead(button3);

  if (buttonState1 == HIGH ) {
    digitalWrite(led1, HIGH);
    digitalWrite(led2, LOW);
    digitalWrite(led3, LOW);
  }
  if (buttonState2 == HIGH)
  {
    digitalWrite(led1, HIGH);
    digitalWrite(led2, HIGH);
    digitalWrite(led3, LOW);

  }
  if (buttonState3 == HIGH ) {
    digitalWrite(led1, LOW);
    digitalWrite(led2, LOW);
    digitalWrite(led3, HIGH);
  }
  if (buttonState1 == HIGH && buttonState3 == LOW) {
    buttonState1 == LOW;
  }
}



