class barGraphs {
  //triangles
  float[] triX = new float[10];
  float[] triY = new float[10];
  int numTri;
  //answer
  int answerBX, answerBY;

  bar bar;

  barGraphs() {
    bar = new bar();
    answerBX = 1000;
    answerBY = 675;


    for (int i=0; i < 10; i++) {         
      triX[i] = random (35, width/2 - 35);
    }
    for (int i=0; i < 10; i++) {         
      triY[i] = random (10, height-70);
    }
    numTri = int(random(1, 6));
  }
  void display() {
    line(width/2, 0, width/2, height);
    fill(0);

    //Triangles display
    for (int i = numTri; i > 0; i--) {
      triangle(triX[i], triY[i], triX[i]-30, triY[i]+60, triX[i]+30, triY[i]+60);
      if (i == 0)i = numTri;
      // println (numTri);
    }


    //check answer button
    bar.display(width/2 + 100);

    if (mouseX < answerBX + 200 && mouseX > answerBX && mouseY < answerBY + 100 && mouseY > answerBY) {
      fill(255);

      if (mousePressed) {
        if (numTri == bar.answer) {
          println("correct!");
        }else{
          println("wrong!");
        }
      }
    }


    rect(answerBX, answerBY, 200, 100);
  }
}

