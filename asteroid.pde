class Asteroid extends GameObject {

  //initial constructor
  Asteroid() {
    loc = new PVector(random(0, width), random(0, height));
    v = new PVector(0, 1);
    v.rotate(random(0, TWO_PI));
    lives = 1;
    size = 160;
  }

  //constructor after hit
  Asteroid(int s, float x, float y) {
    lives = 1;
    loc = new PVector(x, y);
    v = new PVector(0, 1);
    v.rotate(random(0, TWO_PI));
    size = s;
  }

  void show() {
    image(monster, loc.x, loc.y, size, size);
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
          if (size > 40) {
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          }
        }
      }
      i++;
    }

  }
}
