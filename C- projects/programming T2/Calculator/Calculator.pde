Button[] numButton = new Button[10];
Button[] opButton = new Button[13];
Button[] spButton = new Button[1];

String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opVal = ' ';
String spVal;
boolean firstNum;
boolean gotResult = false;

void setup() {
  size(320, 620);
  background(230);

  numButton[0]= new Button(120, 570).asNum(0, 60, 60);
  numButton[1]= new Button(40, 490).asNum(1, 60, 60);
  numButton[2]= new Button(120, 490).asNum(2, 60, 60);
  numButton[3]= new Button(200, 490).asNum(3, 60, 60);
  numButton[4]= new Button(40, 410).asNum(4, 60, 60);
  numButton[5]= new Button(120, 410).asNum(5, 60, 60);
  numButton[6]= new Button(200, 410).asNum(6, 60, 60);
  numButton[7]= new Button(40, 330).asNum(7, 60, 60);
  numButton[8]= new Button(120, 330).asNum(8, 60, 60);
  numButton[9]= new Button(200, 330).asNum(9, 60, 60);

  opButton[0]= new Button(280, 570).asOperator("=", 60, 60);
  opButton[1]= new Button(280, 490).asOperator("+", 60, 60);
  opButton[2]= new Button(280, 410).asOperator("-", 60, 60);
  opButton[3]= new Button(280, 330).asOperator("*", 60, 60);
  opButton[4]= new Button(280, 250).asOperator("/", 60, 60);
  opButton[5]= new Button(40, 170).asOperator("c", 60, 60);
  opButton[6]= new Button(40, 570).asOperator("+/-", 60, 60);
  opButton[7]= new Button(120, 250).asOperator("x²", 60, 60);
  opButton[8]= new Button(200, 250).asOperator("√", 60, 60);
  opButton[9]= new Button(40, 250).asOperator("%", 60, 60);
  opButton[10]= new Button(120, 170).asOperator("cos()", 60, 60);
  opButton[11]= new Button(200, 170).asOperator("sin()", 60, 60);
  opButton[12]= new Button(280, 170).asOperator("tan()", 60, 60);

  spButton[0]= new Button(200, 570).asSpecial(".", 60, 60);

  firstNum = true;
}

