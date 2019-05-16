// Devin Killinger
// 09/21/18

void setup () {
  size (1000, 1000);
  background (127);
}

void draw () {
  size (1000, 1000);
  background (127);

  //make grid with a while loop

  int i = 0;
  while (i<width) {
    line(0, i, width, i);
    line(i, 0, i, height);
    text(i, i, 15);
    text(i, 2, i);
    i+=100;
  }


  //make grid with a for loop

  //for ( int i=0; i<width; i+=100 ) {
  //  line(0, i, width, i); //draw horizontal line
  //  line(i, 0, i, height); //draw vertical line
  //  text(i, i, 15); //draw text values on top
  //  text(i, 2, i); //draw text values on side
  //}

  noLoop();
}
