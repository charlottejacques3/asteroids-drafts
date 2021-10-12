void game() {
  background(green);

  //get rid of objects
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
  
  //maintain asteroids array
    int r = 0;
    while (r < myAsteroids.size()) {
      Asteroid a = myAsteroids.get(r);
      
      a.loc.add(a.v);
    //when going off the screen
    if (a.loc.y < - a.size/2 - 10) a.loc.y = height + a.size/2 + 10;
    if (a.loc.y > height + a.size/2 + 10) a.loc.y = - a.size/2 - 10;
    if (a.loc.x < - a.size/2 - 10) a.loc.x = width + a.size/2 + 10;
    if (a.loc.x > width + a.size/2 + 10) a.loc.x = - a.size/2 - 10;
      if (a.lives == 0) myAsteroids.remove(r);
      r++;
    }
  rectMode(CENTER);
  noStroke();
  fill(brown);
  rect(width/2, 25, width, 50);
  fill(255);
  textFont(rightItalic);
  textSize(30);
  text("lives: " + myShip.lives, width/3, 25);

  //pause button
  rectMode(CORNER);
  strokeWeight(2);
  if (mouseX > width-50 && mouseX < width-20 && mouseY > 10 && mouseY < 40) stroke(0);
  //rect(width-30, 25, 5, 30);
  //rect(width-45, 25, 5, 30);
  rect(width-50, 10, 5, 30);
  rect(width-35, 10, 5, 30);

  //teleport timer
  rectMode(CENTER);
  stroke(255);
  strokeWeight(4);
  noFill();
  rect(width*2/3, 15, 175, 10); //outline
  rectMode(CORNER);
  fill(255);
  rect(width*2/3-87.5, 10, (teleTimer/2), 10); //timer
  textSize(15);
  if (teleTimer >= 350) fill(0, 255, 0);
  else fill(255);
  text("teleport", width*2/3, 35);

  //lose game
  if (myShip.lives == 0) mode = GAMEOVER;


  //win game
  if (myAsteroids.size() == 0) mode = GAMEOVER;
}

void gameClicks() {
  //pause
  if (mouseX > width-50 && mouseX < width-20 && mouseY > 10 && mouseY < 40) mode = PAUSE;
}
