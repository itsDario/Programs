class titleScreen {
  titleScreen() {
  }
  void display() {
    text("Fancy Titile Screen", width/2, height/2);
    text("Press Space To Start", width/2, height/2 + 50);
    if (key == ' ') {
      key = 'p';
      level = 1;
    }
  }
}

