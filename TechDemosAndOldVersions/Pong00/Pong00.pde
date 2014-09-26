int level, ballR, score;
PVector ball, velocity,paddle1;
boolean start;

void setup() {
  size(displayWidth/2, displayHeight/2);
  background(0, 100, 100);
  textAlign(CENTER);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  
  level = 1;
  score = 0;
  ballR = 15;
  start = true;
  
  ball = new PVector(width/2, height/2);
  velocity = new PVector(15,5);
  paddle1 = new PVector(50,height/2);
}
void draw() {
  switch(level) {
  case 0:
    startScreen();
    break;
  case 1:
    pongGame();
    break;
  }
}

void startScreen() {
  text("pong", width/2, height/2);
}

