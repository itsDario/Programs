class cannon {
  PImage cannon;
  PVector mouse;
  float rot;
  cannon() {
    cannon = loadImage("Cannon.png");
  }

  void update() {

    mouse  = new PVector(mouseX, mouseY);
    mouse.y -= height;
    mouse.limit(50);
    mouse.y = mouse.y + height;
    //line(0, height, mouse.x, mouse.y);
  }

  void cPicture() {
    
    rot = atan2(mouseY-height, mouseX);
    imageMode(CORNER);
    translate(20, height-30);
    rotate(rot+ radians(90));
    translate(-cannon.width/2,0);
    image(cannon, 0, 0);
  }
}

