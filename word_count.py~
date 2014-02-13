# By: Aromie Kim
#! /usr/bin/env python
# word_count.py

import string

try:
    f = open('input_file.txt', 'r') 
except:
    exit()

wordTally = dict()
totalWords = 0

for line in f:
    line = line.translate(None, string.punctuation) #To get rid of punctuation
    line = line.lower() #To make word into lower-case
    wordBunch = line.split()
    for thisWord in wordBunch:
        if thisWord not in wordTally:
	   wordTally[thisWord] = 1 #Add to dict with frequency of 1
        else:
           wordTally[thisWord] += 1 #Update frequency
        totalWords += 1

f.close()  #End of file

wordList = wordTally.keys() 
wordList.sort() #To sort the words alphabetically

for word in wordList:
    print word, wordTally[word]

print "There are " + str(totalWords) + " words in this file"

