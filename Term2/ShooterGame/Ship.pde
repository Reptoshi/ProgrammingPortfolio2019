class Ship {
  // Member Variables
  int x, y, hitbox, lives;
  float hp;
  boolean alive;
  PImage sImage;
  String image;

  // Constructor
  Ship(int x, int y, int hitbox, String image) {
    this.x = x;
    this.y = y;
    this.hitbox = hitbox;
    this.image = image;
    hp = 100.0;
    alive = true;
    sImage = loadImage(image);
  }

  // Set Ship Location
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }

  // Display Method
  void display() {
    image(sImage, x-displayWidth*0.034, y-displayHeight*0.085);
  }

  // Behavior Methods
  void shoot() {
  }
}
