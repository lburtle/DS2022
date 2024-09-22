#!/bin/bash


clear
echo "Let's build a mad-lib!"

read -p "1. Name a weird color: " ADJ1
read -p "2. Name a place: " LOC1
read -p "3. Name a vehicle: " NOUN1
read -p "4. Name a tool or something you use: " NOUN2
read -p "5. Name a place: " LOC2
read -p "6. Name an unusual hobby: " NOUN3
read -p "7. Give a verb ending in -ing: " VERBING1
read -p "8. Give another verb ending in -ing: " VERBING2
read -p "9. Give a verb that doesn't end in -ing: " VERB1

echo "Here is your story: "

echo "One day, when I was in $LOC1, I saw a man whose NOUN1 was a vibrant $ADJ1."
echo "I was really surprised and asked him why it was $ADJ1."
echo "He told me it was to $VERB1 his favorite activity, $NOUN3."
echo "I had never heard of someone who partakes in $NOUN3 before, so I asked where he does it, and responded with $LOC2."
echo "It seemed to me that this hobby of his required too much $VERBING1, and I was not interested in doing that."
echo "So I walked away and the man started $VERBING2."


