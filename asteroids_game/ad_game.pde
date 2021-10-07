void game() {
  background(0);

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
}

void gameClicks() {
  
}
