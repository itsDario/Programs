import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class whackAMole03 extends PApplet {


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

public void setup() {
  fill(0xffA9FFA5);//for fonts

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
  background(0xff00B936);
}


public void draw() {

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
      rotate(-0.5f);
    }
    else {
      rotate(0);
    }
    image(Hammer, 0, 0);
    if (mousePressed) {
      rotate(0.5f);
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

class mole {
  PImage hole;
  PImage mole;
  int seconds;
  float timer;
  float pop;
  float d;
  mole() {
    hole = loadImage("hole.png");
    mole = loadImage("mole.png");
    seconds = 0;
    pop = random(1, 5);
    time = 0;  //counts time useing frames

    hitS = minim.loadSample("hitS.wav");
  }
  public void display(int x, int y) {
    d = dist(mouseX, mouseY, x, y);
    //fill(255);
    imageMode(CENTER);
    image(hole, x, y); 
    if (seconds > pop) {
      seconds = 0;
      timer = random(60, 150);
    }
    if (timer > 0) {
      image(mole, x, y);
      timer--;
    }

    if (time % 60 == 0) {
      seconds++;
    }
    if (mousePressed && timer > 0 && d < 80 && !hit) {
      timer = 0;
      score++;
      hit = true;
      hitS.trigger();
    }
    if (!mousePressed) {
      hit = false;
      //hitS.pause();
      //hitS.rewind();
    }
  }
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "whackAMole03" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
