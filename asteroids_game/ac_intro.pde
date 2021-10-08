void intro() {
  //background(0);
  //gif
  image(gif[frame], 0, 0, width, height);
  frame++;
  if (frame >= gifLength) frame = 0;
  
  
  fill(0, 255, 0);
  textFont(leftItalic);
  text("MONS", 460, 350);
  text("& AL", 475, 450);
  textFont(rightItalic);
  text("TERS", 740, 350);
  text("IENS", 725, 450);
  println("hello, this is the intro screen :)");
}

void introClicks() {
  mode = GAME;
}
