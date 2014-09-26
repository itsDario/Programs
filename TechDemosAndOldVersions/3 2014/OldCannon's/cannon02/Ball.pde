class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector gravity;
  PVector shot;



  Ball() {
    location = new PVector(20, height - 30);
    velocity = new PVector(10, -10);
    acceleration = new PVector(0, .15);
  }
  void shot() {
    shot = new PVector(mouseX, mouseY-height);
    shot.mult(0.02);

    velocity.set(shot);
  }

  void update() {  
    velocity.add(acceleration);
    location.add(velocity);
  }



  void checkEdges() {
    if (location.x > width - 16) {
      velocity.x = velocity.x * -.8;
      location.x = width-16;
    }
    else if (location.x < 16) {
      velocity.x = velocity.x * -.8;
      location.x = 16;
    }

    if (location.y > height - 16) {
      velocity.y = velocity.y * -0.8;
      velocity.x = velocity.x * .99;
      location.y = height - 16;
    }
    else if (location.y < 16) {
      velocity.y = velocity.y * -0.8;
      location.y = 16;
    }
  }

  void display() {
    ellipse(location.x, location.y, 30, 30);
  }
}

