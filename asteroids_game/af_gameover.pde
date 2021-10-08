void gameover() {
  background(0);
  if (myShip.lives == 0) {
    fill(0, 255, 0);
    textFont(leftItalic);
    text("GAME", 460, height/2);
    textFont(rightItalic);
    text("OVER", 740, height/2);
  } else {
  }
}

void gameoverClicks() {
   mode = INTRO;
}
