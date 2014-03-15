"Cell" by "Aromie Kim"

After printing the banner text when not requesting the story file version : say "[line break]You open your eyes and see nothing but darkness. You try to remember what happened, why you're here, but thinking alone makes your head throb. Your body shivers as you feel the sudden urge to explore."

The maximum score is 58.

The initial appearance of a door is usually "[An item described] leads [if the other side of the item described is visited] to [the other side][otherwise][direction of the item described from the location][end if]." 


[The Dark Cell]
The Dark Cell is a room. "The air feels oddly heavy. The dark is unsettling. A bed is at the corner. A small window sheds some light."
Understand "left" as west. Understand "front" as north. Understand "right" as east.

The table is in the Dark Cell. The initial appearance of the table is "A small table sits beside the bed."

The candy bar is edible. The candy bar is on the table. 
Instead of eating the candy bar:
	say "You aren't particularly hungry, but you unwrap the candy bar and eat it. The chocolate is just the right amount of sweet. You gain some much needed, post-sleep energy.";
	increase the score by 2.

The yellow door is a door. The yellow door is west of the Dark Cell and east of the Bathroom. 

The gated door is an open door. It is north of the Dark Cell and south of the Hallway. 

[The Bathroom]
The Bathroom is a room. The description is "A dirty bathroom with an odd smell. The tiles are mucky. You'd rather not stay here for long."
The initial appearance of the toilet is "A nasty toilet sits in the corner."
The description of the toilet is "The water is discolored and the porcelain is nastily yellow. Obviously, plumbing and housecleaning hasn't been around for a while. Nothing exciting and nothing you'd like to see." The toilet is in the bathroom.
After examining the toilet:
    increase the score by 2.

[The Rat in the Bathroom]
The rat is an animal in the Bathroom. The initial appearance of the rat is "A large rat is dozing under the toilet bowl." The description is "The rat has its eyes puckered shut. It's fast asleep. Something rectangular is in its mouth. Maybe you can get it to drop it somehow?"

The card is a thing. The description of the card is "A small, dirty, green card. It says the words 'REMEMBER' along with the number 11-5-19." 

Understand "wake [some animal]" as waking.
Instead of waking the rat:
     say "The rat squeals and opens its mouth, dropping a card.";
      move the card to the Bathroom;
      increase the score by 5.


[The Hallway]
The Hallway is a room. The description is "A dimly-lit hallway. There is complete darkness to your left and right and you feel a chill at the unsettling emptiness. North is an open entryway."


[The Chamber]
The Chamber is a room. The Chamber is north of the Hallway. The description is "A brightly lit room that is white as snow. A large TV sits in the corner, along with a few chairs. Some coffee tables sit nearby. A small camera hangs nearly thirteen feet above you. The floor is spotless."
The Voice is a man in the Chamber. The initial appearance of the Voice is "The camera beeps to life. It swivels and points down to you. You see the lens readjusting, focusing."
After going in the Chamber:
   try the player looking;
      if the player is in the Chamber for the first time
      begin;
         say "Suddenly, the room echoes with the sound of a tinny voice. It sounds somewhat muffled, hidden behind an artificial tone. 'Hello. You finally woke up, I see. Hope you had adequate sleep. Can you give me a greeting so I know that you can hear me?'";
       end if;

[Voice]
Understand "voice" as the Voice.
Understand "greet [someone]" as greeting. Greeting is an action applying to one thing.
Instead of greeting Voice:
     say "The camera whirs. 'Fantastic. I'll be watching you progress through this place. You want to explore, no? Now go to your left. There's a room there.'"


[The Equipment Area]
The Equipment Area is a room. The Equipment Area is west of the Chamber and west of the Lab. The description is "The room is entirely trashed. Papers are scattered all over the gray floor. Westward you can see another room, lit in an ominous red color." 
The initial appearance of the trolley is "A lone trolley sits against the wall." The description of the trolley is "There are a few pencils, pens, a clipboard, and what looks to be...a map of the skull, with some of its parts marked in red X's."


