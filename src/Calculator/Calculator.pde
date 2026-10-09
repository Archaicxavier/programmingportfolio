// Xavier Probasco | 09/15/2026 | Calculator
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[13];
float l, r, e;
char op;
boolean left;
String displayVal;

void setup() {
  size(650, 800);
  background(#434343);
  l=0.0;
  r=0.0;
  e=0.0;
  op=' ';
  left= true;
  displayVal="0.0";
  numButtons[0] = new Button(225, 475, 50, 50, '0');
  numButtons[1] = new Button(125, 475, 50, 50, '1');
  numButtons[2] = new Button(425, 375, 50, 50, '2');
  numButtons[3] = new Button(325, 375, 50, 50, '3');
  numButtons[4] = new Button(225, 375, 50, 50, '4');
  numButtons[5] = new Button(125, 375, 50, 50, '5');
  numButtons[6] = new Button(425, 275, 50, 50, '6');
  numButtons[7] = new Button(325, 275, 50, 50, '7');
  numButtons[8] = new Button(225, 275, 50, 50, '8');
  numButtons[9] = new Button(125, 275, 50, 50, '9');
  opButtons[0] = new Button(525, 275, 50, 50, '÷');
  opButtons[1] = new Button(525, 375, 50, 50, 'x');
  opButtons[2] = new Button(525, 475, 50, 50, '+');
  opButtons[3] = new Button(525, 575, 50, 50, '-');
  opButtons[4] = new Button(525, 675, 50, 50, '±');
  opButtons[5] = new Button(425, 475, 50, 50, ' ');
  opButtons[6] = new Button(325, 475, 50, 50, '.');
  opButtons[7] = new Button(325, 575, 50, 50, ' ');
  opButtons[8] = new Button(225, 575, 50, 50, ' ');
  opButtons[9] = new Button(125, 575, 50, 50, ' ');
  opButtons[10] = new Button(375, 675, 150, 50, '=');
  opButtons[11] = new Button(175, 675, 150, 50, 'c');
  opButtons[12] = new Button(425, 575, 50, 50, ' ');
}


void draw() {
  background(#434343);
  drawDisplay();
  for (int i = 0; i<numButtons.length; i ++) {
    numButtons[i].display();
    numButtons[i].mouseOver(mouseX, mouseY);
  }
  for (int i = 0; i<opButtons.length; i ++) {
    opButtons[i].display();
    opButtons[i].mouseOver(mouseX, mouseY);
  }
}



void mouseReleased() {


  // update display with button clicked
  for (int i = 0; i < numButtons.length; i++) {
    if (numButtons[i].mouse == true) {
      handleEvent(numButtons[i].val, true);
    }
  }
  //loop through opButtons
  for (int i = 0; i < opButtons.length; i++) {
    if (opButtons[i].mouse == true) {
      handleEvent(numButtons[i].val, false);
    }
  }
  println("L: " + l);
  println("R: " + r);
  println("E: " + e);
  println("Left: " + left);
  println("Op: " + op);
}

void performCalc() {
  if (op == '+') {
    e=l + r;
  } else if (op == '-') {
    e=l - r;
  } else if (op == 'x') {
    e=l * r;
  } else if (op == '÷') {
    e=l / r;
  }
  displayVal = str(e);
  left = !left;
  l=e;
}

void drawDisplay() {
  fill(#A1D5FC);
  rect(width/2, 150, 450, 100);
  fill(0);
  textAlign(RIGHT);
  textSize(50);
  text(displayVal, width-140, 165);
}

void keyPressed() {
  println("key: " + key);
 if(key == 1) {
   handleEvent(key, true);
 }
}

void handleEvent(char val, boolean isNum) {
  String digit = str(val);
  if (isNum == true) {
    if (displayVal.equals("0.0" )) {
      if (left == true) {
        displayVal = str(numButtons[i].val);
        l=float(displayVal);
      } else {
        displayVal= str(numButtons[i].val);
        r=float(displayVal);
      }
    } else if (displayVal.equals("+" )) {
      if (left == true) {
        displayVal = str(numButtons[i].val);
        l=float(displayVal);
      } else {
        displayVal= str(numButtons[i].val);
        r=float(displayVal);
      }
    } else if (displayVal.equals("-" )) {
      if (left == true) {
        displayVal = str(numButtons[i].val);
        l=float(displayVal);
      } else {
        displayVal= str(numButtons[i].val);
        r=float(displayVal);
      }
    } else if (displayVal.equals("x" )) {
      if (left == true) {
        displayVal = str(numButtons[i].val);
        l=float(displayVal);
      } else {
        displayVal= str(numButtons[i].val);
        r=float(displayVal);
      }
    } else if (displayVal.equals("÷" )) {
      if (left == true) {
        displayVal = str(numButtons[i].val);
        l=float(displayVal);
      } else {
        displayVal= str(numButtons[i].val);
        r=float(displayVal);
      }
    } else {
      if (left == true) {
        displayVal += str(numButtons[i].val);
        l=float(displayVal);
      } else {
        displayVal +=str(numButtons[i].val);
        r=float(displayVal);
      }
    }
  } else {
    if (opButtons[i].val == '=') {
      performCalc();
    } else if (opButtons[i].val == '+') {
      displayVal = str(opButtons[i].val);
      left = !left;
      op = opButtons[i].val;
    } else if (opButtons[i].val == '-') {
      displayVal = str(opButtons[i].val);
      left = !left;
      op = opButtons[i].val;
    } else if (opButtons[i].val == 'x') {
      displayVal = str(opButtons[i].val);
      left = !left;
      op = opButtons[i].val;
    } else if (opButtons[i].val == '÷') {
      displayVal = str(opButtons[i].val);
      left = !left;
      op = opButtons[i].val;
    } else if (opButtons[i].val == 'c') {
      displayVal = "0.0";
      left = true;
    }
  }
}
