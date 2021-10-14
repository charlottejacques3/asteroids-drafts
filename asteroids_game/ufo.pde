class Ufo extends GameObject {

  PVector direction;
  int shotTimer, threshold;

  Ufo() {
    loc = new PVector(random(0, width), random(0, height));
    v = new PVector(0, 1);
    direction = new PVector(0, -0.1);
    lives = 1;
    size = 160;
    shotTimer = 0;
    threshold = 80;
  }

  void show() {
    image(alien, loc.x, loc.y, size, size);
  }

  void act() {
    //if (ufoTimer > ufoThreshold) {
    super.act();
    shotTimer++;
    if (shotTimer > threshold) {
      myObjects.add(new UfoBullet(loc.x, loc.y, myShip.loc.x - loc.x, myShip.loc.y - loc.y, v));
      shotTimer = 0;
    }
    //}

    //check for bullets
    int i = 0;
    while (i < myObjects.size()) {
      GameObject o = myObjects.get(i);
      if (o instanceof ShipBullet) {
        if (dist (loc.x, loc.y, o.loc.x, o.loc.y) <= (size+o.size)/2) {
          o.lives = 0;
          lives = 0;
          ufoAlive = false;
        }
      }
      i++;
    }
  }
}
