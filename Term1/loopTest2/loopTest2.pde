// Devin Killinger
// 09/25/18

size (200, 200);
background (255);

//int i= 0;
//while (i<height) {
//  i+=10;
//  line(0, i, width, i);
//}

//for (int i = 0; i<height; i+=10) {
//  line(0, i, width, i);
//}

//float w = 200;
//while (w>5) {
//  stroke (0);
//  fill (w);
//  ellipse (width/2, height/2, w, w);
//  w-=25;
//}

//for (float w = 200; w>5; w-=25) {
//  fill (w);
//  ellipse (width/2, height/2, w, w);
//}

for (int x=0; x<width; x+=10) {
  for (int y=0; y<height; y+=10) {
    noStroke();
    fill(random(256));
    rect(x, y, 10, 10);
  }
}
