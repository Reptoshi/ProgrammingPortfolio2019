// Devin Killinger
// 10/22/18

// Simple non Object Oriented Programming (OOP) Car

Car myCar;
Car[] myCars = new Car[20];

void setup() {
  size(300, 300);
  myCar = new Car(color(random(255), random(255), random(255)), random(width), random(height), random(2, 10));

  for (int i=0; i<myCars.length; i++) {
    myCars[i] = new Car(color(random(255), random(255), random(255)), random(width), random(height), random(2, 10));
  }
}

void draw() {
  background(153);
  myCar.display();
  myCar.drive();
  for (int i=0; i<myCars.length; i++) {
    myCars[i].display();
    myCars[i].drive();
  }
}
