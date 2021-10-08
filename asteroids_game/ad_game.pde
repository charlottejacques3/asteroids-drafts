void game() {
  background(green);

  int i = 0;
  while (i < myObjects.size()) {
    GameObject o = myObjects.get(i);
    o.show();
    o.act();

    if (o.lives == 0) {
      myObjects.remove(i);
      i--;
    }
    i++;
  }
  noStroke();
  fill(brown);
  rect(0, 0, width, 50);
  fill(255);
  text("lives: " + myShip.lives, width/2, 30);

  //lose game
  if (myShip.lives == 0) mode = GAMEOVER;


  //win game
  //int n = 0;
  //while (n < numAsteroids) {
  //  if (myAsteroids[n].lives == 0) gameWon = true;
  //  else gameWon = false;
  //  n++;
  //}
}

void gameClicks() {
}
