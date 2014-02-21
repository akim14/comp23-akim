#! /usr/bin/env python
# By: Aromie Kim
# Laser.py 
import pygame, os, sys
from pygame.locals import *
from random import randint

class Laser(pygame.sprite.Sprite):
    ''' The laser sprite! '''

    #This is the correct image to load
    image_asset = "assets/laser.gif"

    def load_image(self, image_name):
	try:
	    image = pygame.image.load(image_name)
	except pygame.error, message:
	    print "Unable to load image: " + image_name
            raise SystemExit, message
        return image.convert_alpha()



    def __init__(self, screen, init_x, init_y, init_x_speed, init_y_speed):
	''' Create laser moving at given speed '''
	pygame.sprite.Sprite.__init__(self)
        self.screen = screen

	#Open the image
	self.image = self.load_image(self.image_asset)

	#Set the collision box
        self.rect = self.image.get_rect()
        self.rect.x = init_x
        self.rect.y = init_y

	#Set position of laser bolt
	self.x = init_x
        self.y = init_y
 
	#Get the laser bolt's width and height
	self.image_w, self.image_h = self.image.get_size()

        #Default speed
        self.dy = init_y_speed
	self.dx = init_x_speed

	#Set to active
	self.active = True



    def draw(self):
	''' Draw the sprite '''
	draw_pos = self.image.get_rect().move(self.x - self.image_w / 2, self.y-self.image_h / 2)

        if self.active:
            self.screen.blit(self.image, draw_pos)



    def update(self):
	''' Move the sprite and its collision box '''
	self.y -= self.dy
        self.rect.y += self.dy
        self.rect.move(self.rect.x, self.rect.y)
  
        if self.y <= 0:  #If laser bolt moves off the screen, delete it
	    self.active = False
	    self.kill()





if __name__ == "__main__":
    # Check if sound and font are supported
    if not pygame.font:
	print "Warning, fonts disabled"
    if not pygame.mixer:
	print "Warning, sound disabled"

    #Constants
    FPS = 50
    SCREEN_WIDTH, SCREEN_HEIGHT = 800, 600
    BACKGROUND_COLOR = (0, 0, 0)

    #Initialize pygame
    pygame.init()
    screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), 0, 32)
 
    #Create list of sprites
    lasers = []

    #Game loop
    while True:
        
        #Add a laser
        lasers.append(Laser(screen, randint(1, SCREEN_WIDTH), 550, 0, randint(1,10)))

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
	        sys.exit()
    

    	#Redraw background
    	screen.fill(BACKGROUND_COLOR)

    	#Update and redraw sprite
        for laser in lasers:
    	    laser.draw()
    	    laser.update()

    	#Draw the sprite
    	pygame.display.flip()


     

