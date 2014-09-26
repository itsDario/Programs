class barGraphs {
  //pictures
  PImage rooster, dog, pig, cow;
  //triangles
  float[] triX = new float[11];
  float[] triY = new float[11];
  int numTri;
  //Cubes
  float[] boxX = new float[11];
  float[] boxY = new float[11];
  int numBox;
  //Roos
  float[] roosX = new float[11];
  float[] roosY = new float[11];
  int numRoos;
  //Cow
  float[] cowX = new float[11];
  float[] cowY = new float[11];
  int numCow;
  //answer Button and co
  int answerBX, answerBY;
  float answer1;
  float answer2;
  float answer3;
  float answer4;
  boolean complete;

  bar bar1;
  bar bar2;
  bar bar3;
  bar bar4;
  graphDone done;

  barGraphs() {
    rooster = loadImage("rooster.png");
    dog = loadImage("dog.png");
    pig = loadImage("pig.png");
    cow = loadImage("cow.png");

    answer1 = 0;
    answer2 = 0;
    answer3 = 0;
    answer4 = 0;
    bar1 = new bar();
    bar2 = new bar();
    bar3 = new bar();
    bar4 = new bar();
    done = new graphDone();
    answerBX = width/2 + 215 ;
    answerBY = 675;
    complete = false;


    for (int i=0; i < 10; i++) {         
      triX[i] = random (100, width/2 - 35);
    }
    for (int i=0; i < 10; i++) {         
      triY[i] = random (100, height-70);
    }
    numTri = int(random(1, 5));

    for (int i=0; i < 10; i++) {         
      boxX[i] = random (100, width/2 - 50);
    }
    for (int i=0; i < 10; i++) {         
      boxY[i] = random (100, height-70);
    }
    numBox = int(random(1, 5));

    for (int i=0; i < 10; i++) {         
      roosX[i] = random (100, width/2 - 50);
    }
    for (int i=0; i < 10; i++) {         
      roosY[i] = random (100, height-70);
    }
    numRoos = int(random(1, 5));

    for (int i=0; i < 10; i++) {         
      cowX[i] = random (100, width/2 - 50);
    }
    for (int i=0; i < 10; i++) {         
      cowY[i] = random (100, height-70);
    }
    numCow = int(random(1, 5));
  }
  void display() {
    imageMode(CENTER);
    line(width/2, 0, width/2, height);

    text("Count the animals", width/4, 50);
    text("Fill out the Graphs", width/4*3, 50);
    text("with the amount of animals", width/4*3, 100);
    fill(0);

    //Triangles display
    stroke(255);
    for (int i = numTri; i > 0; i--) {
      image(pig, triX[i], triY[i]);
      if (i == 0)i = numTri;
    }
    for (int i = numBox; i > 0; i--) {
      image(dog, boxX[i]-30, boxY[i]-30);
      if (i == 0)i = numBox;
    }
    for (int i = numRoos; i > 0; i--) {   //fix this
      image(rooster, roosX[i], roosY[i]);
      if (i == 0)i = numRoos;
    }
    for (int i = numCow; i > 0; i--) {   //fix this
      image(cow, cowX[i], cowY[i]);
      if (i == 0)i = numCow;
    }
    stroke(0);

    //println(numBox);

    answer1 = bar1.display(width/2 + 150, 1);
    answer2 = bar2.display(width/2 + 300, 2);
    answer3 = bar3.display(width/2 + 450, 3);
    answer4 = bar4.display(width/2 + 600, 4);
    //check answer button

    if (mouseX < answerBX + 200 && mouseX > answerBX && mouseY < answerBY + 100 && mouseY > answerBY) {
      fill(255);

      if (mousePressed && numTri == answer1 && numBox == answer2 && numRoos == answer3 && numCow == answer4) {
        println("correct!");
        complete = true;
      }
      else if (mousePressed && numTri != answer1) {
        println("wrong!");
      }
    }
    if (complete)done.display();


    rect(answerBX, answerBY, 330, 100);
    fill(0);
    textSize(48);
    text("Check answer", answerBX+164, answerBY+65);
  }
}

