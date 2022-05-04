from decimal import Decimal as dec 
from decimal import getcontext

# def getM(q):

def getpi(q):
    getcontext().prec = 10000
    C = 426880 * dec(10005).sqrt()
    L = 13591409    # initialize constant part of var so we can iterate and get our numbers during loop
    X = 1           # these are the x0, k0, and m0 values that are shown in the wikipedia article
    K = -6.         
    M = 1.
    summation = L
    for n in range(q):
        K += 12
        L += 545140134
        X *= -262537412640768000
        M *= (K**3 - 16 * K)/((n+1)**3)
        summation += dec(M) * dec(L) / X
    pi = C/summation
    return pi
        
pi = getpi(100)

print(pi)    
