//Gabriel Gonzales | 25 Sept 2025 | Calculator
Button[] buttons = new Button[13];
Button[] numButtons = new Button[10];
int i = 0;
Float l, r, result;
boolean left;
String dVal;
char op;

void setup() {
  size(250, 250);
  background(#0F0F0F);
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = ' ';
  buttons[0] = new Button(25, 70, 40, 30, 'C', #C96B1E, #DBD4D4);
  buttons[1] = new Button(75, 70, 40, 30, '±', #11BF9A, #DBD4D4);
  buttons[2] = new Button(125, 70, 40, 30, '×', #11BF9A, #DBD4D4);
  buttons[3] = new Button(175, 70, 40, 30, '÷', #11BF9A, #DBD4D4);
  buttons[4] = new Button(225, 70, 40, 30, '^', #2C8CD8, #DBD4D4);
  numButtons[7] = new Button(25, 110, 40, 30, '7', #E5C831, #DBD4D4);
  numButtons[8] = new Button(75, 110, 40, 30, '8', #E5C831, #DBD4D4);
  numButtons[9] = new Button(125, 110, 40, 30, '9', #E5C831, #DBD4D4);
  buttons[5] = new Button(175, 110, 40, 30, '-', #11BF9A, #DBD4D4);
  buttons[6] = new Button(225, 110, 40, 30, '√', #2C8CD8, #DBD4D4);
  numButtons[4] = new Button(25, 150, 40, 30, '4', #E5C831, #DBD4D4);
  numButtons[5] = new Button(75, 150, 40, 30, '5', #E5C831, #DBD4D4);
  numButtons[6] = new Button(125, 150, 40, 30, '6', #E5C831, #DBD4D4);
  buttons[7] = new Button(175, 150, 40, 30, '+', #11BF9A, #DBD4D4);
  buttons[8] = new Button(225, 150, 40, 30, '|', #2C8CD8, #DBD4D4);
  numButtons[1] = new Button(25, 190, 40, 30, '1', #E5C831, #DBD4D4);
  numButtons[2] = new Button(75, 190, 40, 30, '2', #E5C831, #DBD4D4);
  numButtons[3] = new Button(125, 190, 40, 30, '3', #E5C831, #DBD4D4);
  buttons[9] = new Button(175, 210, 40, 70, '=', #11BF9A, #DBD4D4);
  buttons[10] = new Button(225, 190, 40, 30, 'π', #2C8CD8, #DBD4D4);
  numButtons[0] = new Button(50, 230, 90, 30, '0', #E5C831, #DBD4D4);
  buttons[11] = new Button(125, 230, 40, 30, '.', #E5C831, #DBD4D4);
  buttons[12] = new Button(225, 230, 40, 30, 'p', #2C8CD8, #DBD4D4);
}

void draw() {
  background(#0F0F0F);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyPressed() {
  println("Key:" + key);
  println("KeyCode:" + keyCode);
  if (keyCode == 107) {
    left = false;
    op = '+';
    dVal = "0.0";
  } else if (keyCode == 109 || keyCode == 45) {
    left = false;
    op = '-';
    dVal = "0.0";
  } else if (keyCode == 106) {
    left = false;
    op = '×';
    dVal = "0.0";
  } else if (keyCode == 111 || keyCode == 47) {
    left = false;
    op = '÷';
    dVal = "0.0";
  } else if (keyCode == 10) {
    performCalculation();
  } else if (keyCode == 8) {
    left = true;
    l = 0.0;
    r = 0.0;
    result = 0.0;
    dVal = "0.0";
    op = ' ';
  } else if (keyCode == 48 || keyCode == 96) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          l = float(dVal);
        } else {
          dVal += "0";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          r = float(dVal);
        } else {
          dVal += "0";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 49 || keyCode == 97) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          l = float(dVal);
        } else {
          dVal += "1";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          r = float(dVal);
        } else {
          dVal += "1";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 50 || keyCode == 98) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          l = float(dVal);
        } else {
          dVal += "2";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          r = float(dVal);
        } else {
          dVal += "2";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 99 || keyCode == 51) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          l = float(dVal);
        } else {
          dVal += "3";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          r = float(dVal);
        } else {
          dVal += "3";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 100 || keyCode == 52) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          l = float(dVal);
        } else {
          dVal += "4";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          r = float(dVal);
        } else {
          dVal += "4";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 101 || keyCode == 53) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          l = float(dVal);
        } else {
          dVal += "5";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          r = float(dVal);
        } else {
          dVal += "5";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 102 || keyCode == 54) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          l = float(dVal);
        } else {
          dVal += "6";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          r = float(dVal);
        } else {
          dVal += "6";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 103 || keyCode == 55) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          l = float(dVal);
        } else {
          dVal += "7";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          r = float(dVal);
        } else {
          dVal += "7";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 104 || keyCode == 56) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          l = float(dVal);
        } else {
          dVal += "8";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          r = float(dVal);
        } else {
          dVal += "8";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 105 || keyCode == 57) {
    if (dVal.length()<18) {
      if (left) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          l = float(dVal);
        } else {
          dVal += "9";
          l = float(dVal);
        }
      } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          r = float(dVal);
        } else {
          dVal += "9";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 110) {
    if (dVal.contains(".") == false) {
      dVal += ".";
    }
  }
}

void mousePressed() {
  // Not number buttons
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val == '+') {
      left = false;
      op = '+';
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val == '-') {
      left = false;
      op = '-';
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val == '÷') {
      left = false;
      op = '÷';
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val == '×') {
      left = false;
      op = '×';
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val == '±') {
      if (left) {
        l = l*-1;
        dVal = str(l);
      } else {
        r = r*-1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == '^') {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == '|') {
      if (left) {
        l = abs(l);
        dVal = str(l);
      } else {
        r = abs(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == 'π') {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r = PI;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val == 'p') {
      dVal = "0.0";
      left = false;
      op = 'p';
    } else if (buttons[i].over && buttons[i].val == '=') {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val == '.') {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val == 'C') {
      // all actions to clear calc
      left = true;
      l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0.0";
      op = ' ';
    }
  }


  //All number buttons
  //dVal = "Pressed";
  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<18) {
      if (numButtons[i].over && left) {
        if (dVal.equals("0.0")) {
          dVal = str (numButtons[i].val);
          l = float(dVal);
        } else {
          dVal += str (numButtons[i].val);
          l = float(dVal);
        }
      } else if (numButtons[i].over && !left) {
        if (dVal.equals("0.0")) {
          dVal = str (numButtons[i].val);
          r = float(dVal);
        } else {
          dVal += str (numButtons[i].val);
          r = float(dVal);
        }
      }
    }
  }
  println("L:" + l);
  println("R:" + r);
  println("Result:" + result);
  println("Operator:" + op);
  println("Left:" + left);
}



void updateDisplay() {
  rectMode(CORNER);
  rect(5, 5, 240, 40, 25);
  fill(0);
  textSize(24);
  textAlign(RIGHT);
  if (dVal.length()<18) {
    textSize(25);
  } else if (dVal.length()>19) {
    textSize(25-2);
  }
  text(dVal, width-15, 35, 23);
}

void performCalculation() {
  if (op == '+') {
    result = (l + r);
  } else if (op == '-') {
    result = (l - r);
  } else if (op == '÷') {
    result = (l / r);
  } else if (op == '×') {
    result = (l * r);
  } else if (op == 'p') {
    result = pow(l, r);
  }
  dVal = str(result);
}
