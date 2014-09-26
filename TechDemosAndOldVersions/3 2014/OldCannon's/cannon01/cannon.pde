class cannon {
  PVector mouse;
  cannon() {
  }

  void update() {

    mouse  = new PVector(mouseX, mouseY);
    mouse.y -= height;
    mouse.limit(50);
    mouse.y = mouse.y + height;
    line(0, height, mouse.x, mouse.y);
  }
}





/*
background(255);
 PVector mouse  = new PVector(mouseX, mouseY);
 PVector corner = new PVector(15, height-15);
 PVector subtraction!
 mouse.sub(center);
 Draw a line to represent the vector.
 translate(width/2, height/2);
 line(0, 0, mouse.x, mouse.y);
*/
