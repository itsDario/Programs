PFont f;
int diceSides;
int playerRoll;
int cpuRoll;

void setup(){
  size(700, 500);
  background(0, 200, 200);
  
  f = createFont("Arial",16,true);
  diceSides = int(random(3,100));
  playerRoll = int(random(0,diceSides));
  cpuRoll = int(random(0,diceSides));
  
}
void draw(){
  translate(width/2,height/2);
  textFont(f,16);
  fill(0);
  textAlign(CENTER);
  text("Number of sides are " + diceSides, 0,-40);
  text("You rolled a " + playerRoll, 0,-20);
  text("Computer rolled a " + cpuRoll, 0,0);
  
  if (playerRoll > cpuRoll) text("You Win", 0,40);
  else text("You Lose", 0,40);
  
}
