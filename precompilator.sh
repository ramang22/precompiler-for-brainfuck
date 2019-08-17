#!/bin/bash

#location of compilator
brainfuck='/Users/ramang/Documents/Developer/brainfuck/brainfuck'

#name of program 
programName=$1

startMacroLine=`grep -n "#start" $1 |  cut -d ":" -f1`
endMacroLine=`grep -n "#end" $1 |  cut -d ":" -f1`
#number of macros
numberOfMacros=`echo "$endMacroLine - $startMacroLine - 1 " | bc`
#line where code starting
codeStart=`echo "$numberOfMacros + 4" | bc`
#code
cat $programName | tail -n +$codeStart >> programCode.bf

numberOfMacroLines=`echo "$numberOfMacros + 2" | bc`
for((i=2;i<$numberOfMacroLines;i++)); do
    macroName=`cat $programName | head -$i | tail -1| cut -d "=" -f1`
    macroBody=`cat $programName | head -$i | tail -1| cut -d "=" -f2`
    changed=`sed s/$macroName/$macroBody/g programCode.bf`
    rm programCode.bf
    echo $changed >> programCode.bf
     
done

$brainfuck programCode.bf

rm programCode.bf


