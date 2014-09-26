int level, ballR, score, score2;
float paddle1Bounce,paddle2Bounce;
PVector ball, velocity,paddle1,paddle2;
boolean start;

void setup() {
  size(displayWidth/2, displayHeight/2);
  background(0, 100, 100);
  textAlign(CENTER);
  ellipseMode(RADIUS);
  rectMode(CENTER);
  
  level = 1;
  score = 0;
  score2 = 0;
  ballR = 15;
  start = true;
  
  ball = new PVector(width/2, height/2);
  velocity = new PVector(15,random(-10,10));
  paddle1 = new PVector(50,height/2);
  paddle1Bounce = 0;
  paddle2 = new PVector(width - 50,height/2);
  paddle2Bounce = 0;
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

