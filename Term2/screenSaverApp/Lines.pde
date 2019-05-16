// Devin Killinger
// 10/24/18

class Lines {
  // variables
  float xpos, ypos, strokeW, lineLength;

  // constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }

  // display
  void display() {
    strokeW = random(1, 2);
    lineLength = random(1, 50);
    stroke(255, 255, 150);
    if (xpos > width || xpos < 0 || ypos > height | ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>90) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      }
    }
  }
}
