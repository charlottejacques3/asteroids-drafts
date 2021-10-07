//keyboard commands
void keyPressed() {
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
  if (key == ' ') spaceKey = true;
}

void keyReleased() {
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == LEFT) rightKey = false;
  if (key == ' ') spaceKey = false;
}

//mouse clicks
void mousePressed() {
  if (mode == INTRO) introClicks();
  else if (mode == GAME) gameClicks();
  else if (mode == PAUSE) pauseClicks();
  else if (mode == GAMEOVER) gameoverClicks();
}
