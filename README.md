# precompiler-for-brainfuck

# Use guide

## 1
You need to install this compiler for brainfuck,
next you need to change compiler location in procompilator.sh file

```
#location of compilator
brainfuck='insert here executable of your complilator'
#example
brainfuck='/Users/ramang/Documents/Developer/brainfuck/brainfuck'
```
### compiler 
https://github.com/fabianishere/brainfuck


## 2

At start your bf code you insert #start and #end and between these two tags you can add your macros in format NAME=whattodo

###example
```
#start
plus=++++++++
print=.
minut=---
#end 
```

## 3

Run - bash precompilator.sh yourBfFile.bf


# enjoy :) 