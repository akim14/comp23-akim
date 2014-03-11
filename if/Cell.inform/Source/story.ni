"Cell" by "Aromie Kim"

After printing the banner text when not requesting the story file version : say "[line break]You open your eyes and see nothing but darkness. You try to remember what happened, why you're here, but thinking alone makes your head throb."

The Dark Cell is a room. "The air feels oddly heavy. The dark is unsettling."
Understand "left" as west. Understand "front" as north.

The gated cell door is an open door. It is north of the Dark Cell and south of the Hallway. The initial appearance of the gated cell door is "An open, gated door stands before you."

The Bathroom is a room. The description is "A dirty bathroom with a putrid smell. You'd rather not stay here for long. You can return to the Dark Cell by going right."
The initial appearance of the toilet is "A nasty toilet sits in the corner."
The description of the toilet is "The water is discolored and the porcelain is nastily yellow. Nothing exciting and nothing you'd like to see." The toilet is in the bathroom.
After examining the toilet:
    increase the score by 2.
The rat is an animal in the Bathroom. The initial appearance of the rat is "A rat dozes under the bowl." The description is "Something rectangular is in its mouth. Maybe you can get it to drop it somehow?"

Understand "wake [some animal]" as waking.
Instead of waking the rat:
     say "The rat squeals and opens its mouth, dropping a card."
After waking the rat:
     increase the score by 5.
The initial appearance of the card is "The rat appears to be holding something rectangular in its mouth."
The description of the card is "A small, dirty, green card. It says the words 'ESCAPE NOW' along with the number 11-5-19."  The card is in the Bathroom.

The bathroom door is a door. It is west of the Dark Cell and east of the Bathroom. The initial appearance is "A door with a cracked sign saying 'BATHROOM' is at your left."

The Hallway is a room. The description is "A dimly-lit hallway. There is complete darkness to your left and right."

The white door is a door. The initial appearance is "A white door stands in front of you. A sign on it says 'Enter.'"
The white door is north of the Hallway and south of the Chamber.

The Chamber is a room. The description is "A brightly lit room. A small camera hangs nearly thirteen feet above you. The floor is spotless."
The Voice is a man in the Chamber.
After going in the Chamber:
   try the player looking;
      if the player is in the Chamber for the first time
      begin;
         say "Suddenly, the room echoes with the sound of a tinny voice. 'Greetings. You managed to escape your cell. Can you say 'Hello' so I know that you can hear me?'";
       end if;

Understand "voice" as the Voice.
Understand "greet [someone]" as greeting. Greeting is an action applying to one thing.
Instead of greeting Voice:
     say "'Fantastic. I'll be watching you progress through this place. Now look to your left. I've opened a room for you."

The Equipment Area is a room. The Equipment Area is west of the Chamber and west of the Lab. The description is "The room is entirely trashed. Papers are scattered all over the floor. West is another room, lit in red." 
The initial appearance of the X-ray is "You see some photos that resemble X-rays, but they appear to be burnt." The description of the X-ray is "The word 'Subject 46' is written on the bottom left corner. Upon closer inspection, it looks as if the X-ray is one of a...skull?"
The X-ray is in the Equipment Area.
After taking the X-ray:
     say "The Voice returns: 'Enjoying the photos? They're quite nice.'" 

The desk is in the Equipment Area. The initial appearance is "A deplorable desk is here." The description of the desk is "Messy beyond belief. Under a lamp, you see words etched onto the surface of the desk: 'IS THIS A GAME TO YOU?'"
After examining the desk:
     increase the score by 4.

Sylvester is an animal in the Equipment Area. It wears a collar.  The initial appearance of Sylvester is "A bedraggled white cat sits snugly on top of a messy desk. A collar is around its neck. It stares at you with beady yellow eyes. The Voice speaks: 'That's Sylvester. He's quite a friendly cat. He enjoys a nice touch on the head.'"
After touching Sylvester:
     say "Sylvester seems relaxed and complacent. The collar is right under your hand. Maybe you can take a closer look at it."

The description of the collar is "It has the letters '--MORY LABS.' Some letters are blurred out."
After examining the collar:
     increase the score by 5.

The Red Area is a room. It is west of the Equipment Area and south of the Lab. The description is "Dozens of photos of men and women alike hang on a wire in the air. To the north you can see an entrance to a brightly lit room."

The photo is in the Red Area. The initial appearance of the photo is "There is a photo within reach." The description is "This photo shows two people sitting at a table in a simple room. One person wears a white coat, his back to the camera. The other, a middle-aged woman, stares at him with an unnaturally blank look. On the bottom of the photo is a message: 'Subject 46: Exhibiting failure to comprehend.'"
After examining the photo:
     increase the score by 5.

