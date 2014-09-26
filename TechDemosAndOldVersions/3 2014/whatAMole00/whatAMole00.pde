mole m1, m2, m3, m4, m5, m6;
int ran, gameTime, time;
PImage grass, Hammer;
int mScore;
int level;
PFont font;

void setup() {
  level = 0;
  mScore = 0;
  ran = 0;
  grass = loadImage("grass.jpg");
  Hammer = loadImage("Hammer.png");
  time = 0;
  gameTime = 1800;

  PFont fonts;
  font = createFont("Dialog", 48);
  textFont(font);

  m1 = new mole();
  m2 = new mole();
  m3 = new mole();
  m4 = new mole();
  m5 = new mole();
  m6 = new mole();
  size(1500, 905);
  background(#00B936);
  noCursor();
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
    }

    break;
  case 1:
    time++;

    background(grass);
    m1.display(width/4, height/3);
    m2.display(width/4*2, height/3);
    m3.display(width/4*3, height/3);
    m4.display(width/4, height/3*2);
    m5.display(width/4*2, height/3*2);
    m6.display(width/4*3, height/3*2);

    image(Hammer, mouseX, mouseY); 

    if (time > gameTime) {
      level = 2;
    }

    fill(255);
    textAlign(LEFT);
    textSize(48);
    text("Moles Hammered: " + mScore + " Time Left: " + ((gameTime - time)/60), 300, 150);
    break;
  case 2:
    background(grass); 
    textAlign(CENTER);
    textSize(100);
    text("Game Over", width/2, 200);
    text("Score: " + mScore, width/2, height/2);
    text("Press Space to restart", width/2, height - 200);
    
    if(key == ' '){
      key = 'p';
      level = 0;
    }
    break;
  }
}

