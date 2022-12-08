hello!

    What is the purpose of the game?
    -Kill aliens
    -Don't let them reach the bottom
    What element(s) are controlled by the player?
    -The player movement and firing
    What element(s) are controlled by the computer?
    -Alien groups
    How does the player control their element.
    -Keyboard
    How do the non-player controlled elements behave (movement, positions, randomness, etc)
    -Reach x-radius<=0 or x+radius=>width
    move down screen
    Reverse xdir
    repeat
    
    fire randomly
    
    If you were to program this, what classes would you write?
    Class Projectile
    Class Obstruction
    Class Invader (or interface for diff invader types?)
    Class Player
    Class VFX
    
    Possibly an invader group class? Not sure
    
    If you were to program this, would you use an array for some parts? What kind of array? What would you be storing in it?
    store all the enemies for collision detection