After going in the Red Area:
   try the player looking;
      if the player is in the Red Area for the first time
      begin;
         say "Sylvester scampers into the room and looks at you meaningfully. 'He seems to take a liking to you,' the Voice remarks.";
       end if;

The Lab is north of the Red Area. The description of the Lab is "The room is huge and brightly lit."

After going in the Lab:
    try the player looking;
       if the player is in the Lab for the first time
       begin;
	  say "Sylvester hisses and begins to pace actively around the room";
       end if;

The cage is in the Lab. The initial appearance of the cage is "A series of cages line the walls, all open." The description is "Looking into some cages, you see tufts of different fur inside. Were they from different animals?"
After examining the cage:
    increase the score by 3.

The maze is in the Lab. The initial appearance of the maze is "There is a small, hand-crafted, wooden maze on a table." The description is "It doesn't look too hard to solve. It's just the right size for a small animal."

The heavy door is a door. It is locked. The heavy door is east of the Lab and west of the Experimental Room. The initial appearance of the heavy door is "To the left is a heavy, locked door that says 'DO NOT ENTER.' You can hear something behind it: is that breathing?" The description is "It's locked shut and is quite heavy. 'Brilliant scientists, but dumb as an acorn. They say most fools don't keep a key more than 20 feet away from where the door is,' the Voice speaks, somewhat dryly."

The cabinet is in the Lab. The initial appearance of the cabinet is "A black cabinet stands near the table." The cockroach is an animal in the Lab. The initial appearance is "A cockroach sits placidly on the cabinet surface." The description of the cockroach is "Ew. You'd rather not touch the cabinet with that thing running around. 'Didn't think THAT would stop you,' the Voice remarks."

Understand "squash [some animal]" as killing. Killing is an action applying to one thing.
Instead of killing cockroach:
     say "You smash the cockroach with your foot. The cabinet is safe for observation!" 

A key is a thing. The key unlocks the heavy door.
Instead of opening the cabinet for the first time:
    move the key to the Lab;
    say "You found the key! 'Well done,' the Voice praises. 'Take the key and you should be able to go on your way.'"

Understand "unlock [something]" as unlocking. Unlocking is an action applying to one thing. 

Check unlocking:
        if the noun is not a door, say "[The noun] is not something you can unlock." instead;
        if the noun is unlocked, say "[The noun] is already unlocked." instead;
        if the player carries the key and the player is in the Lab, try unlocking the noun with the key instead;

Carry out unlocking with the key:
    now the noun is unlocked.

The Experimental Room is a room. The description is "An intimidatingly large chair sits in the center of the room. The walls are adorned with pictures of words and drawings."

The Stranger is a man in the Experimental Room. Understand "man" as the Stranger. The initial appearance of the Stranger is "You realize the quiet breathing is from a man sitting in the chair. He does not look at you and wears a blank expression."
The document is a thing. The photo is a thing.
Instead of examining the Stranger: 
    move the document to the Experimental Room;
    move the photograph to the Experimental Room;
    say "A document and photograph are crumpled in the man's hand."

The description of the document is "It's an official document:
 'SUBJECT NAME: 14 (John Akins)
  [line break]Age: 43
  [line break]Length of Stay: 10 months

  [line break]Subject 14 arrived at the facility as a healthy middle-aged male with average memory skills. He performed well in the maze tasks and made few errors in recollection games.
  [line break]After being subjected to the treatment, Subject 14 exhibited gradual memory deterioration, as expected, but at a slower rate than the animals. He made errors in the mazes that he had been trained to do for months. 
  [line break]By month 4, his short-term memory worsened to a time capacity of roughly 13 seconds. He struggled in recognizing the faces of his experimenters.
  [line break]By month 7, he failed to recognize a photo of himself, as well as his family members. 
   [line break]By month 9, he fiercely demanded to be let out of the facility. We tacitly refused. There is a reason why the experiment went awry, and he is a valuable subject in our attempts to fix the issue. For the moment, we will ask him to continue his participation in the memory tasks. Perhaps we may have to expand the types of tasks our subjects perform to get to the heart of the issue.'"

The description of the photograph is "A crumpled photo of the man (looking considerably younger), a woman, and a child at what seems to be a beach. They are all smiling. [line break] 'Beautiful family,' the Voice says quietly. 'It's upsetting he forgot them all.'"
After examining the photograph:
    increase the score by 3.

The drawing is in the Experimental Room. The initial appearance of the drawing is "One drawing is not of an object or person" The description of the drawing is "You examine a drawing of a map. It looks to be a map of where you are. Tally marks are drawn under the map in pencil. 'That's the map of this facility,' the Voice explains. 'As you can see, it's not very big. It's rather obscure. Which is what they wanted.'" 

The Maze is a room. The Maze is north of Experimental Room and south of the Exit. The description is 