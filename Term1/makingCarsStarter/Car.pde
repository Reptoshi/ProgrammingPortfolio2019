// Devin Killinger
// 10/22/18

class Car {
  // Member variables
  color c;
  float xpos;
  float ypos;
  float xspeed;
  boolean right;

  // Constructor
  Car(color c, float xpos, float ypos, float xspeed) {
    this.c = c;
    this.xpos = xpos;
    this.ypos = ypos;
    this.xspeed = xspeed;
    if (random(2)<1) {
      right = true;
    } else {
      right = false;
    }
  }

  // Methods for beahvior
  void display () {
    rectMode(CENTER);
    fill(0);
    rect(xpos-7, ypos, 5, 14);
    rect(xpos+5, ypos, 5, 14);
    fill(c);
    rect(xpos, ypos, 20, 10);
    rect(xpos, ypos, 8, 10);
  }

  void drive() {
    if (right) {
      xpos += xspeed;
      if (xpos > width) {
        xpos = 0;
      }
    } else {
      xpos-=xspeed;
      if (xpos <0) {
        xpos =width;
      }
    }
  }
}
