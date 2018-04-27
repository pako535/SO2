#!/bin/bash


awk 'BEGIN { 
    FS="{" 
    RS=":" 
    ORS="" 
} 

{  
    
    print $NF >> "newfile.txt" 
} ' $1

