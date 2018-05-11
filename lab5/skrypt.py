#!/usr/bin/env python3
import sys
import shutil
import os

source = sys.argv[1]+"/"
dest1 = sys.argv[2]+"/"
files = os.listdir(source)

print(source)
print(dest1)

for f in files:
    print(f)    
    try:
        shutil.move(source+f, dest1)
    except:
        print("Nie udało się przenieść pliku lub plik już istnieje")