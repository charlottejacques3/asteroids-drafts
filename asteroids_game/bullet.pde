class Bullet extends GameObject {

  //instance variables
  int timer;

  //constructor
  Bullet() {
    timer = 60;
    lives = 1;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    v = new PVector(myShip.direction.x, myShip.direction.y);
    v.add(myShip.v); //add ship velocity to bullet velocity to be true to physics
    v.setMag(10);
    size = 5;
  }

  //behaviour functions
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
