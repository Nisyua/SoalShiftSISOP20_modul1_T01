#!/bin/bash

fileName=$1
varHour=`date +"%H"`
stringName=${fileName%%.*}

#changing the stringName
smallA=$(echo {a..z} | sed -r 's/ //g';)
bigA=$(echo {A..Z} | sed -r 's/ //g';)
cypherSmall=`echo $smallA | sed -r "s/^.{$varHour}//g";echo $smallA | sed -r "s/.{$( expr 26 - $varHour )}$//g"`
cypherSmall=`echo $cypherSmall | sed "s/ //g"`
cypherBig=`echo $bigA | sed -r "s/^.{$varHour}//g";echo $bigA | sed -r "s/.{$( expr 26 - $varHour )}$//g"`
cypherBig=`echo $cypherBig | sed "s/ //g"`
echo -e $smallA \n $bigA \n $cypherSmall \n $cupherSmall \n $cypherBig \n $cypherBig

stringName=`echo $stringName | tr $smallA $cypherSmall`
stringName=`echo $stringName | tr $bigA $cypherBig`

mv $fileName $stringName.txt
