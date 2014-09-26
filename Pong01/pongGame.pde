void pongGame() {
  background(0, 100, 100);
  pointDisplay();

  if (start) {
    ball();
    p1Paddle();
    p2Paddle();
  }else gameStart();
}

void pointDisplay() {
  text(score, width/2 + 50, height /2);
  text(score2, width/2 - 50, height / 2);
}

void gameStart() {
  
}

void keyReleased() {
  key = 'p';
}

