class bar {
  PImage rooster, dog, pig, cow;
  float answer;
  float y = 599;
  //int x;
  bar() {
    //x = 100;
  }
  float display(int x, int barNum) {
    rooster = loadImage("rooster.png");
    dog = loadImage("dog.png");
    pig = loadImage("pig.png");
    cow = loadImage("cow.png");

    fill(0);
    rect(x - 50, y, 100, 1000);
    rectMode(CENTER);
    if (mouseX < x + 50 && mouseX > x - 50 && mouseY < y + 30 && mouseY > y - 30) {
      fill(255);
      if (mousePressed && y < 600 && y > 100) {
        y = mouseY;
      }
      else {
        //println(y);
      }
      if (y <= 100)y = 101;
      if (y >= 600)y = 599;
    }
    rect(x, y, 100, 50);
    fill(255, 0, 0);
    rectMode(CORNER);
    rect(width/2, 650, 1000, 500);
    //shapes above bars
    if (barNum == 1) {
      image(pig, x, y - 55, 50, 45);
    }
    else if (barNum == 2) {
      image(dog, x, y-55, 65, 50);
    }
    else if (barNum == 3) {
      image(rooster, x, y-55, 40, 50);
    }
    else if (barNum == 4) {
      image(cow, x, y-55, 65, 50);
    }

    answer = map(y, 600, 101, 1, 10.9);
    answer = int(answer);
    textSize(12);
    text(answer, x, y);
    return answer;
  }
}

