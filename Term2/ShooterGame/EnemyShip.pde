class EnemyShip {
  // Member Variables
  int x, y, hitboxX, hitboxY, speed;
  float hp;
  boolean alive;
  PImage esImage;
  String image;

  // Constructor
  EnemyShip(int x, int y, int hitboxX, int hitboxY, String image) {
    this.x = x;
    this.y = y;
    this.hitboxX = hitboxX;
    this.hitboxY = hitboxY;
    this.image = image;
    hp = 10.0;
    alive = true;
    esImage = loadImage(image);
    speed = int(random(3, 4));
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height + hitboxY*4) {
      return true;
    } else {
      return false;
    }
  }


  // Display Method
  void display() {
    if (alive) {
      image(esImage, x, y);
    } else {
      if (hp<10) {
        // For displaying a kinda damaged enemy ship
        image(esImage, x, y);
      } else {
        // For displaying a really damaged enemy ship
        image(esImage, x, y);
      }
    }
  }
  // Behavior Methods
  void shoot() {
  }
}