The initial appearance of the X-ray is "You see some photos that resemble X-rays, but they appear to be burnt." The description of the X-ray is "The word 'Subject 46' is written on the bottom left corner. Upon closer inspection, it looks as if the X-ray is one of a...skull?"
The X-ray is in the Equipment Area.
After examining the X-ray:
     increase the score by 4;
     say "The Voice returns: 'The human brain is an amazing thing. But, like most amazing things, it likely should not be probed.'".

The desk is in the Equipment Area. The initial appearance is "A deplorable desk is here." The description of the desk is "Messy beyond belief. Under a lamp, you see words etched onto the surface of the desk: 'IS THIS A GAME TO YOU?'"
After examining the desk:
     increase the score by 4.


[Sylvester in the Equipment Area]
Sylvester is an animal in the Equipment Area. It wears a collar. The initial appearance of Sylvester is "A bedraggled white cat sits snugly on top of a messy desk. A collar is around its neck. It stares at you with beady yellow eyes. [line break]'That's Sylvester.' You jump, startled, as you hear the artificial Voice echo in the room you're in. 'He's quite a friendly cat. He enjoys a nice touch on the head.'" 
After touching Sylvester:
     say "Sylvester seems relaxed and complacent. His collar is right under your hand. Maybe you can take a closer look at it."

The description of the collar is "It has the letters '--MORY LABS.' Some letters are blurred out. The initials 'S.W.' are scrawled on it."
After examining the collar:
     increase the score by 5.

Instead of taking the collar:
     say "Sylvester meows and begins to roughly scratch his neck."

[The Red Room]
The Red Room is a room. It is west of the Equipment Area and south of the Lab. The description is "Dozens of photos of men and women alike, from young to old, hang on a wire in the air. This is a photo-developing room, it seems. To the north you can see an entrance to a brightly lit room."

After going in the Red Area:
   try the player looking;
      if the player is in the Red Area for the first time
      begin;
         say "Sylvester scampers into the room and looks at you meaningfully. 'He seems to take a liking to you,' the Voice remarks. Sylvester turns and faces the entrance you just came from, grooming himself.";
       end if;

The photo is in the Red Room. The initial appearance of the photo is "There is a photo within reach, dangling precariously from a clip on the wire." The description is "This photo shows two people sitting at a table in a simple room. One person wears a white coat, his back to the camera. The other, a middle-aged woman, stares at him with an unnaturally blank look. On the bottom of the photo is a message: 'Subject 46: Exhibiting failure to recognize her experimenter of 10 months.'"
After examining the photo:
     increase the score by 5.
After taking the photo:
     remove the photo from play.

[The mouse in the Red Room]
The mouse is an animal in the Red Room. The initial appearance of the mouse is "Out of the corner of your eye, you see a white mouse nibbling at something near the wall." The description of the mouse is "It has something in its paws...your feline friend hasn't noticed it yet."

deadmau5 is a number variable. deadmau5 is 0.

The brochure is a thing. The description of the brochure is "It's been bitten through badly, but on the cover you can make out a picture of a nice-looking, white building. Inside, you can read some of the words: 'new technology--breakthr--gh treatment--mem--'.
[line break] It's hopeless. The mouse had done a thorough job making the brochure unreadable."
After reading the brochure:
     increase the score by 4.

Understand "point at [something]" as pointing. Pointing is an action applying to one thing.

Instead of pointing the mouse:
     say "You nudge Sylvester with your foot, earning a growl as he looks over his shoulder at you. You quickly stab a finger at the mouse, and Sylvester's eyes widen and he immediately goes into a crouch, stalking rapidly towards the mouse. You turn away, and after a few seconds, see Sylvester silently walk away. The mouse is gone. What seems to be a brochure is on the ground where it was...";
       move the brochure to the Red Room;
       increment deadmau5;
       remove the mouse from play;
       increase the score by 5.

