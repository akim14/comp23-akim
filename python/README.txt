NAME: Aromie Kim
CS Login: akim14
Date: February 10, 2014

LAB 2
Time taken to complete: 1 hour

Program name: ip_addresses.py
Function: Lists all possible ipv4 addresses 
A nested "for" loop was implemented. Each "for" loop went to a range of 256, since the "for" loop starts at a value of 0. Thus, the highest number of the iterator in the "for" loop is 255.
The numbers are printed in standard IP address format.
*Note: Something odd happens when I run this program in my VMware. In some instances, the output is incorrect. Numbers are skipped. I ran this program (with the exact same code) in my Unix account connected to the Halligan servers and the program works perfectly there and produces the right output. Perhaps this is just a problem with my VMware? 

Program name: reverselist.py
Function: Reverses a list 
This program reverses a list of 3 strings that has been hard-coded. 
 

Program name: word_count.py
Function: Receives an input file, counts the number of times each word appears, prints out the word and how often it appears in the file, and finally, prints the  total number of words in the file
An input file must be read; if no file is provided to the program, then it will exit.
The input file is first read and each line of text is parsed. Punctuation is not counted as part of a word (ex. "wolf" and "wolf!" are both "wolf"). All words are translated into lower-case (ex. so "the" and "The" are both "the"). A dictionary is kept to store the words and their frequency.
The final output is printed ALPHABETICALLY in this manner: word first, then the word's frequency (ex. "sheep 5"). After all words have been accounted for, a statement will be printed informing how many words were in the given file (the grand total of words, not how many unique words).


