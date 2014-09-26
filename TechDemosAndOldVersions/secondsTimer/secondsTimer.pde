int time1, time2, seconds;
void setup() {
  seconds = 0;
  time2 = 0;
}
void draw() {
  time1 = millis();
  if (time1 - time2 > 1000) {
    time2 = millis();
    seconds++;
    println (seconds);
  }
}

