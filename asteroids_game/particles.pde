class Particle extends GameObject {
  
  float t;

  Particle(float x, float y) {
    lives = 1;
    loc = new PVector(x, y);
    t = random(200, 255);
    size = int(random(2, 13));
    v = new PVector(0, 1);
    v.rotate(random(0, TWO_PI));
  }

  void show() {
    fill(142, 99, 73, t);
    circle(loc.x, loc.y, size);
  }

  void act() {
    super.act();
    t-=5;
    if (t <= 0) lives = 0;
  }
}
