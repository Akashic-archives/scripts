#!/bin/python3.11

import random

def char_to_binary(c):
    # If character is a number (0-9), convert it to binary (padded to 5 bits)
    if c.isdigit():
        return f"{int(c):05b}"
    # If character is a letter (a-v), convert its ASCII value to binary (padded to 5 bits)
    elif c.isalpha() and 'a' <= c <= 'v':
        return f"{ord(c) - ord('a'):05b}"  # Map 'a' to 00000, 'b' to 00001, ..., 'v' to 11111



choix = int(input("Entrez 0 pour generer un uid et 1 pour en valider un.\n"))

def generer():
    N = 9
    uid = ''.join(random.choices( "0123456789ABCDEFGHIJKLMNOPQRSTUV", k=N))
    while(True != valider(uid)):
        uid = ''.join(random.choices( "0123456789ABCDEFGHIJKLMNOPQRSTUV", k=N))
    print(uid)

def valider(uid):
    print("pas encore fini, retourne juste true")
    return True

if choix == 0:
    generer()
elif choix == 1:
    uid = input("Entrez un uid a valider.\n")
    valider(uid)

