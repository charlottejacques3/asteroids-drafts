class UfoBullet extends GameObject {

  int timer;

  UfoBullet() {
    timer = 60;
    lives = 1;
    loc = new PVector(myUfo.loc.x, myUfo.loc.y);
    //v = new PVector(myUfo.direction.x, myShip.direction.y);
    v.add(myUfo.v);
    v.setMag(10);
    size = 5;
  }

  void show() {
    fill(255);
    circle(loc.x, loc.y, size);
  }

  void act() {
    super.act();
    timer--;
    if (timer == 0) lives = 0;
  }
}
