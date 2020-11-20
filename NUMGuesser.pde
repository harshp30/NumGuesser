int userNUM = 0;
int randomNUM = int(random(1, 10));                              //variables
int att = 0;

String t = "Play Again by pressing ENTER";

void setup() {
  size(500, 500);
  background(0);                                        //inital setup
}

void draw() {
  background(0);
  textSize(30);
  text("Guessing Game", 30, 40);                    //a bunch of on screen text
  textSize(15);
  text("Intructions: \n\nGuess a number between 1 and 9 \nthe screen will guide you towards the correct guess by \nprompting you for a higher or lower number. \nOnce you guess the correct number the screen will \ntell you the number of attempts you took to reach the answer.", 30, 80);
  textSize(17);
  text("Guess the Number: ", 30, 300);
  text(userNUM, 210, 300);
  println(randomNUM);                           //prints random number for ease of testing

  if (userNUM > randomNUM) {
    text("LOWER", 30, 350);
  } else if (userNUM < randomNUM) {
    text("HIGHER", 30, 350);                           //prompts user wther their guess needs to be higgher or  lower
  } else if (userNUM == randomNUM) {
    textSize(17);
    text("CORRECT!!! \nIt took you these many attempts: ", 30, 350);             //once user gets it correct it will prompt the user
    text(att, 310, 380);                                                         //number of attempts needed
    text(t, 30, 430);                                                            // play again prompt
  }
}

void keyPressed() {
  att = att + 1;                              //counts number of attempts
  userNUM = key - 48;           

  if (keyCode == ENTER) { 
    userNUM = key - 10;                         //restes the game if user presses ENTEE
    
    userNUM = 0;
    randomNUM = int(random(1, 10));
    att = 0;
    
    println(randomNUM);
  }
}
