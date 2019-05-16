// Devin Killinger
// 12/03/18
// TODO: 

import processing.sound.*;
SoundFile laserpew;

Table tResults;
TableRow tr1;

ArrayList<EnemyShip> eships;
ArrayList<Laser> lasers;
Ship ship;
Timer timer;
Timer powTimer;
Timer ticTimer;
int totalShips;
int laserCount;
int level = 1;
int enemyRate = 4000;
boolean play = false;
boolean ticker = false;
String ticText = "";
String name = "Anonymouse";

EnemyShip es1;
Laser l1;

void setup() {
  size(displayWidth, displayHeight);
  tResults = loadTable("results.csv", "header");
  lasers = new ArrayList<Laser>();
  eships = new ArrayList<EnemyShip>();
  timer = new Timer(enemyRate);
  ticTimer = new Timer(2000);
  timer.start();

  // load soundfile
  laserpew = new SoundFile(this, "laserpew.wav");
  laserpew.play();

  ship = new Ship(width/2, height/2, 10, "Ship.png");
  es1 = new EnemyShip(width/3, height/2, 50, 100, "GenericEnemyShip.png");
  l1 = new Laser(width/2, height/3, 2, 20);
}

void draw() {
  background(0);
  noCursor();

  if (!play) {
    startScreen();
  } else if (play) {

    // Level handling
    if (frameCount % 1000 == 10) {
      level++;
      ticText = "Level: " + level;
      ticker();
    }

    // Display Ship and Set Location
    ship.setLocation(mouseX, mouseY);
    ship.display();

    // Add Enemy Ship based on timer
    if (timer.isFinished()) {
      eships.add(new EnemyShip(int(random(1, width-50)), (-20), 50, 150, "GenericEnemyShip.png"));
      if (random(5)>3) {
        eships.add(new EnemyShip(int(random(1, width-50)), (-20), 100, 400, "ShipBoss.png"));
      } 
      if (random(5)>2) {
        eships.add(new EnemyShip(int(random(1, width-50)), (-20), 50, 150, "ShinyEnemyShip.png"));
      }
      timer.start();
    }

    // All Collision Detection
    for (int i = eships.size()-1; i>=0; i--) {
      EnemyShip eship = (EnemyShip) eships.get(i);
      eship.move();
      eship.display();
      if (eship.reachedBottom()) {
        eships.remove(eship);
      }
      for (Laser l : lasers) {
        if (dist(l.x, l.y, eship.x, eship.y) <eship.hitboxX) {
          eship.hp-=1;
        } else if (dist(l.x, l.y, eship.x, eship.y) <eship.hitboxY) {
          eship.hp-=1;
        }
        if (eship.hp<10) {
          eships.remove(eship);
        }
      }
      if (dist(ship.x, ship.y, eship.x, eship.y) < ship.hitbox) {
        if (eship.alive) {
          eships.remove(eship);
        } else {
          eships.remove(eship);
        }
      }
    }

    if (ticker) {
      if (!ticTimer.isFinished()) {
        fill(255, 127);
        textSize(44);
        textAlign(CENTER);
      } else if (!ticTimer.isFinished() && ship.hp < 30) {
        fill(255, 127);
        textSize(44);
        textAlign(CENTER);
        text(ticText, width/2, height/2);
      }
    }

    // Display and Dispose Lasers
    for (int i = 0; i<lasers.size(); i++) {
      lasers.get(i).fire();
      lasers.get(i).display();
      if (lasers.get(i).reachedTop()) {
        lasers.remove(i);
      }
    }
  }
}

void update() {
  fill(127, 127);
  rect(0, 0, width, 80);
}

void startScreen() {
  background (0);
  textAlign(CENTER);
  fill(150);
  text("Click to Continue...", width/2, height/2);
  fill(255);
  text("Sky Shooter", width/2, height/3);
  tResults.sort("SCORE");
  tr1 = tResults.getRow(tResults.getRowCount()-1);
  fill(160);
  text("High Score: " + tr1.getString("SCORE") + " by: " + tr1.getString("NAME"), width/2, height/3+50);

  if (mousePressed) {
    play = true;
  }
}

void ticker() {
  ticTimer.start();
  ticker = true;
  if (ticTimer.isFinished()) {
    ticker = false;
  }
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  fill(222);
  text("Game Over!", width/2, height/2);

  // Score stuff
  TableRow newRow = tResults.addRow();
  newRow.setString("NAME", name);
  saveTable(tResults, "data/results.csv");

  noLoop();
}

void mousePressed() {
  lasers.add(new Laser(ship.x, ship.y, 2, 20));
  laserpew.play();
}
