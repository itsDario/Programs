class graphDone {
  graphDone() {
  }
  void display() {
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2-15, 500, 100);
    rect(width/2, 585, 500, 100);
    fill(0);
    textSize(48);
    text("Congratulations", width/2, height/2);
    text("Next Level", width/2, 600);
    rectMode(CORNER);
    //level = 0;
    if (mousePressed && mouseX < width/2 + 250 && mouseX > width/2 - 250 && mouseY < 585 + 50  && mouseY > 585 - 50) {
      level = 0;
      setup();
    }
  }
}

