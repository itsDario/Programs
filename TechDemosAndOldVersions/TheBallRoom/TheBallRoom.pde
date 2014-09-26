import damkjer.ocd.*;

Camera camera1;

PVector x;
PFont f;
float rotate;
float tranX;
float tranY;

float gridX, locationX, locationY, locationZ;
void setup() {
  size(displayWidth, displayHeight, P3D);
  gridX = 0;
  locationX = -400;
  locationY = -125;
  locationZ = 0;

  camera1 = new Camera(this, locationX, locationY, locationZ);
  camera1.dolly(-20);

  rotate = 0.2;
  x = new PVector(0, 0);
  f = createFont("Arial", 16, true);
  background(0, 200, 200);
}
void draw() {
  //cursor(CROSS,0,0);
  mouseX = 0;
  noCursor();

  lights();
  camera1.feed();

  background(0, 200, 200);
  translate(tranX, tranY, 0);
  rotateY(rotate);
  noFill();
  box(40);
  box(1000);
  textFont(f, 22);
  fill(0);
  textAlign(CENTER);
  text("Q and E to spin", 0, -80);
  text("Use W, S, A, D to slide around", 0, -100);

  camera1.aim(gridX, 0, 0);
  camera1.jump(locationX, locationY, locationZ);
  camera1.circle(-5);

  if (key == 'e') rotate += 0.1;
  if (key == 'q') rotate -= 0.1;
  if (key == 'w') {
    gridX -= 5; 
    locationX -=5;
  }
  if (key == 's') {
    gridX += 5;
    locationX += 5;
  }
  if (key == 'a') camera1.circle(-5);
  if (key == 'd') camera1.circle(5);
}
void keyReleased() {
  key = 'p';
}
/*void mouseMoved() {
 if(focused)camera1.look(radians(mouseX - pmouseX) / 2.0, radians(mouseY - pmouseY) / 2.0);
 }
 void mousePressed() {
 camera1.aim(width, height, 0);
 }
 
 void mouseReleased() {
 camera1.aim(0, 0, 0);
 }
 */
boolean sketchFullScreen() {
  return false;
}