[The Lab]
The Lab is north of the Red Area. The description of the Lab is "The room is huge and brightly lit. It smells like a zoo. If you stay quiet, you can hear muffled breathing coming from somewhere..."

After going in the Lab:
    try the player looking;
       if the player is in the Lab for the first time
       begin;
	  say "Sylvester saunters into the room after you, purring and wearing a rather satisfied look on his face. You can only guess why.";
       end if;

The cages is in the Lab. The initial appearance of the cages is "A series of cages line the walls, all open." The description is "Looking into some cages, you see tufts of different fur inside.vWere they from different animals?"
After examining the cages:
    increase the score by 3.

The wooden maze is in the Lab. The initial appearance of the wooden maze is "There is a small, hand-crafted, wooden maze on a table." The description of the wooden maze is "It doesn't look too hard to solve. It's just the right size for a small animal."

[The heavy door in the Lab--unlocking the heavy door]
The heavy door is a door. It is locked. The heavy door is east of the Lab and west of the Experimental Room. The description is "It's locked shut and is quite heavy. 'Brilliant scientists, but dumb as an acorn. They say most fools don't keep a key more than 20 feet away from where the door is,' the Voice speaks, somewhat dryly."

The cabinet is in the Lab. The initial appearance of the cabinet is "A black cabinet stands near the table." 


[The Cockroach in the Lab]
The cockroach is an animal in the Lab. The initial appearance of the cockroach is "A disgusting brown cockroach sits on top of the cabinet." The description of the cockroach is "Ew. You'd rather not touch the cabinet with that thing running around. 'Didn't think THAT would stop you,' the Voice remarks."

[Keep track of the cockroach status!]
deadRoach is a number variable. deadRoach is 0. 

Understand "kill [some animal]" as killing. Killing is an action applying to one thing.
Instead of killing cockroach:
     say "You smash the cockroach with your foot. 'Rather cruel, don't you think?' the Voice remarks. You ignore it and relish the fact the bug is gone.";
      increment deadRoach;
      remove the cockroach from play;
      increase the score by 3.

A key is a thing. The key unlocks the heavy door.
Instead of opening the cabinet:
	if (deadRoach is 1):	
		move the key to the Lab;
		say "A key is inside! 'Well done,' the Voice praises. 'You should be able to go on your way.'";
     		now the player carries the key;
     	otherwise:
     		say "The cockroach sits on top of the cabinet and seems to be staring straight into your soul. You get the worst goosebumps. 'Defeated by an insect?' the Voice speaks with a tinge of amusement. 'I won't judge you.'"

Understand "unlock [something]" as unlocking. Unlocking is an action applying to one thing. 

[Check unlocking status]
Check unlocking:
        if the noun is not a door, say "[The noun] is not something you can unlock." instead;
        if the noun is unlocked, say "[The noun] is already unlocked." instead;
        if the player carries the key and the player is in the Lab, try unlocking the noun with the key instead;

Carry out unlocking with the key:
    now the noun is unlocked.

[The Experimental Room]
The Experimental Room is a room. The description is "An intimidatingly large chair sits in the center of the room. The walls are adorned with pictures of random words and drawings. [line break]
[line break]Northward is an entryway...its door hangs off its hinges, almost completely shattered."

The drawing is in the Experimental Room. The initial appearance of the drawing is "One drawing in the room is not of an object or person and appears to be marked with something." The description of the drawing is "You examine a drawing of a map. It looks to be a map of where you are. Tally marks are drawn under the map in pencil, along with the words 'Sebastian Weaver'. 'That's the map of this facility,' the Voice explains. 'As you can see, it's not very big. It's rather obscure. Which is what they wanted.'
[line break]You wonder who Sebastian Weaver is."

The Stranger is a man in the Experimental Room. Understand "man" as the Stranger. The initial appearance of the Stranger is "You realize the quiet breathing from before is from a man sitting in the chair. He does not look at you and wears a blank expression."
The document is a thing. The photo is a thing.
Instead of examining the Stranger: 
    move the document to the Experimental Room;
    move the photograph to the Experimental Room;
    say "A document and photograph are crumpled in the man's hand."