void draw() {
  background(230);
  for (int i=0; i<numButton.length; i++) {
    numButton[i].display();
    numButton[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButton.length; i++) {
    opButton[i].display();
    opButton[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<spButton.length; i++) {
    spButton[i].display();
    opButton[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButton.length; i++) {
    numButton[i].display();
    numButton[i].hover(mouseX+30, mouseY+30);
    if (numButton[i].over) {
      if (firstNum) {
        println(i + "" + numButton[i].numVal);
        valueToCompute += int(numButton[i].numVal);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(numButton[i].numVal);
        displayValue = valueToCompute2;
      }
    }
  }
  for (int i=0; i<opButton.length; i++) {
    opButton[i].display();
    opButton[i].hover(mouseX+30, mouseY+30);
    if (opButton[i].over) {
      if (opButton[i].opVal == "+") {
        if (result !=0) {
          opVal = '+';
          valueToCompute2="";
          firstNum = false;
          displayValue = "+";
        } else {
          opVal = '+';
          firstNum = false;
          displayValue ="+";
        }
      } else if (opButton[i].opVal == "=") {
        firstNum = true;
        preformCalculation();
      } else if (opButton[i].opVal == "-") {
        if (result != 0) {
          opVal = '-';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "-";
        } else {
          opVal = '-';
          firstNum = false;
          displayValue = "-";
        }
      } else if (opButton[i].opVal == "*") {
        if (result != 0) {
          opVal = '*';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "*";
        } else {
          opVal = '*';
          firstNum = false;
          displayValue = "*";
        }
      } else if (opButton[i].opVal == "/") {
        if (result != 0) {
          opVal = '/';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "/";
        } else {
          opVal = '/';
          firstNum = false;
          displayValue = "/";
        }
      } else if (opButton[i].opVal == "c") {

        opVal = 'c';
        valueToCompute = "";
        valueToCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI2 = 0;
        firstNum = true;
        displayValue = "0";
        result = 0;
      } else if (opButton[i].opVal == "+/-") {
        opVal = 'n';
        preformCalculation();
      } else if (opButton[i].opVal == "√") {
        opVal = 'r';
        preformCalculation();
      } else if (opButton[i].opVal == "x²") {
        opVal = 'x';
        preformCalculation();
      } else if (opButton[i].opVal == "%") {
        opVal = 'e';
        preformCalculation();
      } else if (opButton[i].opVal == "cos()") {
        opVal = 'c';
        preformCalculation();
      } else if (opButton[i].opVal == "sin()") {
        opVal = 's';
        preformCalculation();
      } else if (opButton[i].opVal == "tan()") {
        opVal = 't';
        preformCalculation();
      }
    }
  }
  for (int i=0; i<spButton.length; i++) {
    spButton[i].hover(mouseX+30, mouseY+30);
    if (spButton[i].over) {
      if (spButton[i].spVal == ".") {
        if (spButton[i].over && firstNum == true) {
          valueToCompute += spButton[i].spVal;
          displayValue = valueToCompute;
        } else if (spButton[i].over && firstNum == false) {
          valueToCompute2 += spButton[i].spVal;
          displayValue = valueToCompute2;
        }
      }
    }
  }
}


void preformCalculation() {
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);

  if (opVal == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  }
  if (opVal == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  }
  if (opVal == '*') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  }
  if (opVal == '/') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  }
  if (opVal == 'c') {
    result = 0;
    displayValue = str(result);
  }
  if (opVal == 'n') {
    if (firstNum) {
      valueToComputeI = valueToComputeI*-1;
      valueToCompute = str(valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*-1;
      valueToCompute2 = str(valueToComputeI2);
      displayValue = str(valueToComputeI);
    }
  }
  if (opVal == 'r') {
    if (firstNum) {
      valueToComputeI = sqrt(valueToComputeI);
      valueToCompute = str(valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = sqrt(valueToComputeI2);
      valueToCompute2 = str(valueToComputeI2);
      displayValue = str(valueToComputeI);
    }
  }
  if (opVal == 'x') {
    if (firstNum) {
      valueToComputeI = sq(valueToComputeI);
      valueToCompute = str(valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = sq(valueToComputeI2);
      valueToCompute2 = str(valueToComputeI2);
      displayValue = str(valueToComputeI);
    }
  }
  if (opVal == 'e') {
    if (firstNum) {
      valueToComputeI = valueToComputeI*0.01;
      valueToCompute = str(valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*0.01;
      valueToCompute2 = str(valueToComputeI2);
      displayValue = str(valueToComputeI);
    }
  }
  if (opVal == 'c') {
    if (firstNum) {
      valueToComputeI = cos(valueToComputeI);
      valueToCompute = str(valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = cos(valueToComputeI2);
      valueToCompute2 = str(valueToComputeI2);
      displayValue = str(valueToComputeI);
    }
  }
  if (opVal == 's') {
    if (firstNum) {
      valueToComputeI = sin(valueToComputeI);
      valueToCompute = str(valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = sin(valueToComputeI2);
      valueToCompute2 = str(valueToComputeI2);
      displayValue = str(valueToComputeI);
    }
  }
  if (opVal == 't') {
    if (firstNum) {
      valueToComputeI = tan(valueToComputeI);
      valueToCompute = str(valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = tan(valueToComputeI2);
      valueToCompute2 = str(valueToComputeI2);
      displayValue = str(valueToComputeI);
    }
  }
}

void updateDisplay() {
  textSize(12);
  fill(0);
  rect(20, 20, 280, 100, 20);
  fill(255);
  textSize(25);
  text(displayValue, 30, 80);
}