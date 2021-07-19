# Import libraries
from random import randint

# Assign variables
name = insult  = "."
count = 0

# Initate insult array
insults = ["Pig Head", "Big Head", "Baby Baby","poopy head","fart face","booby burper","gonk face","chicken"]

#Functions (Random Insults and Greeting generator)
def randInsult():
    num = randint(0,(len(insults)-1))
    return(insults[num]);

def Greeting(name):
    if (name == "Alex"):
        print( "Hello Sir "+ name)
    elif (name == "stop"):
        print("Thanks for playing.")
    elif ((name == "mom") or (name == "dad" )):
        print(name+ " you look fantastic today.")
    elif (name == 'quit'):
        print('So. I see you are a quitter.  \nYou loose 50 points')
    else:
        print("Hello " +name+ " you are a " +insult)
    return;

def dots(num):
    print('.' * num);

def dashs(num):
    print('-' * num);

def lines(num):
    print("\n" * num)

# Program header
lines(4)
dots(25)
print('Welcome to the insult machine')
lines(1)
    
# Program
while name != "quit":
    if(count == 5):
        print('Enter "quit" to quit')
        count = 0

    name = input('What is your Name? ')
    insult = randInsult()
    Greeting (name)
    dashs(25)
    lines(1)
    count += 1
