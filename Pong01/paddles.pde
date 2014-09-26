void p1Paddle() {
  if (key == 'w')paddle1.y -= 5;
  if (key == 's')paddle1.y += 5;
  paddle1.y = constrain(paddle1.y, 50, height - 50);
  paddle1Bounce = map(ball.y,paddle1.y-50,paddle1.y+50,-10,10);

  rect(paddle1.x, paddle1.y, 10, 100);
}
/*
void p2Paddle() {
  if (key == 'w')paddle2.y -= 10;
  if (key == 's')paddle2.y += 10;
  paddle2.y = constrain(paddle2.y, 50, height - 50);
  paddle2Bounce = map(ball.y,paddle2.y-50,paddle2.y+50,-10,10);

  rect(paddle2.x, paddle2.y, 10, 100);
}
*/

void p2Paddle() {
  if (ball.y < paddle2.y)paddle2.y -= 5;
  if (ball.y > paddle2.y)paddle2.y += 5;
  paddle2.y = constrain(paddle2.y, 50, height - 50);
  paddle2Bounce = map(ball.y,paddle2.y-50,paddle2.y+50,-10,10);

  rect(paddle2.x, paddle2.y, 10, 100);
}
