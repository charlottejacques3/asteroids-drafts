class Ship extends GameObject {
  
  //instance variables
  PVector direction;
  int shotTimer, threshold;
  
  //constructor
  Ship() {
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    lives = 3;
    shotTimer = 0;
    threshold = 30;
  }
  
  //behaviour functions
  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(direction.heading());
    fill(255);
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }
  
  void act() {
    super.act();
    
    //limit speed
    if (v.mag() > 8) v.setMag(8);
    
    shotTimer++;
    
    //keyboard controls
    if (upKey) v.add(direction);
    if (downKey) v.sub(direction);
    if (!upKey && !downKey) v.mult(0.95); //slow down
    if (leftKey) direction.rotate(-radians(5));
    if (rightKey) direction.rotate(radians(5));
    //if (!leftKey && !rightKey) direction.rotate(
    
    if (spaceKey && shotTimer > threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
}
