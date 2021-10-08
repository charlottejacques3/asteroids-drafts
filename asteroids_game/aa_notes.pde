/*
CRITERIA DOCUMENT: https://docs.google.com/document/d/1vk820pDyH5gs6qJOFwc1rkLp30oz4Dci32beIPJHoqY/edit

NOTES:
- theme is monsters (asteroids) and aliens (UFOs)
- kind of olive/army green background colour for grass/ground, corresponding colour palette, gif and fonts
 
PROBLEMS:
- with the awkward shape of the monster, sometimes it doesn't lose lives properly (for the ship or the asteroids)
- the size variable has no actual use in the ship function, but i am using it to lose lives
- win code doesn't work, how should I do it?
- do i need to write new PVector every time I change the location? cause it doesn't work otherwise

TO DO:
- The Mode Framework
  - make tactile buttons
  - make pause screen
  - make gameover screen
- The UFO Class
  - create + connect UFO class
  - create UFO design
  - set periodic appearance
  - figure out how to aim at ship
  - make it die when shot by ship bullet
- Ship Collisions
  - make the player lose lives when hit by a UFO bullet
  - create cooldown period after ship has been shot before it can be shot at again, represent this visually
- The Particle Class and Fire Class
  - figure out how to do transparency
  - create fire object
  - create particle object
  - should they be connected to GameObject?
- Teleport
  - decide on key to use (M for move, T for teleport, S for save?)
  - make it move, check whether it is close to any asteroid using a similar while loop to the colour game
  - create + show cooldown timer
- Reset
  - reset all properties
  - change screen from GAMEOVER to INTRO
- Other Tasks
  - comment in code explaining the game (monsters and aliens)
 */
