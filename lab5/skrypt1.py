#!/usr/bin/env python3
import sys
import shutil
import os
import glob

source = sys.argv[1]+"/"
files = os.listdir(source)

list_of_files = glob.glob(source + "**", recursive=True)
list_of_files = sorted(list_of_files,reverse =True)

if os.access(source, os.R_OK) and len(sys.argv) == 2:
    for f in list_of_files:
        print(f)
        if os.access(f, os.X_OK):
            shutil.move(f, source)
        elif os.path.isdir(f):
            os.rmdir(f)       
        else:
            os.remove(f)

else:
    print("Nie można oczytać pliku w podanej ścieżce lub podano zła liczbę argumentów")


