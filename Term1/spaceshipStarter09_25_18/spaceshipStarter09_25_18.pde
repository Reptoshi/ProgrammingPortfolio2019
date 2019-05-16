// Devin Killinger
// 09/25/18

void setup () {
  size (100, 100);
}

// Draw Spaceship

void draw () {
  noCursor ();
  background (0);
  drawShip (mouseX, mouseY);
}

void drawShip (int x, int y) {
 
  // Draw Wings
  
  fill (0, 0, 255);
  triangle (x, y-20, x+35, y+5, x, y+5);
  triangle (x, y-20, x-35, y+5, x, y+5);
  
  // Draw Thrusters
  
  fill (255,125,0);
  rect (x-25, y+3, 5, 10);
  rect (x+18, y+3, 5, 10);
  
  // Draw Hull
  
  fill (255, 125, 0);
  ellipse (x, y, 20, 80);
  
  // Draw Cockpit
  
  fill (0, 0, 255);
  ellipse (x, y-10, 10, 15);
  
}
