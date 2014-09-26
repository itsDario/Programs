PVector x;
PFont f;
Ball b;

void setup(){
  size(700, 500);
  background(0, 200, 200);
  
  b = new Ball();
  x = new PVector(0,0);
  f = createFont("Arial",16,true);
}
void draw(){
  textFont(f,16);
  fill(0);
  textAlign(CENTER);
  text("Hello World!", width/2,height/3);
  
  background(0, 200, 200);
  
  b.update();
  b.display();
  b.checkEdges();
  
}
