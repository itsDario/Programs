import ddf.minim.*;
AudioPlayer player;
AudioSample hitS;
Minim minim;

mole m1, m2, m3, m4, m5, m6;
int gameTime, time;
PImage grass, Hammer;
int score;
int level;
PFont font;
boolean hit;                                            

void setup() {
  fill(#A9FFA5);//for fonts

  minim = new Minim(this);
  player = minim.loadFile("level1.mp3", 2048);

  hit = false;
  level = 0;
  score = 0;
  grass = loadImage("grass.jpg");
  Hammer = loadImage("Hammer.png");
  time = 0;
  gameTime = 1800;

  PFont fonts;
  font = createFont("ComicSansMS", 48);
  textFont(font);

  m1 = new mole();
  m2 = new mole();
  m3 = new mole();
  m4 = new mole();
  m5 = new mole();
  m6 = new mole();
  size(1500, 905);
  background(#00B936);
}


void draw() {

  switch(level) {
  case 0:
    background(grass); 

    textAlign(CENTER);
    textSize(100);
    text("Welcome to", width/2, 200);
    text("Whack a Mole!", width/2, height/2);
    text("Click To Start", width/2, height-200);

    textAlign(CENTER);
    textSize(24);
    text("By: Dario Oropeza", width/2, height-28);

    if (mousePressed) {
      level = 1;
      player.play();
      noCursor();
    }
    time = 0;
    score = 0;
    break;
  case 1:
    if (key == 'm') {
      player.pause();
      key = 'p';
    }

    time++;

    background(grass);
    m1.display(width/4, height/3);
    m2.display(width/4*2, height/3);
    m3.display(width/4*3, height/3);
    m4.display(width/4, height/3*2);
    m5.display(width/4*2, height/3*2);
    m6.display(width/4*3, height/3*2);

    //Hammer
    translate(mouseX, mouseY);
    if (key == 'r') {
      key = 'p';

      player.pause();
      player.rewind();
      cursor();
      level = 0;
    }
    if (mousePressed) {
      rotate(-0.5);
    }
    else {
      rotate(0);
    }
    image(Hammer, 0, 0);
    if (mousePressed) {
      rotate(0.5);
    }
    translate(-mouseX, -mouseY);
    //endHammer

    if (time > gameTime) {
      level = 2;

      player.pause();
      player.rewind();
      cursor();
    }
    textAlign(LEFT);
    textSize(48);
    text("Moles Hammered: " + score + " Time Left: " + ((gameTime - time)/60), 300, 150);
    textSize(24);
    text("Press R to Restart. Press M to mute", 300, height -100);
    break;
  case 2:
    background(grass); 
    textAlign(CENTER);
    textSize(100);
    text("Game Over", width/2, 200);
    text("score: " + score, width/2, height/2);
    text("Press Space to restart", width/2, height - 200);

    if (key == ' ') {
      key = 'p';
      level = 0;
    }
    break;
  }
}

