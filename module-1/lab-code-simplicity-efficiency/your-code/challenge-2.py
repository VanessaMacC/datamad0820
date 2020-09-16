"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import random
import sys
from string import ascii_lowercase, digits

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

def RandomStringGenerator(l):
    total = ascii_lowercase + digits
    s = ''.join([random.choice(total) for x in range(0,l)])
    return s

def BatchStringGenerator(n, a, b):
    r = []
    for i in range(0,n):
        if a <= b:
            result.append(RandomStringGenerator(b))
        elif a > b:
            return 'Incorrect min and max string lengths. Try again.'
    return r

print(BatchStringGenerator(n, a, b))
