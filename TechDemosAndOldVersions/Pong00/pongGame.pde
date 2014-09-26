void pongGame() {
  background(0, 100, 100);
  pointDisplay();

  if (start) {
    ball();
    p1Paddle();
    //p2Paddle();
  }
}

void ball() {
  ball.add(velocity);

  if (ball.x > width - ballR) {
    ball.x = width - ballR;
    velocity.x *= -1;
  }  
  if (ball.x < ballR) {
    ball.x = ballR;
    velocity.set(0, 0);
    score++;
  }
  if (ball.y > height - ballR) {
    ball.y = height - ballR;
    velocity.y *= -1;
  }
  if (ball.y < ballR) {
    ball.y = ballR;
    velocity.y *= -1;
  }
  if (ball.x <  paddle1.x + 5 + ballR && ball.y < paddle1.y + 50 + ballR && ball.y > paddle1.y -50 -ballR) {
    velocity.x *= -1;
  }

  ellipse(ball.x, ball.y, ballR, ballR);
}

void p1Paddle() {
  if (key == 'w')paddle1.y -= 10;
  if (key == 's')paddle1.y += 10;
  paddle1.y = constrain(paddle1.y, 50, height - 50);

  rect(paddle1.x, paddle1.y, 10, 100);
}

void pointDisplay() {
  if (!start) {
  }
  if (start) {
    text(score,width/2 - 50, height /2);
  }
}

void keyReleased() {
  key = 'p';
}

