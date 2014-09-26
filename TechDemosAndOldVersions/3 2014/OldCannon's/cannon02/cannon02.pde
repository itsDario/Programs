PVector x;
Ball b;
cannon c;
boolean shoot;
PVector mouse;

void setup() {
  size(700, 500);
  background(0, 200, 200);

  shoot = false;
  // mouse = new PVector(mouseX,mouseY*-1);
  b = new Ball();
  c = new cannon();
  x = new PVector(0, 0);
}
void draw() {
  fill(0);

  background(0, 200, 200);

  c.update();
  if (mousePressed && shoot == false) {
    b.shot();
  }

  if (mousePressed || shoot) {
    b.update();
    b.display();
    b.checkEdges();

    shoot = true;
  }
  c.cPicture();
}
void keyReleased() {
  if (key == ' ') {
    setup();
    key = 'p';
  }
}

