// Devin Killinger
// 10/02/18

void setup () {
  size(300, 200);
}

void draw () {
  background(255);
  fill(0);

  for (int i=0; i<width; i+=20) {
    line(i, 30, i, 40);

    textSize(8);
    text(i, i, 20);
  }

  text("C: " + mouseX + " = F: " + tempCtoF(mouseX), 10, 50);
  rect(10, 25, mouseX, 10);
}

float tempCtoF(int C) {
  C-=32;
  C*=5;
  C/=9;
  return C;
}

float tempFtoC(int F) {
  F*=9;
  F/=5;
  F+=32;
  return F;
}
