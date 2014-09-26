class barGraphs {
  //triangles
  float[] triX = new float[11];
  float[] triY = new float[11];
  int numTri;
  //Cubes
  float[] boxX = new float[11];
  float[] boxY = new float[11];
  int numBox;
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
    answer1 = 0;
    answer2 = 0;
    answer3 = 0;
    answer4 = 0;
    bar1 = new bar();
    bar2 = new bar();
    bar3 = new bar();
    bar4 = new bar();
    done = new graphDone();
    answerBX = 1000;
    answerBY = 675;
    complete = false;


    for (int i=0; i < 10; i++) {         
      triX[i] = random (35, width/2 - 35);
    }
    for (int i=0; i < 10; i++) {         
      triY[i] = random (10, height-70);
    }
    numTri = int(random(1, 5));

    for (int i=0; i < 10; i++) {         
      boxX[i] = random (50, width/2 - 50);
    }
    for (int i=0; i < 10; i++) {         
      boxY[i] = random (50, height-70);
    }
    numBox = int(random(1, 5));
  }
  void display() {
    line(width/2, 0, width/2, height);
    fill(0);

    //Triangles display
    for (int i = numTri; i > 0; i--) {
      triangle(triX[i], triY[i], triX[i]-30, triY[i]+60, triX[i]+30, triY[i]+60);
      if (i == 0)i = numTri;
    }

    for (int i = numBox; i > 0; i--) {
      rect(boxX[i]-30, boxY[i]-30, 60, 60);
      if (i == 0)i = numBox;
    }
    println(numBox);


    //check answer button
    //bar.display(width/2 + 100);
    answer1 = bar1.display(width/2 + 150);
    answer2 = bar2.display(width/2 + 300);
    answer3 = bar3.display(width/2 + 450);
    answer4 = bar4.display(width/2 + 600);

    if (mouseX < answerBX + 200 && mouseX > answerBX && mouseY < answerBY + 100 && mouseY > answerBY) {
      fill(255);

      if (mousePressed && numTri == answer1 && numBox == answer2 /*&& numTri == answer3 && numTri == answer4*/) {
        println("correct!");
        complete = true;
      }
      else if(mousePressed && numTri != answer1) {
        println("wrong!");
      }
    }
    if (complete)done.display();


    rect(answerBX, answerBY, 200, 100);
  }
}

