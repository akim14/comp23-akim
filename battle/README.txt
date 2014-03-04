By: Aromie Kim
CS login username: akim14
Dates: February 15-18, 2014
       February 27-March 3, 2014


LABS 3 and 4: The Battle for Ram Aras
Time taken: Roughly 14 hours in total


~Battlecruiser.py~
This class utilizes the Laser class as a module, keeping a list of Lasers. The battlecruiser has a set of keyboard-based controls. These controls enable it to
move fluidly across the screen (fluid, continuous movement is enabled by key-holding)
and also enable it to shoot a laser once the spacebar is pressed.
The battlecruiser moves at a set speed (dx and dy are both a value of 4, so the position of the battlecruiser changes by 4).
The battlecruiser's image asset is defined within the class. There is a loading-image function that includes exception handling when the provided image does not exist or could not be found/open.
When Battlecruiser.py is run via the command "python Battlecruiser.py", a 800x600 window is produced with a screen containing the battlecruiser on a black background. The battlecruiser can then be
controlled via the proper controls:
     Move up = Up key
     Move down = Down key
     Move left = Left key
     Move right = Right key
     Fire laser = Spacebar
     Quit = Escape button
At the moment, the battlecruiser can move out of the screen. 
*Added: The laser sound (laser.wav) was added so that whenever the Battlecruiser fires a laser, the sound would be played. 



~Laser.py~
This class is responsible for a laser sprite that moves vertically across the screen.
This sprite is not controllable by the user. 
The image to be loaded for this sprite is defined in the class. The loading-image function includes exception-handling.
The main creates a list of lasers of varying velocities. When Laser.py is run via the command "python Laser.py", a 800x600 window with a black screen will be made. A barrage of lasers will be displayed traveling vertically up the screen at different speeds (speeds determined by "randint").
When this class is used as a module by the Battlecruiser, each laser bolt moves at a set speed (dx is 0 and dy is 10, so it changes y-position by 10). When shot out, the laser bolt moves out from the center of the battlecruiser. The laser bolt is deleted (killed) when it travels off the screen.



~Enemy.py~
This class is responsible for the Enemy sprite, which moves around the screen with elastic collision and bounces off the wall.
The image to be loaded for this sprite is defined in the class. The loading-image function includes exception-handling.
When Enemy.py is run via the command "python Enemy.py" a 800x600 window with a white background will be made. Ten copies of the enemy will move around the screen and bounce against the walls at varying speeds.
When this class is used as a module by the game file, a list of Enemy sprites is made and an Enemy is appended to the list after a certain time period. Enemy sprites can move at a speed in the range of 1-4. Collision detection is checked between the Enemy sprite and the Battlecruiser sprite, and the Enemy sprite and the Laser sprite.
When the Enemy sprite collides with the Battlecruiser, the game is over.
When the Enemy sprite collides with a Laser (it gets hit), its image switches to a different specified image (laser_explosion.gif) and the sprite is killed and disappears from the screen. 



~game.py~
A file that is the game itself, containing the game loop and all the sprites. 
An 800x600 window is made. 
The background image that appears on the screen is "ram_aras.png." The background is meant to move vertically to provide a sidescrolling feel.
Within the game loop, collision detections are checked between sprites and appropriate functions are called when collisions do happen. Player input is also managed in this file, both one-tap key presses and key-holds. 
The score is displayed in green-colored font on the top-left corner and increases by 100 every time an Enemy is hit by a laser from the Battlecruiser.
When a Laser hits an Enemy, the Enemy's sprite image changes to "laser_explosion.gif" and then the sprite is duly dealt with (deactivated and removed).
When an Enemy hits a Battlecruiser, the Battlecruiser disappears, accompanied by an explosion sound (death_explode.wav), and the screen will display a blue "GAME OVER!" message. The player can escape the game window by hitting the Escape key.

Note: The scrolling background will scroll from the bottom of the image to the top of the image, but the program may stop drawing the image correctly at that point (at that point, everything on the screen, the sprites and the background, becomes blurry and poorly drawn). I made it so that when the background image has been fully scrolled to the top, the y-position of the background image resets to the very first position it was when the game first started, so the background image will be displayed, starting from the bottom, and start scrolling up again.