The initial appearance of the document is "A document is crumpled in the man's hand." The initial appearance of the photograph is "A photo is crushed in his hand as well."

Understand "talk to [someone]" as talking. Talking is an action applying to one thing.
Instead of talking the Stranger:
    say "The man does not seem to hear and continues to stare silently at the wall. 'He won't respond,' the Voice says quietly. 'It's a little too late, I'm afraid.'".


The description of the document is "It's an official document: [line break]
[line break]SOMA MEMORY LABS 
[line break]143-21 East Drive, SC, CA
[line break] Date: June 10, 2013 
[line break]SUBJECT NAME: 14 (John Akins)
[line break]Age: 43
[line break]Length of Stay: 10 months

  [line break]Subject 14 arrived at the facility as a healthy middle-aged male with average memory skills. He performed well in the maze tasks and made few errors in recollection games.
  [line break]After being subjected to the treatment, Subject 14 exhibited gradual memory deterioration, as expected, but at a slower rate than the animals. He made errors in the mazes that he had been trained to do for months. 
  [line break]By month 4, his short-term memory worsened to a time capacity of roughly 13 seconds. He struggled in recognizing the faces of his experimenters.
  [line break]By month 7, he failed to recognize a photo of himself, as well as his family members. 
   [line break]By month 9, he fiercely demanded to be let out of the facility. We tacitly refused. There is a reason why the experiment went awry, and he is a valuable subject in our attempts to fix the issue. We've been working for years on this project; it's preposterous that the outcome completely counters our goals. For the moment, we will ask him to continue his participation in the memory tasks. Perhaps we may have to expand the types of tasks our subjects perform to get to the heart of the issue. I heard of a suggestion for a human-sized maze. Interesting proposition.'"

The description of the photograph is "A crumpled photo of the man (looking considerably younger), a woman, and a child at what seems to be a beach. They are all smiling. [line break] 'Beautiful family,' the Voice says quietly. 'It's upsetting he forgot them all.'"
After examining the photograph:
    increase the score by 3. 


[The Maze Room]
The Maze Room is a room. The Maze Room is north of Experimental Room and south of the Research Room. The description of the Maze Room is "Giant white walls stand before you, twisting and turning in T shapes. It's almost like a human-sized maze. Some blood disturbs the white."

The holes is in the Maze Room. initial appearance of the holes is "Large holes are on the walls."

After going in the Maze Room:
    try the player looking;
       if the player is in the Maze Room for the first time
       begin;
	  say "'It's funny,' the Voice muses. 'They had to do this damn maze all the time and always complained that they wanted to just get out...it took them a while to figure out that they could just break down the walls. They always had the chance to escape.'";
       end if;

The graffiti is in the Maze Room. The initial appearance of the graffiti is "Graffiti lines the walls. You can tell from the handwriting that different people had drawn on the walls with markers and pens."
The description of the graffiti is "Much of the graffiti are angry messages: 'WE'RE NOT RATS' [line break]'YOU MAY MAKE ME FORGET MYSELF, BUT I WON'T FORGET YOUR FACES'".
After examining the graffiti:
     increase the score by 4.


The folder is a thing. 
After examining the graffiti for the first time:
     move the folder to the Maze Room;
     say "Sylvester walks through the maze with ease and carelessly steps over a tattered folder on the ground."

