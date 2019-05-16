// Devin Killinger
// 10/10/18

void setup() {
  size(560, 480);
}

void draw() {
  background(255);
  fill(255);

  //Draw Scales
  rect(125, 190, 50, 45);
  rect(385, 190, 50, 45);
  quad(90, 230, 210, 230, 250, 450, 50, 450);
  quad(350, 230, 470, 230, 510, 450, 310, 450);
  rect(100, 240, 100, 200);
  rect(360, 240, 100, 200);
  rect(50, 185, 200, 10);
  rect(310, 185, 200, 10);

  // Draw weights
  fill(0);
  rect(90, 130, 120, 55, 90, 90, 0, 0);
  rect(350, 130, 120, 55, 90, 90, 0, 0);
  fill(255);
  textSize(50);
  text("LBS", 110, 175);
  text("KG", 375, 175);

  // Call Conversions
  fill(0);
  textSize(12);
  KgToLbs(mouseY);
  LbsToKg(mouseY);

  // Title
  fill(0);
  textSize(25);
  text("Pounds to Kilograms", 160, 30);

  // Credit
  textSize(12);
  text("By: Devin Killinger", 230, 50);

  fill(255, 10, 10);
  drawMarkingsLbs();
  drawMarkingsKgs();

  // Instructions
  fill(0);
  textSize(12);
  text("Move mouse up and down in scale boxes", 160, 470);
}

// Equations for Conversions

float LbsToKg(float Lbs) {
  Lbs/=2.2;
  text(Lbs, 383, 215);
  return Lbs;
}

float KgToLbs(float Kg) {
  Kg*=2.2;
  text (Kg, 123, 215);
  return Kg;
}

// Draw scale markings (lbs)
void drawMarkingsLbs() {
  for (int l=0; l<200; l+=20) {
    text (l, 103, l+251);
    line(135, l+250, 190, l+250);
  }
}

// Draw scale Markings (kgs)
void drawMarkingsKgs() {
  for (int k=0; k<200; k+=20) {
    text(k/2.2, 411, k+251);
    line(365, k+250, 405, k+250);
  }
}
