final static int NORTH = 1;
final static int EAST = 2;
final static int SOUTH = 4;
final static int WEST = 8;
int result;
float x, y;
int level;
int m;

box b;

void setup() {
  size(700, 500, P3D);
  background(0, 200, 200);
  level = 0;
  b = new box();
  m = 10;

  result = 0;
  x = width/2;
  y = height/2;
}
void draw() {
  background(255);
  switch(level) {
  case 0:
    b.move(x, y);
    break;
  case 1:
    break;
  }
  switch(result) {
  case NORTH: 
    y-=m; 
    break;
  case EAST: 
    x+=m; 
    break;
  case SOUTH:
    y+=m; 
    break;
  case WEST: 
    x-=m; 
    break;
  case NORTH|EAST: 
    y-=m/1.5; 
    x+=m/1.5; 
    break;
  case NORTH|WEST: 
    y-=m/1.5; 
    x-=m/1.5; 
    break;
  case SOUTH|EAST: 
    y+=m/1.5; 
    x+=m/1.5; 
    break;
  case SOUTH|WEST: 
    y+=m/1.5; 
    x-=m/1.5; 
    break;
  }
}

void keyPressed() {
  switch(key) {
    case('w'):
    case('W'):
    result |=NORTH;
    break;
    case('d'):
    case('D'):
    result |=EAST;
    break;
    case('s'):
    case('S'):
    result |=SOUTH;
    break;
    case('a'):
    case('A'):
    result |=WEST;
    break;
  }
}
void keyReleased() {  
  switch(key) {
    case('w'):
    case('W'):
    result ^=NORTH;
    break;
    case('d'):
    case('D'):
    result ^=EAST;
    break;
    case('s'):
    case('S'):
    result ^=SOUTH;
    break;
    case('a'):
    case('A'):
    result ^=WEST;
    break;
  }
}