The description of the folder is "It contains a bunch of important looking papers. One in particular stands out:
[line break]
       [line break]Subject 11519 has been exhibiting the same kind of behavior ever since his treatment. He has been traversing the entire facility, each and every room. Whenever he reaches the Experimental room, he marks the map with a tally mark and his initials. 
        [line break]The subject had entered the facility as a young man who suffered from severe depression. He came after we advertised under the new motto that the military had told us to take on: 'New memory therapy for your mental health.' His consent form reveals that his motive for joining our project was to 'Be happier.' Memory loss can assist this, but we did not reveal to him the grave turnabout of our experiments, the fact that our research was meant to completely annihilate the capability to remember at all.

          [line break]But Subject 11519 persists in his travels. He has indeed exhibited memory deterioration, mostly in the form of amnesiac episodes, but he still walks through the facility, makes his marks, and returns to his cell. He does not want to forget. His supervising experimenter, Dr. John Parr, is interested in his antics and insists that we do not interfere. It's worth noting that he has been acting oddly recently; he does not seem enthusiastic and prefers to keep to himself. If the subject's behavior begins to pester our research, then we will act accordingly. But for the moment, we will let him be.

          [line break]Note: Humorously enough, he has a travel partner. The damn cat that always manages to escape before we can do anything to him. Perhaps they are both attempting to rebel against us?";

After examining the folder for the first time:
     say "'You've been doing well,' the Voice suddenly spoke. It sounds quieter than usual. 'There is a room up ahead at the end of the maze. Once you're done exploring this area, can you squeeze through the holes and get to the end of the maze?'";
[Player will have to use 'squeeze through' verb]
      
[The Window dilemma]
Understand "squeeze through [something]" as squeezing through. Squeezing through is an action applying to one thing.
The window is a thing. The table leg is a thing.
Instead of squeezing through holes:
       say "A large glass-pane window is on the wall beside a door that is blocked by numerous pieces of furniture, from desk parts, table parts, even comfy chairs. 'Ah. Well. Time to think of a solution,' the Voice says. 'Impress me.'";
	move the window to the Maze Room;
        move the furniture to the Maze Room.

The description of the window is "It's made of glass. Hmm..."

weaponGet is a number variable. weaponGet is 0.

The description of the furniture is "A giant pile of furniture blocks the door."
The table leg is a thing.
After examining the furniture:
       move the table leg to the Maze Room;
       say "Table legs stick out of the pile like spikes.".

Instead of taking the table leg:
      say "Hmm. Could be useful somehow.";
      increment weaponGet.

Understand "smash [something] with [something]" and "break [something] with [something]" as smashing it with. Smashing it with is an action applying to two things. 
Understand "punch [something]" as punching. Punching is an action applying to one thing.
Understand "kick [something]" as kicking. Kicking is an action applying to one thing.

Instead of smashing the window with the table leg:
	if (weaponGet is 1):
	    	increase the score by 5;
	    	say "You hit the window with the table leg. The window splinters and breaks, giving you a sizable hole to the next room! 'Well done,' the Voice praises.";
	     	move the player to the Research Room.
	
Instead of punching the window:
      say "You contemplate breaking the window with your mighty fists. 'Bold, but foolish,' the Voice says. 'Injuring yourself won't do.'".
		
Instead of kicking the window:
	say "You glance at your feet. Maybe you can use your well-formed legs...[line break] 'Bad idea,' the Voice says flatly.". 
	
[The Research Room]
The Research Room is a room. It is north of the Maze Room. The description of the Research Room is "A large room half-lit with flickering fluorescent lights. There are photos of men and women on the walls. A map of the human brain is also hung up."

The drawer compartment is in the Research Room. The initial appearance of the drawer compartment is "A drawer compartment sits on the floor."

The diary is in the Research Room. The initial appearance of the diary is "A diary sits on top of a cracked table. 'Give it a read.' The Voice sounded pained."
Understand "read [something]" as reading. Reading is an action applying to one thing.

