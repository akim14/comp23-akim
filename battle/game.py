#! /usr/bin/env python
# By: Aromie Kim
import pygame, os, sys
from pygame.locals import *
from random import randint
from Laser import Laser
from Enemy import Enemy
from Battlecruiser import Battlecruiser 


if __name__ == "__main__":

    #Check if sound is supported:
    if not pygame.mixer:
	print "Warning, sound disabled"

    #Constants
    FPS = 50
    SCREEN_WIDTH, SCREEN_HEIGHT = 800, 600
    
    #Initialize pygame
    pygame.init()
    screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), 0, 32)

    #Set the background image
    BACKGROUND = pygame.image.load("assets/ram_aras.png").convert_alpha()
    bg_width, bg_height = BACKGROUND.get_size()
    bg_x = 0
    bg_y = (bg_height - SCREEN_HEIGHT) * -1
    bg_dy = 0.4 #Rate at which background scrolls

    #Set up battlecruiser sprite, moves position by 
    cruiser = Battlecruiser(screen, SCREEN_WIDTH/2, SCREEN_HEIGHT/2, 3, 3)

    #Set up score
    score = 0

    #Set up list of enemies
    enemies = []
    pygame.time.set_timer(USEREVENT + 1, 4000)
    
    #Set up initial state of game
    game_over = False
    scrolling = True


#Game loop
while True:    	
    while not game_over:

	if (bg_y >= 0) and scrolling == True:
	    scrolling = False
	    bg_y = (bg_height - SCREEN_HEIGHT) * -1
	else:
	    bg_y += bg_dy	
        
	draw_pos = BACKGROUND.get_rect().move(0, bg_y)
	screen.blit(BACKGROUND, draw_pos)
    

	#Display the score
	font = pygame.font.Font(None, 28)
        scorekeeper = font.render("Score: " + str(score), 1, (0, 204, 0))
        screen.blit(scorekeeper, (20, 50))


	#Deal with collisions and updating & drawing enemies
        for enemy in enemies:
            if pygame.sprite.collide_rect(enemy, cruiser):
		game_over = True
		cruiser.got_hit()
	        break
	    for laser in cruiser.lasers:
	        if pygame.sprite.collide_rect(enemy, laser):
		    enemy.is_lasered()
		    enemies.remove(enemy)
		    score = score + 100
		    break
            enemy.update()
	    enemy.draw()

        #Update and draw battlecruiser
        cruiser.update("")
        cruiser.draw()

        pygame.display.flip()
    
        #One-tap user events
        for event in pygame.event.get():
	    if event.type == pygame.QUIT: #For one-tap presses
	        pygame.quit()
	        sys.exit()
	    elif event.type == KEYDOWN:
	        if event.key == K_ESCAPE: #Quit game
		    pygame.quit()
		    sys.exit()
	        elif event.key == K_SPACE:
                    cruiser.update("FIRE")
	    elif event.type == USEREVENT + 1:
                enemies.append(Enemy(screen, randint(1, SCREEN_WIDTH), SCREEN_HEIGHT/15, randint(1, 4), randint(1, 4)))
        	  

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

    
    #When game is over, print game-over message
    font = pygame.font.Font(None, 100)
    ending = font.render("GAME OVER!", 1, (0, 102, 204))
    screen.blit(ending, (SCREEN_WIDTH/4, SCREEN_HEIGHT/3))
    pygame.display.update()

    #After game is over and player wishes to exit window with key-tap
    for event in pygame.event.get():
	if event.type == pygame.QUIT: #For one-tap presses
	    pygame.quit()
	    sys.exit()
	elif event.type == KEYDOWN:
	        if event.key == K_ESCAPE: #Quit game
		    pygame.quit()
		    sys.exit()
