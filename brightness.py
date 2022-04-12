#!/bin/python3

from sys import argv

path="/sys/class/backlight/intel_backlight/"
pourcent=int(argv[2])

def rw(f, m, d=""):
    if m == "r":
        with open(path+f, m) as f:
            o = f.read()
            f.close()
            return o
    elif m == "w":
        with open(path+f, m) as f:
            f.write(str(d))
            f.close()

actual = int(rw("brightness", "r"))
maxb = int(rw("max_brightness", "r"))
actualp = int((actual/maxb)*100)

if argv[1] == "-inc":
    newp = actualp + pourcent
    new = maxb*(newp/100)
    rw("brigtness", "w", new)
    print(actualp, newp)
elif argv[1] == "-dec":
    newp = actualp - pourcent
    new = maxb*(newp/100)
    rw("brigtness", "w", new)
    print(actualp, newp)