The description of the diary is "
   [line break]
  [line break]Date: September 16, 2014
  [line break]We knew it wouldn't take long for them to sniff out what we were doing. But we didn't think they would come so soon. The military wasted no time approaching the supervisor and compelling him (yes, I say compel) to make our facility's research an undercover study.
    [line break]We originally strove to find a way to enhance human memory. We failed and found a way to disintegrate it. Our trash became someone else's treasure. 
     [line break]Those government dogs told us why we should continue. The memory-disintegration method, they claim, will be extraordinarily helpful for their work. POWs will forget all they have seen during their stay with the enemy when they are returned. Those who have seen too much of what lies behind the government veil will no longer be a threat. 
      [line break]A good number of us have protested vigorously, but not for long, unsurprisingly. Some are thrilled by the change in objective, taking delight in the so-called 'partnership' with the military. As for me, I have only the deepest of doubts about this operation. We are doing a service to our country, they said. I feel no pride in doing it.
      [line break]In the next month, we are changing the experimentation designs. To find test subjects, we are projecting ourselves to the public under a new slogan that we offer therapeutic treatment for those with mental conditions.'
[line break]
[line break]
Entry # 2
[line break]Date: February 6, 2016
[line break]I am supervising the progress of one of the newest participants to arrive to our facility. His name is Sebastian Weaver, under subject number 11519. A typical severely-depressed young male who yearned to be happy. 'Do good, Parr,' Kevin had said, patting me on the back. I nearly punched his face.
[line break]When I spoke to him during his interview, I wished I had just told him the truth. Just blurt out what we were really doing. But, coward that I am, I didn't. I sometimes wonder why I stay in this damn place, but it is then that I see the faces of Isabel and Joanne. Surely, since I know the truth behind our research, I know a valuable secret of the military. Surely, if I attempt to escape, they will...'deal' with me. And perhaps Isabel and Joanne as well, once they start questioning my disappearance.
[line break]What irony...to believe that the very place I had considered my intellectual monastery is now the darkest of cells. All of us, test subjects and experimenters alike, are like the test rats in the cages of our facility. We are trapped.'
[line break]
[line break]The rest of the pages are torn. You stifle a sigh."

Understand "drawer" as drawer compartment. Understand "drawer compartment" as drawer compartment.

After examining the diary:
     say "'Don't let the apparent absence of memories convince you that they are completely gone. You must explore.' The Voice halters. 'Someone taught me that. It only took me a while to realize.'
[line break]Sylvester sits musingly near the drawer compartment on the ground."

The drawer compartment contains pencils, pens, a stapler, and torn papers. 
The description of the torn papers is "
[line break]Entry #5
[line break]Date: October 6, 2016
[line break]Subject 11519...no, Sebastian...has been walking around the facility every day for the past two months. I followed him and saw what he was doing. He was marking his travels. At that moment, I gained clarity. He was attempting to retain his memories.
[line break]I became excited. I told Sebastian to mark his initials as well, instead of just making tally marks. I even let the cat follow him nearly all the times he walked, just as another supplement to his memory retention, a constant in his daily activity. He is the first to exhibit such behavior. And it is subtle enough that no one else would suspect him, of both of us, doing anything."  

The tape recorder is a thing.

After examining the torn papers for the first time:
     move the tape recorder to the Research Room;
     say "You see a tape recorder under the papers."

Instead of listening to the tape recorder:
    say "A voice speaks. It is masculine and sounds bone-weary. The voice sounds somewhat familiar.
       [line break]'So they've finally rebelled. At long last. Luckily for me, I expected it. I heard the subjects murmur under their breaths, fall silent when an experimenter walks by. But I heard them. They knew. They figured it out.
        [line break]They've done a fine job. Made every one of my colleagues run faster than I've ever seen them run. I hid in this room until the storm passed. When I ventured outside, the facility was empty. The test subjects escaped...well, most of them. There is still Subject 46, Edward Baker, and, of course...he must still be around.'
         [line break]There is a hefty sigh.
         [line break] 'It's been two days since the breakout. The military hasn't arrived. If they do, they'll just find me, and two failures of test subjects. Hah. Well, my dear, dear government, how do you like that?'
          [line break]You hear the sound of a bottle swishing. The man recording must be drinking something.
          [line break]'Regardless...I'm glad. I'm not quite sure what I should do now. I considered burning this place down. Maybe I should. Make it seem like this place never existed...wipe it out of people's memories...heh! After that, I'll go home...yes, I'll go home. And make myself disappear. They can't find me. Nor my family. 
           [line break]And yet...I linger here. Perhaps I've grown attached to my haven-turned-prison. A bittersweet attachment. No matter. I've stayed here for long enough. I must depart before those uniform-donning dogs arrive.
           [line break]Ah...but of course... Yes. My sliver of hope throughout all these months. The resistor. I feel the urge to watch him again...to observe his steady march through the facility...He forgets every time he does it, but he does it every day...like an automaton.
            [line break]I think...I will stay. Watch him, for one last time, before I leave this place. But this time, he won't return to his cell. He'll be gone, like the others. I'll make sure of it.
            [line break]My name is Doctor John Parr, supervising researcher at Soma Memory Labs. Date...I've lost track. Who cares. This will be my last experimental observation.'
