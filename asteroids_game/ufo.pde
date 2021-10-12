class Ufo extends GameObject {

  Ufo() {
    loc = new PVector(random(0, width), random(0, height));
    v = new PVector(0, 1);
    lives = 1;
    size = 160;
  }

  void show() {
    image(alien, loc.x, loc.y, size, size);
  }

  void act() {
    super.act();
    
    //check for bullets
    int i = 0;
    while (i < myObjects.size()) {
      GameObject o = myObjects.get(i);
      if (o instanceof Bullet) {
        if (dist (loc.x, loc.y, o.loc.x, o.loc.y) <= (size+o.size)/2) {
          o.lives = 0;
          lives = 0;
        }
      }
      i++;
    }
  }
}
