class Laser {
  // Member Variables
  int x, y, h, w, speed;
  color c;
  boolean active;

  // Constructor
  Laser(int x, int y, int h, int w) {
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    c = color(125, 0, 100);
    speed = 10;
    active = true;
  }

  void fire () {
    y -= speed;
  }

  boolean reachedTop() {
    if (y<0+h) {
      return true;
    } else {
      return false;
    }
  }

  //Display Method
  void display() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y, h, w);
  }
}
