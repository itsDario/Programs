barGraphs stage1;
titleScreen title;
int level;


void setup() {
  size(1500, 800);
  //background(10,10,10);
  level = 0;
  stage1 = new barGraphs();
  title = new titleScreen();
}
void draw() {
  textAlign(CENTER);
  background(150);
  switch(level) {
  case 0:
    title.display();
    break;
  case 1:
    stage1.display();
    break;
  case 2:
    break;
  }
}

