class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector gravity;



  Ball() {
    location = new PVector(width/2, 50);
    velocity = new PVector(15, 0);
    acceleration = new PVector(0, 0);
    gravity = new PVector(0, -0.1);
  }

  void update() {
    location.add(velocity);
    velocity.add(acceleration);

    velocity.sub(gravity);
  }


  void display() {
    ellipse(location.x, location.y, 30, 30);
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
}
