from random import randint


insults = ["Pig Head", "Booby Head", "Baby Baby","poopy head","fart face","booby burper","gonk face","chicken"]

def randInsult():
    insultz = insults[(randint(1,len(insults)))]
    return insultz;

def Greeting(name):
    if (name == "Alex"):
        print( "Hello Sir "+ name)
    elif (name == "stop"):
        print("Thanks for playing.")
    elif ((name == "mom") or (name == "dad" )):
        print(name+ " you look fantastic today.")
    else:
        print("Hello " +name+ " you are a " +insult)
    return;


print(".............Welcome to the insult machine.........")
name = "."
insult = randInsult()
while name != "stop":
    print('\n' * 13)
    name = input("What is your Name? ")
    insult = randInsult()
    Greeting (name)


