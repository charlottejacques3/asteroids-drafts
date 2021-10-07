class GameObject {
  PVector loc, v;
  int lives, size;
  
  GameObject() {
    
  }
  
  void show() {
    
  }
  
  void act() {
    loc.add(v);
    
    //when going off the screen
    if (loc.y < -50) loc.y = height + 50;
    if (loc.y > height + 50) loc.y = -50;
    if (loc.x < -50) loc.x = width + 50;
    if (loc.x > width + 50) loc.x = -50;
  }
}
