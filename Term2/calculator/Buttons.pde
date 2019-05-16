// Devin Killinger
// 10/29/18

class Buttons {
  // Variables
  int x, y, w, h, v;
  String op;
  color c, b;
  Boolean hover, num;

  // Constructor
  Buttons(int x, int y, int w, int h, color c, color b) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.b = b;
    hover = false;
  }

  Buttons asNumber(int v) {
    this.v = v;
    num = true;
    return this;
  }

  Buttons asOperator(String op) {
    this.op = op;
    num = false;
    return this;
  }

  // Display Method
  void display() {
    if (num) {
      rectMode(CENTER);
      fill(c);
      strokeWeight(2);
      stroke(b);
      rect(x, y, w, h);
      fill(#9673A6);
      textAlign(CENTER, CENTER);
      textSize(30);
      text(v, x, y);
    } else {
      rectMode(CENTER);
      fill(c);
      strokeWeight(2);
      rect(x, y, w, h);
      fill(#9673A6);
      textAlign(CENTER, CENTER);
      textSize(30);
      text(op, x, y);
    }
  }

  // Rollover Method
  void rollover () {
    hover = mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
  }
}
