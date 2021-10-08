class Ship extends GameObject {

  PVector direction;
  int shotTimer, threshold;

  Ship() {
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    lives = 3;
    shotTimer = 0;
    threshold = 30;
  }

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
    if (upKey) {
      v.add(direction);
      myObjects.add(new Fire());
    }
    if (downKey) {
      v.sub(direction);
    }
    if (!upKey && !downKey) v.mult(0.95); //slow down
    if (leftKey) direction.rotate(-radians(5));
    if (rightKey) direction.rotate(radians(5));
    //if (!leftKey && !rightKey) direction.rotate(

    if (spaceKey && shotTimer > threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }

    //make it lose lives
    int i = 0;
    while (i < numAsteroids) {
      if (myAsteroids[i].lives != 0 && dist(loc.x, loc.y, myAsteroids[i].loc.x, myAsteroids[i].loc.y) < (size+myAsteroids[i].size)/2) {
        lives--;
        loc = new PVector(width/2, height/2);
        v = new PVector(0, 0);
        direction = new PVector(0, -0.1);
        //ADD COOLDOWN PERIOD + VISUAL REPRESENTATION
      }
      i++;
    }
    
    //teleport
    if (tKey) {
      loc = new PVector(random(size/2, width-size/2), random(size/2, height-size/2));
      while (dist(loc.x, loc.y, 
      //while (
    }
  }
}
