# precompiler-for-brainfuck

# Use guide (only macros working need to make functions too :( )

## 1 instal brainfuck compiler
You need to install this compiler for brainfuck,
next you need to change compiler location in procompilator.sh file

```
#location of compilator
brainfuck='insert here executable of your compiler'
#example
brainfuck='/Users/ramang/Documents/Developer/brainfuck/brainfuck'
```
### compiler 
https://github.com/fabianishere/brainfuck


## 2 insert your macros into code

At start your bf code you insert #start and #end and between these two tags you can add your macros in format NAME=whattodo

### example
```
#start
plus=++++++++
print=.
minus=---
#end 
```

## 3 run you code

Run - bash precompilator.sh yourBfFile.bf

### example
```
bash precompilator.sh program.bf
```

## enjoy :) 
