float[] triX = new float[10];
float[] triY = new float[10];

size(1000, 500);

for (int i=0; i < 10; i++) {         
  triX[i] = random (35, width/2 - 35);
}
for (int i=0; i < 10; i++) {         
  triY[i] = random (10, height-70);
}
int yellow = int(random(0,9));









for (int t = yellow; t > 0; t--) {
  println(triX[t]);
  println(triY[t]);
}

