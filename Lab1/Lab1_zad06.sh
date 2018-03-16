#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Niepoprawna liczba argumentów. "
        echo "Użycie: $0 plik_z_listą"
        exit 1
fi

if [ ! -f $1 ]
then

        echo "Nie ma pliku $1!"
        exit 1
fi

ZAWARTOSC=`cat $1`
rm $1 -f
for plik in $ZAWARTOSC
do
        if [[ -f $plik ]]
        then
                echo "Plik $plik:" >> $1
                cat $plik >> $1
        fi
done