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
  }
  void display(int x, int y) {
    d = dist(mouseX, mouseY, x, y);
    fill(255);
    imageMode(CENTER);
    image(hole, x, y); 
    if (seconds > pop) {
      seconds = 0;
      timer = random(30, 120);
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
    }
    if (!mousePressed){
      hit = false;
    }
  }
}

