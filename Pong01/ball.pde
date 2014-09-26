void ball() {
  ball.add(velocity);

  if (ball.x > width - ballR) {//change 
    score2++;
    ball.set(width/2, height/2);
    velocity.set(-15, random(0,0));
    paddle1.y = height/2;
    paddle2.y = height/2;
  }  
  if (ball.x < ballR) {
    ball.x = ballR;
    velocity.set(0, 0);
    score++;
    ball.set(width/2, height/2);
    velocity.set(15, random(0, 0));
    paddle1.y = height/2;
    paddle2.y = height/2;
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
    ball.x = paddle1.x + 5 + ballR;
    velocity.x *= -1;
    velocity.y = paddle1Bounce;
  }

  if (ball.x >  paddle2.x - 5 - ballR && ball.y < paddle2.y + 50 + ballR && ball.y > paddle2.y -50 -ballR) {
    ball.x = paddle2.x - 5 - ballR;
    velocity.x *= -1;
    velocity.y = paddle2Bounce;
  }

  ellipse(ball.x, ball.y, ballR, ballR);
}

