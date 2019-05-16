// Global Variables
int xspeed,yspeed;
int xpos,ypos,wdth,ht;
// Runs one time
void setup(){
  size(displayWidth,displayHeight);
  background(0);
  xspeed=2;
  yspeed=5;
  wdth=20;
  ht=20;
  noStroke();
  xpos=width/2;
  ypos=height/2;
  frameRate(60);
}
// Runs on a loop
void draw(){
  background(0);
  fill(255);
  ellipse(xpos,ypos,wdth,ht);
  ellipse(mouseX,mouseY,wdth,ht);
  xpos = xpos + xspeed;
  ypos+=yspeed;
  ellipse(xpos,ypos,wdth,ht);
  if (xpos>=width-wdth/2 || xpos<=wdth/2){
  xspeed*=-1;
  }
  if(ypos >=height-ht/2 || ypos<=ht/2){
    yspeed=yspeed*-1;
  }
}
