PVector x;
PFont f;
float rotate;
float tranX;
float tranY;


void setup(){
  tranY = height/2;
  tranX = width/2;
  rotate = 0.2;
  x = new PVector(0,0);
  f = createFont("Arial",16,true);
  size(700, 500, P3D);
  background(0, 200, 200);
}
void draw(){
  background(0, 200, 200);
  translate(tranX, tranY, 0);
  rotateY(rotate);
  noFill();
  box(40);
  textFont(f,22);
  fill(0);
  textAlign(CENTER);
  text("Q and E to spin", 0,-80);
  text("Use W, S, A, D to slide around", 0,-100);
  
  if (key == 'e') rotate += 0.1;
  if (key == 'q') rotate -= 0.1;
  if (key == 'w') tranY -= 5;
  if (key == 's') tranY += 5;
  if (key == 'a') tranX -= 5;
  if (key == 'd') tranX += 5;
}
void keyReleased(){
  key = 'p';
}
