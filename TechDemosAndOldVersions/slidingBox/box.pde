class box {
  box() {
  }
  void move(float x, float y) {
    noFill();
    translate(x,y,-50);
    box(50, 50, 50);
  }
}

