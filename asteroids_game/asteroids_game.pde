//Charlotte Jacques
//Asteroids Game
//gif link: https://giphy.com/gifs/alien-bicycle-flying-xT0GqHajFY3GXePWBW

//mode variables
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int mode = GAME;

//colour scheme
color green = #686E27;
color turquoise = #276E51;
color purple = #2D276E;
color magenta = #6E2745;
color brown = #3B2B22;

//image variables
PImage avatar, monster, alien;

//game variables
boolean gameWon = false;

//font variables
PFont greenFont, rightItalic, leftItalic;

//gif variables
PImage[] gif;
int gifLength = 8;
int frame = 0;

//keyboard variables
boolean upKey, downKey, leftKey, rightKey, spaceKey, tKey;

//object variables
Ship myShip;
Asteroid[] myAsteroids;
int numAsteroids = 3;
ArrayList<GameObject> myObjects;

void setup() {
  size(1200, 800);
  textAlign(CENTER);

  //image variables
  monster = loadImage("monster.png");

  //font variables
  greenFont = createFont("Bigpartyo2green-d95XV.ttf", 100);
  rightItalic = createFont("BomberEscortItalic-ALG22.otf", 100);
  leftItalic = createFont("BomberEscortLeftalic-ywLl2.otf", 100);
  //textFont(greenFont);
  textAlign(CENTER, CENTER);

  //gif variables
  gif = new PImage[gifLength];
  int c = 0;
  while (c < gifLength) {
    gif[c] = loadImage("frame_" + c + "_delay-0.2s.gif");
    c++;
  }


  //keyboard variables
  upKey = downKey = leftKey = rightKey = spaceKey = tKey = false;

  //object variables
  myShip = new Ship();
  myAsteroids = new Asteroid[numAsteroids];
  myObjects = new ArrayList<GameObject>();

  //add ship to arraylist
  myObjects.add(myShip);

  //add asteroids to arraylist
  int i = 0;
  while (i < numAsteroids) {
    myAsteroids[i] = new Asteroid();
    myObjects.add(myAsteroids[i]);
    i++;
  }
}

void draw() {
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER) gameover();
  else println("error: mode = " + mode);
}
