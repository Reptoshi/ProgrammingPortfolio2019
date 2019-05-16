void setup() {
  size(300,300);
}

void draw () {
  fill(random(255),random(255),random(255));
  ellipse(mouseX,mouseY,random(20),random(20));
}
