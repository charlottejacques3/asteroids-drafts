//Charlotte Jacques
//Asteroids Game

//mode variables
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int mode = INTRO;

boolean upKey, downKey, leftKey, rightKey, spaceKey;
Ship myShip;
ArrayList<GameObject> myObjects;

void setup() {
  size(1200, 800);
  textAlign(CENTER);

  upKey = downKey = false;

  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();

  //add ship to arraylist
  myObjects.add(myShip);

  //add asteroids to arraylist
  int i = 0;
  while (i < 3) {
    myObjects.add(new Asteroid());
    i++;
  }
}

void draw() {
  //set up the modes
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER) gameover();
  else println("error: mode = " + mode);


  
}
