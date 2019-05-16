// Devin Killinger
// 10/02/18

int x, y;

void setup () {
  size (400, 400);
  frameRate(10);
  // Set start coords
  x=5;
  y=5;
}


void draw () {
  fill(255);
  //drawName();
  //noLoop();
}

// Method to draw horizontal line right
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

// Method to draw horizontal line left
void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}

// Method to draw vertical line down
void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

// Method to draw vertical line up
void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

// Method to draw diagonal line down and right
void moveDownRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y+i);
  }
  y=y+(10*rep);
  x=x+(10*rep);
}

// Method to draw diagonal line down and left
void moveDownLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y+i);
  }
  y=y+(10*rep);
  x=x-(10*rep);
}

// Method to draw diagonal line up and left
void moveUpLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y-i);
  }
  y=y-(10*rep);
  x=x-(10*rep);
}

// Method to draw diagonal line up and right
void moveUpRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y-i);
  }
  y=y-(10*rep);
  x=x+(10*rep);
}

// Algorithm for your first name
void drawName() {
  moveRight(10);
  moveDown(15);
  moveLeft(10);
  moveUp(15);
  moveDown(15);
  moveRight(13);
  moveUp(5);
  moveRight(5);
  moveDown(2);
  moveLeft(5);
  moveDown(3);
  moveRight(10);
  moveUpLeft(4);
  moveDownRight(4);
  moveUpRight(4);
  moveDownLeft(4);
  moveRight(5);
  moveUp(5);
  moveDown(5);
  moveRight(3);
  moveUp(6);
  moveDown(1);
  moveRight(3);
  moveDown(5);
}

void mouseClicked() {
  saveFrame("line-######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(1);
    } else if (keyCode == DOWN) {
      moveDown(1);
    } else if (keyCode == LEFT) {
      moveLeft(1);
    } else if (keyCode == UP) {
      moveUp(1);
    }
  }
}
