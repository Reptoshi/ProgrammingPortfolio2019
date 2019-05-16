// Computer History Timeline
// by Devin Killinger
// September 11, 2018
void setup() {
  size(900, 400);
  background(0, 100, 200);
}

void draw() {
  background(0, 100, 200);
  textSize(45);
  textAlign(CENTER);
  fill(255, 100, 0);
  text("Historic Computer Systems", width/2, 70);
  strokeWeight(3);
  textSize(30);
  text("By Devin Killinger", width/2, 100);
  line(104, 210, 803, 210);

  //add 8 Historic Events
  histEvent("Z3 \n 1941", "German, vacuum tubes. \n World's first working \n programmable, fully \n automatic \n digital \n computer.", 75, 180, true);
  histEvent("Atanasoff-Berry \n 1942", "US, vacuum tubes. \n The first automatic electronic digital computer. \n It was designed to be a calculator, \n but it was a crappy calculator.", 175, 240, false);
  histEvent("Colossus \n 1943", "British, shift registers. \n A set of computers used to break \n the code of the Lorenz cipher.", 275, 180, true);
  histEvent("ENIAC \n 1945", "US, punch cards. \n Amongst the earliest electronic \n general-purpose computers made", 375, 240, false);
  histEvent("Manchester Baby \n 1948", "England, Williams tube. \n Designed to test the first truly \n random-access computer memory", 475, 180, true);
  histEvent("Manchester Mark I \n 1948", "England, index registers. \n A program written to find odd \n prime numbers ran on it without \n any errors for nine hours", 575, 240, false);
  histEvent("EDVAC \n 1949", "US, punch cards. \n Designed to be a less sucky \n calculator than the ABC, \n which it succeeded at. It also had \n an initial \n budget of $10.00 \n (10 US Dollars)", 675, 180, true);
  histEvent("Ferranti Mark I \n 1951", "US, Williams tube. /n The first commercially available \n general-purpose electronic computer.", 775, 240, false);
}
void histEvent(String name, String descr, int x, int y, boolean top) {
  textAlign(CENTER);
  textSize(14);

  // determine top or bottom events
  if (top) {
    line(x, y, x+30, y+30);
    text(name, x, y-25);
  } else {
    line(x, y, x+30, y-30);
    text(name, x, y+20);
  }

  // find location of mouse for displaying description
  if (mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+30) {
    if (top) {
      text(descr, x, y+15);
    } else {
      text(descr, x, y+60);
    }
  }
}
