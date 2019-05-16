// Starter 09/17/18
// Using Random in Code (Make A Face)
// Devin Killinger

void setup () {
  size (500, 500);
  frameRate(1);
}

void draw () {
  background(255);
  strokeWeight(random(2, 7));
  drawHead();
  drawMouth();
  drawEyes();
  drawNose();
}

void mouseClicked () {
  saveFrame("line-######.png");
}

void drawHead () {
  fill(255, random(200, 220), random(22, 190));
  ellipse(width/2, width/2, random(width*0.6, width*0.75), random(height*0.8, height*0.9));
}

void drawMouth () {
  noFill();
  arc(random(235, 275), random(300, 330), random(50, 70), random(50, 70), 0, random(HALF_PI, PI+QUARTER_PI));
}

void drawEyes () {
  fill(255);
  ellipse(190, 190, 75, 75);
  ellipse(300, 190, 75, 75);
  if (random(20)>19) {
    fill(255, 0, 0);
  } else {
    fill(random(150));
  }
  ellipse(random(165, 215), random(170, 210), 25, 25);
  ellipse(random(270, 325), random(175, 195), 25, 25);
}

void drawNose () {
  line(random(240, 270), random(240, 250), 280, 275);
  line(random(230, 260), random(270, 280), 280, 275);
}
