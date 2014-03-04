#! /usr/bin/env python
# By: Aromie Kim
# Enemy.py 
import pygame, os, sys
from pygame.locals import *
from random import randint


class Enemy(pygame.sprite.Sprite):
    ''' The enemy sprite '''

    #The two images for the enemy
    image_asset = "assets/mutalisk.gif"
    dead_image = "assets/laser_explosion.gif"

    def load_image(self, image_name):
	''' Load the sprite image '''
        try:
	    image = pygame.image.load(image_name)
	except pygame.error, message:
	    print "Unable to load image: " + image_name
	    raise SystemExit, message
	return image.convert_alpha()



    def __init__(self, screen, init_x, init_y, init_x_speed, init_y_speed):
	pygame.sprite.Sprite.__init__(self)

	#Load image 
        self.screen = screen
	self.image = self.load_image(self.image_asset)
        self.image_w, self.image_h = self.image.get_size()

        #Define initial position
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

	#Make active	
        self.active = True 

        #Set "lasered" to false
        self.lasered = False


 
    #Enemy movement
    def update(self):
	''' Move the sprite '''
        if ((self.x + self.dx) <= 0):
	    self.dx = self.dx * -1
        if ((self.x + self.dx) >= self.screen.get_size()[0]):
	    self.dx = self.dx * -1
        if ((self.y + self.dy) <= 0):
	    self.dy = self.dy * -1
        if ((self.y + self.dy) >= self.screen.get_size()[1]):
	    self.dy = self.dy * -1
        
	self.x = self.x + self.dx
	self.y = self.y + self.dy

        #Move the collision box as well!
	self.rect.move(self.x, self.y)
	self.rect.topleft = (self.x, self.y)
	self.rect.bottomright = (self.x + self.image_w, self.y + self.image_h)	
 
        #Avoid going off screen
        if self.x <= 0 or self.x >= self.screen.get_width() - self.image_w:
            self.dx = -1 * self.dx
        if self.y <= 0 or self.y >= self.screen.get_height() - self.image_h:
            self.dy = -1 * self.dy

 
	
    #Draw
    def draw(self):
	''' Draw out the sprite if it is alive'''
        if self.lasered == False:
	    self.screen.blit(self.image, (self.x, self.y))

	#If enemy is dead/inactive, kill the sprite
	if self.active == False:
	    self.kill()  



    #When enemy is hit by laser
    def is_lasered(self):
	''' Change sprite image and deactivate enemy '''
        self.image = self.load_image(self.dead_image)
        self.screen.blit(self.image, (self.x, self.y))
	self.lasered = True
	self.active = False

	


if __name__ == "__main__":
    
    #Check if sound is supported:
    if not pygame.mixer:
	print "Warning, sound disabled"


    #Constants
    FPS = 50
    SCREEN_WIDTH, SCREEN_HEIGHT = 800, 600
    BACKGROUND_COLOR = (255, 255, 255) #white background
    MAX_SPEED = 5
    
    #Initialize pygame
    pygame.init()
    screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), 0, 32)
    
    
    #Create a list of the enemy sprites
    horde = []
    for i in range(10):
        horde.append(Enemy(screen, randint(1, SCREEN_WIDTH), randint(1, SCREEN_HEIGHT), randint(1, MAX_SPEED), randint(1, MAX_SPEED))) 


    #Game loop
    while (True):

        for event in pygame.event.get():
	    if event.type == pygame.QUIT:
   	        pygame.quit()
		sys.exit()
	    elif event.type == KEYDOWN:
		if event.key == K_ESCAPE:
		   pygame.quit()
		   sys.exit()
        
        #Redraw
        screen.fill(BACKGROUND_COLOR)

	#Update and redraw all sprites
        for minion in horde:
	    minion.update()
	    minion.draw()

        #Display
        pygame.display.flip()
