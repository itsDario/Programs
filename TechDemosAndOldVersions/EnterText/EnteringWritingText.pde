char letter;
String words = "X_";
String[] list = split(words, ' ');

void setup() {
  size(640, 360);
  // Create the font
  textFont(createFont("Georgia", 36));
}

void draw() {
  background(0); // Set background to black

  // Draw the letter to the center of the screen
  textSize(14);
  text("Click on the program, then type to add to the String", 50, 50);
  text("The String is " + words.length() +  " characters long", 50, 90);

  textSize(36);
  text(words, 50, 120, 540, 300);
}

void keyPressed() {
  // The variable "key" always contains the value 
  // of the most recent key pressed.
  if (words.length() < 14 && (key >= 'A' && key <= 'z') || key == ' ') {
    letter = key;
    words = words + key;
    // Write the letter to the console
  }
  if (key == '1') {
    key = '2';

   saveStrings("words.txt", list);
    println("saved");
  }
}

