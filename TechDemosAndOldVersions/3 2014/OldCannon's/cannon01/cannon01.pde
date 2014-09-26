PVector x;
PFont f;
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
  f = createFont("Arial", 16, true);
}
void draw() {
  textFont(f, 16);
  fill(0);
  textAlign(CENTER);
  text("Hello World!", width/2, height/3);

  background(0, 200, 200);

  c.update();
    if (mousePressed) {
    //mouse.(200);
   // b.velocity.set(mouse);
  }

  if (mousePressed || shoot) {
    b.update();
    b.display();
    b.checkEdges();

    shoot = true;
  }
}
void keyReleased() {
  if (key == ' ') {
    setup();
    key = 'p';
  }
}

