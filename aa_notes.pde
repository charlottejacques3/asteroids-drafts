/*
CRITERIA DOCUMENT: https://docs.google.com/document/d/1vk820pDyH5gs6qJOFwc1rkLp30oz4Dci32beIPJHoqY/edit
 
PROBLEMS:
- with the awkward shape of the monster, sometimes it doesn't lose lives properly (for the ship or the asteroids)
- the size variable has no actual use in the ship function, but i am using it to lose lives
- win code doesn't work, how should I do it?
- teleport code doesn't always work 

QUESTIONS
- in ship class where it resets after losing lives, should i write new PVector or do the teleport thing instead?
- how come the bullet and fire classes work when they haven't been added to the myObjects arraylist?
- should i make a separate class for ufo bullets, or just add parameters to the bullet function? if i did an arraylist variable thing like for the asteroids, i could likely make it work

TO DO:
- The Mode Framework
  - make gameover screen
- The UFO Class
  - set periodic appearance
  - figure out how to aim at ship
  - make it die when shot by ship bullet
- Ship Collisions
  - make the player lose lives when hit by a UFO bullet
  - create cooldown period after ship has been shot before it can be shot at again, represent this visually
- The Particle Class and Fire Class
  - create particle object
- Reset
  - reset all properties
 */
