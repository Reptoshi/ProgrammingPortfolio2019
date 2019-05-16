// Devin Killinger
// 10/24/18

float xpos, ypos, strokeW, pointCount;
Lines[] myLines = new Lines [10];

void setup() {
  background(50, 0, 55);
  size (700, 700);
  frameRate(5);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 20));
  }
  xpos = width/2;
  ypos = height/2;
}

void draw() {
  strokeW = random(1, 3);
  pointCount = random(1, 20);
  stroke(0);
  strokeWeight(strokeW);
  for (int i=0; i<myLines.length; i++) {
    Lines iLines = myLines[i];
    iLines.display();
  }
  moveRight(xpos, ypos, pointCount);
  if (random(100)>70) {
    strokeWeight(strokeW);
    moveLeft(xpos, ypos, pointCount);
  } else if (random(100)>65) {
    strokeWeight(strokeW);
    moveUp(xpos, ypos, pointCount);
  } else if (random(100)>55) {
    strokeWeight(strokeW);
    moveDown(xpos, ypos, pointCount);
  } else {
    strokeWeight(strokeW);
    moveRight(xpos, ypos, pointCount);
  }
  if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
    xpos = random(width);
    ypos = random(height);
  } else {
    if (random(10)>1) {
      strokeWeight(strokeW);
      moveLeft(xpos, ypos, pointCount);
    } else if (random(10)>5) {
      strokeWeight(strokeW);
      moveUp(xpos, ypos, pointCount);
    } else if (random(10)>1) {
      strokeWeight(strokeW);
      moveDown(xpos, ypos, pointCount);
    } else {
      strokeWeight(strokeW);
      moveRight(xpos, ypos, pointCount);
    }
  }
}

void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    xpos = startX + i;
  }
}

void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX-i, startY);
    xpos = startX - i;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY-i);
    ypos = startY - i;
  }
}

void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY+i);
    ypos = startY + i;
  }
}
