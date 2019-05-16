// Devin Killinger
// 10/29/18

Buttons[] numBtns = new Buttons[10];
Buttons[] opBtns = new Buttons[12];
String dVal, lVal, rVal;
float result;
char opVal;
boolean fNum, dec;

void setup () {
  background(255);
  size(450, 550);

  numBtns[0] = new Buttons (185, 477, 150, 70, color(#FFE6CC), color(#D79B00)).asNumber(0);
  numBtns[1] = new Buttons (145, 397, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(1);
  numBtns[2] = new Buttons (225, 397, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(2);
  numBtns[3] = new Buttons (305, 397, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(3);
  numBtns[4] = new Buttons (145, 317, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(4);
  numBtns[5] = new Buttons (225, 317, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(5);
  numBtns[6] = new Buttons (305, 317, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(6);
  numBtns[7] = new Buttons (145, 237, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(7);
  numBtns[8] = new Buttons (225, 237, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(8);
  numBtns[9] = new Buttons (305, 237, 70, 70, color(#FFE6CC), color(#D79B00)).asNumber(9);

  opBtns[0] = new Buttons (105, 157, 150, 70, color(#FFE6CC), color(#D79B00)).asOperator("CLEAR");
  opBtns[1] = new Buttons (225, 157, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("±");
  opBtns[2] = new Buttons (305, 157, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("÷");
  opBtns[3] = new Buttons (385, 157, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("x");
  opBtns[4] = new Buttons (385, 237, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("-");
  opBtns[5] = new Buttons (385, 317, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("+");
  opBtns[6] = new Buttons (385, 437, 70, 150, color(#FFE6CC), color(#D79B00)).asOperator("=");
  opBtns[7] = new Buttons (305, 477, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator(".");
  opBtns[8] = new Buttons (65, 237, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("²");
  opBtns[9] = new Buttons (65, 317, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("√");
  opBtns[10] = new Buttons (65, 397, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("|");
  opBtns[11] = new Buttons (65, 477, 70, 70, color(#FFE6CC), color(#D79B00)).asOperator("≈");

  dVal = "0.0";
  lVal = "";
  rVal = "";
  opVal = ' ';
  result = 0.0;
  fNum = true;
  dec = false;
}

void draw () {
  background (255);

  // Aesthetic purple rectangle start
  fill(#E1D5E7);
  stroke(#9673A6);
  rect(225, 270, 410, 510);
  // Aesthetic purple rectangle stop

  for (int i=0; i<numBtns.length; i++) {
    numBtns[i].display();
    numBtns[i].rollover();
  }
  for (int i=0; i<opBtns.length; i++) {
    opBtns[i].display();
    opBtns[i].rollover();
  }
  updateDisplay();
}

void updateDisplay() {
  fill(#D5E8D4);
  strokeWeight(2);
  stroke(#82B366);
  rect(225, 70, 390, 80);
  fill(#9673A6);
  textAlign(RIGHT);
  textSize(50);
  text(dVal, 410, 90);
}

void mouseReleased() {
  for (int i=0; i<numBtns.length; i++) {
    if (numBtns[i].hover) {
      if (fNum) {
        lVal += str(numBtns[i].v);
        dVal = lVal;
      } else {
        rVal += str(numBtns[i].v);
        dVal = rVal;
      }
    }
  }
  for (int i=0; i<opBtns.length; i++) {
    if (opBtns[i].hover) {
      if (opBtns[i].op == "+") {
        opVal = '+';
        fNum = false;
      } else if (opBtns[i].op == "-") {
        opVal = '-';
        fNum = false;
      } else if (opBtns[i].op == "÷") {
        opVal = '÷';
        fNum = false;
      } else if (opBtns[i].op == "x") {
        opVal = 'x';
        fNum = false;
      } else if (opBtns[i].op == "±") {
        if (fNum) {
          lVal = str(float(lVal) * -1);
          dVal = lVal;
        } else {
          rVal = str(float(rVal) * -1);
          dVal = rVal;
        }
      } else if (opBtns[i].op == "²") {
        if (fNum) {
          lVal = str(sq(float(lVal)));
          dVal = lVal;
        } else {
          rVal = str(sq(float(rVal)));
          dVal = rVal;
        }
      } else if (opBtns[i].op == "√") {
        if (fNum) {
          lVal = str(sqrt(float(lVal)));
          dVal = lVal;
        } else {
          rVal = str(sqrt(float(rVal)));
          dVal = rVal;
        }
      } else if (opBtns[i].op == "|") {
        if (fNum) {
          lVal = str(abs(float(lVal)));
          dVal = lVal;
        } else {
          rVal = str(abs(float(rVal)));
          dVal = rVal;
        }
      } else if (opBtns[i].op == "≈") {
        if (fNum) {
          lVal = str(round(float(lVal)));
          dVal = lVal;
        } else {
          rVal = str(round(float(rVal)));
          dVal = rVal;
        }
      } else if (opBtns[i].op == ".") {
        if (!dec) {
          if (fNum) {
            lVal += opBtns[i].op;
            dVal = lVal;
            dec = true;
          } else {
            rVal += opBtns[i].op;
            dVal = rVal;
            dec = true;
          }
        }
      } else if (opBtns[i].op == "=") {
        doCalc();
      }
    }
  }
  for (int i=0; i<opBtns.length; i++) {
    if (opBtns[i].hover) {
      if (opBtns[i].op == "CLEAR") {
        clearButton ();
      }
    }
  }
}

void doCalc() {
  if (opVal == '+') {
    result = float(lVal) + float(rVal);
    dVal = str(result);
  } else if (opVal == '-') {
    result = float(lVal) - float(rVal);
    dVal = str(result);
  } else if (opVal == '÷') {
    result = float(lVal) / float(rVal);
    dVal = str(result);
  } else if (opVal == 'x') {
    result = float(lVal) * float(rVal);
    dVal = str(result);
  }
  // let = work multiple times
  lVal = dVal;
  fNum = true;
  dec = false;
}

void clearButton() {
  dVal = "0.0";
  lVal = "";
  rVal = "";
  opVal = ' ';
  result = 0.0;
  fNum = true;
}

void handleKeyPress(boolean num, String val) {
  if (num) {
    if (fNum) {
      lVal += val;
      dVal = lVal;
    } else {
      rVal += val;
      dVal = rVal;
    }
  } else {
    if (val == "+") {
      opVal = '+';
      fNum = false;
      dec = false;
    } else if (val == "-") {
      opVal = '-';
      fNum = false;
      dec = false;
    } else if (val == "÷") {
      opVal = '/';
      fNum = false;
      dec = false;
    } else if (val == "x") {
      opVal = 'x';
      fNum = false;
      dec = false;
    } else if (val == "=") {
      doCalc();
    }
  }
}

void keyPressed() {
  if (key == '1') {
    handleKeyPress(true, "1");
  } else if (key == '2') {
    handleKeyPress(true, "2");
  } else if (key == '3') {
    handleKeyPress(true, "3");
  } else if (key == '4') {
    handleKeyPress(true, "4");
  } else if (key == '5') {
    handleKeyPress(true, "5");
  } else if (key == '6') {
    handleKeyPress(true, "6");
  } else if (key == '7') {
    handleKeyPress(true, "7");
  } else if (key == '8') {
    handleKeyPress(true, "8");
  } else if (key == '9') {
    handleKeyPress(true, "9");
  } else if (key == '0') {
    handleKeyPress(true, "0");
  } else if (key == '*') {
    handleKeyPress(false, "x");
  } else if (key == '+') {
    handleKeyPress(false, "+");
  } else if (key == '-') {
    handleKeyPress(false, "-");
  } else if (key == '/') {
    handleKeyPress(false, "÷");
  } else if (key == '=') {
    handleKeyPress(false, "=");
  }
}
