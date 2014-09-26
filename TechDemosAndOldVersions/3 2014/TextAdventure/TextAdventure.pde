int level;
boolean read;

void setup() {
  read = true;
  level = 0;
}

void draw() {
  switch(level) {
  case 0: // intro screen
    if (read) {
      println("The portal");
      println();
      println("Press space to continue");
      println();
      read = false;
    }
    if (key == ' ') {
      level = 1;
      read = true;
    }
    break;
  case 1:
    if (read) {
      println("You stand in the basement looking at the portal on the ground");
      println("Why are you delaying? you have been researching the twilight dimension for a long time");
      println("With all your equipment , food, armor and wepons ready you jump into the portal");
      println();
      println("Press c to continue");
      println();
      read = false;
    }
    if (key == 'c') {
      level = 2;
      read = true;
    }
    break;
  case 2:
    if (read) {
      println("Ive arrived in the twilight dimension");
      println("As i look around i see some of the strange monsters and animals ive read about");
      println("Deafeating some of the stronger monsters shoudl yeld great prizes");
      println("Their is a huge tower that goes up for qute a bit. i cant seem to see the top of it");
      println("its a dangerus tower but it should have very useful equipment");
      println("what should i do next?");
      println();
      println("Press a to adventure the land. Press t to climb the tower");
      println();
      read = false;
    }
    if (key == 'a') {
      level = 3;
      read = true;
    }
    if (key == 't') {
      level = 4;
      read = true;
    }
    break;
  case 3:
    if (read) {
      println("I started running and scouring the land");
      println("i ran into some zombies and skelitons but their where no match");
      println("I run into a huge monster. Its a 3 headed hydra");
      println("Combat starts as i cut off each head 2 grow in its place");
      println("getting through all the firballs i eventualy wore the monster down.");
      println("It was a difficult battle but he couldnt grow anymore heads and i deafeated the hydra");
      println();
      println("The End");
      println();
      read = false;
    }
    break;
  case 4:
    if (read) {
      println("Entering the base of the tower you find that the whole inside is dark");
      println("Luckly your prepaird with a torch");
      println("as you make you way up the tower deafeating monster after monster you collect plenty of loot");
      println("after sometime you make it to the top of the tower to find that its just the first tower of many");
      println("so many towers just floating in the sky above the tower you just compleated");
      println("You dicide to head back home and clear out the loot from your inventory");
      println("You will return to this land again in the future to clear out this tower");
      println();
      read = false;
    }
    break;
  }
}

