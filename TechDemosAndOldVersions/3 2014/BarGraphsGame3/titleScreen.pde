class titleScreen {
  titleScreen() {
  }
  void display() {
    text("Fancy Titile Screen", width/2, height/2);
    if (key == ' ') {
      key = 'p';
      level = 1;
    }
  }
}

