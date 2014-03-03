#! /usr/bin/env python
# By: Aromie Kim
# Battlecruiser.py 
import pygame, os, sys
from pygame.locals import *
from random import randint
from Laser import Laser


class Battlecruiser(pygame.sprite.Sprite):
    ''' Battlecruiser sprite '''

    image_asset= "assets/battlecruiser.gif"
    laser_sound = "assets/laser.wav"
    death_sound = "assets/death_explode.wav"

    def load_sound(self, sound_name):
	try:
            sound = pygame.mixer.Sound(sound_name)
        except pygame.error, message:
            print "Cannot load sound: " + sound_name
            raise SystemExit, message
        return sound

	

    def load_image(self, image_name):
        try:
	    image = pygame.image.load(image_name)
	except pygame.error, message:
	    print "Unable to load image: " + image_name
	    raise SystemExit, message
	return image.convert_alpha()

 
  

    def __init__(self, screen, init_x, init_y, init_x_speed, init_y_speed):
	''' Create a battlecruiser moving at given speed '''
	pygame.sprite.Sprite.__init__(self)

	#Load image 
        self.screen = screen
	self.image = self.load_image(self.image_asset)
        self.image_w, self.image_h = self.image.get_size()

        #Define initial position of battlecruiser
        self.x = init_x
        self.y = init_y

	#Set initial speeds
	self.dx = init_x_speed
	self.dy = init_y_speed

        #The collision box
	self.rect = self.image.get_rect()
        self.rect.move(self.x, self.y)
	self.rect.topleft = (self.x, self.y)
	self.rect.bottomright = (self.x + self.image_w, self.y + self.image_h)
        
	#Create a list of lasers
        self.lasers = [] #Empty list of lasers for now

	#Make active	
        self.active = True 



    #Draw
    def draw(self):
	''' Draw out the sprite and lasers '''
	if self.active:
	    self.screen.blit(self.image, (self.x, self.y))
	
	for laser in self.lasers:
	    if laser.active:
		laser.draw()
	    else: 
		self.lasers.remove(laser)



    #Battlecruiser controls
    def update(self, action):
	''' Moving the sprite '''
        if action == "LEFT":
            self.x -= self.dx
        elif action == "RIGHT":
            self.x += self.dx
        elif action == "UP":
            self.y -= self.dy 
        elif action == "DOWN":
	    self.y += self.dy 
        elif action == "FIRE":
	    self.firelaser()
	    

	#Update lasers' positions as well
	for laser in self.lasers:
	    laser.update()

        #Move the collision box as well!
	self.rect.move(self.x, self.y)
	self.rect.topleft = (self.x, self.y)
	self.rect.bottomright = (self.x + self.image_w, self.y + self.image_h)	

	if self.active == False:
	   self.kill()



    #Firin' ma lazer 
    def firelaser(self):
	''' Add a laser to the list '''
	self.lasers.append(Laser(self.screen, self.x + self.image_w/2, self.y - 10, 0, 10))                
        #laser's dx is 0 (doesn't change x position), laser's dy is 10
        pewpew = self.load_sound(self.laser_sound)
        pewpew.play()



    def got_hit(self):
	self.active = False
	nooo = self.load_sound(self.death_sound)
	nooo.play()




if __name__ == "__main__":

    # Check if sound and font are supported
    if not pygame.font:
	print "Warning, fonts disabled"
    if not pygame.mixer:
	print "Warning, sound disabled"

    #Constants
    FPS = 50
    SCREEN_WIDTH, SCREEN_HEIGHT = 800, 600
    BACKGROUND_COLOR = (0, 0, 0) #black background

    #Set the speed at which battlecruiser moves
    x_speed = 3
    y_speed = 3

    #Initialize game
    pygame.init()
    screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), 0, 32)
    cruiser = Battlecruiser(screen, SCREEN_WIDTH/2, SCREEN_HEIGHT/2, x_speed, y_speed)
    done = False

    #Game loop
    while not done:
	screen.fill(BACKGROUND_COLOR) #Redraw background
        for event in pygame.event.get():
	    if event.type == pygame.QUIT: #For one-tap presses
               done = True
	       pygame.quit()
	       sys.exit()
	    elif event.type == KEYDOWN:
	       if event.key == K_ESCAPE: #Quit game
	          done = True
		  pygame.quit()
		  sys.exit()
	       elif event.key == K_SPACE:
		  cruiser.update("FIRE")

	#For keys that can be held, update cruiser depending on key
	keys = pygame.key.get_pressed()    
	if keys[K_LEFT]:
            cruiser.update("LEFT")
	elif keys[K_RIGHT]:
            cruiser.update("RIGHT")
        elif keys[K_UP]:
	    cruiser.update("UP")
	elif keys[K_DOWN]:
	    cruiser.update("DOWN")
	
	#Draw and update battlecruiser    
	cruiser.update("")
        cruiser.draw()
	pygame.display.flip()
