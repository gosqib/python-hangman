import random

words = ['word']
word = random.choice(words)

attempts = 15

guesses = ''

while attempts > 0:
    guess = input('Letter: ')
    guesses += guess
    failed = 0
    for char in word:
        if char in guesses:
            print(char)
        else:
            print('_')
            failed += 1

    if failed == 0:
        print('Win')
        break

    if guess not in word:
        attempts -= 1
        print('Wrong word, try again, you have ' + str(attempts) + ' attempts left')

    if attempts == 0:
        print('Lose')
        