[line break]
[line break]
The recorder falls silent.
[line break]
'...Yes. That's it.' The Voice sounds faintly approving. 'Well done. Now, look to your right. Do you see that keypad? Why don't you type in the key. You're almost done.'";
      move the keypad to the Research Room.


[Keypad]
The keypad is a thing.

Instead of examining the keypad:
     say "There are numbers on the keypad.";
     now the command prompt is "'Who are you?' the Voice asks. 'What is the key?' Type it in: ".

[Player must write 'type' as action verb]
After reading a command when the command prompt is "'Who are you?' the Voice asks. 'What is the key?' Type it in: ":
	if the player's command matches "type 11519":
		say "The keypad clicks and beeps. Suddenly, the wall slides back, revealing an entrance.";
		increase the score by 4;
		move the player to the Exit;
	otherwise:
		say "Incorrect. 'You know who you are,' the Voice says firmly. 'Tell me.'";
	 now the command prompt is ">";
	 reject the player's command.	
	        

[The Exit]
The Exit is a room. The Exit is east of the Research Room. The description of the Exit is "A dark room. The right wall is covered with numerous televisions, each depicting a room you have explored.
[line break]A door is up ahead. Above it is a sign with neon-red letters: EXIT."
The doctor is a man in the Exit. The description of the doctor is "[line break]A middle-aged man. He is wearing a white gown that has been dirtied. His face is haggard and his eyes droop by the weight of their bags. One lens of his glasses is cracked. He nods once and speaks. [line break]'You've made it. This is the 93rd time you've walked the halls of this facility, but you never ended up here. Yes, you've been experiencing amnesiac episodes, but those will pass soon enough. I've stopped treating you months ago, so you won't end up like...like Subject 14.'
        [line break]His voice, although weary, sounds like the Voice. His breath reeks of alcohol.
        [line break]'Many dreams were built here. Many...memories.' He grounds out the word. 'It won't be long before they find us. Find me. I've stayed here for too long. And I must go.'
         [line break]He cracks a small smile at you. An artificial smile. 'My name is Doctor John Parr,' he says in the voice of a doctor greeting a patient. The words sound familiar. As if you had heard it months ago. 'Your experiment has been concluded. Thank you for your participation. We value your support and patience. But tell me...' He stops, swallows, and suddenly looks pleading. 'Can...can you forgive us? For what we've done?'"

Understand "forgive [someone]" as forgiving. Forgiving is an action applying to one thing.
Understand "John Parr" as the doctor.

Instead of forgiving the doctor:  
      end the story saying "[line break]
[line break]The doctor opens the door, revealing a flat, sandy field. Outside. 'Forget I existed,' he says quietly. 'Forget this face. Live your life and make lasting memories. I hope you find happiness, Sebastian Weaver. Goodbye.'
[line break]
[line break]You step outside and feel the sand under your shoes. The wind blows gently. The sun's bright and you have to squint to adjust to the glare.
         [line break]Beside you, Sylvester meows and purrs against your leg.
         [line break]Slowly, you make your way down the field, Sylvester by your side, beginning a long, long walk.'".

 


