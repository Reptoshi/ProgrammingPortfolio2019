void setup () {
  size(200,200);
  background (255);
}

void draw() {
  drawZoog (mouseX,mouseY);
}

void drawZoog(int x, int y) {
  background (255);
  // Set CENTER mode
  ellipseMode (CENTER);
  rectMode (CENTER) ;
  
  //body
  stroke(0);
  fill(150);
  rect(x,y,20,100);
  
  //head
  stroke(0);
  fill(255);
  ellipse(x,y,60,60);
  
  //eyes
  fill(0);
  ellipse(x,y,16,32);
  ellipse(x,y,16,32);
  
  //legs
  stroke(0);
  line(x,y,80,160);
  line(x,y,120,160);
  
  //arms
  stroke(0);
  line(x,y,80,100);
  line(x,y,120,100);
}
