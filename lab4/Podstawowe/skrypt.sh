#!/bin/bash



awk '{num+=NF} END{print "Liczba slow: "num+0} {x++} END {print "Liczba lini: "x} {y+=length} END {print "Liczba liter:" y}'  $1

