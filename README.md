# Clock in a FPGA
Felippe Teracini, Guilherme Schoeri, Juan Garcia

# Table of Contents
1. [Introduction](#introduction)
2. [Clock Features](#clock-features)
3. [Pseudocode](#pseudocode)
4. [Instructions](#instructions)
5. [Addressing Modes](#addressing-modes)
6. [Assembly](#assembly)
7. [Assembler](#assembler)
8. [CPU and ROM](#cpu-and-rom)
9. [IO](#io)
10. [Memory Mapping](#memory-mapping)
11. [How to use](#how-to-use)
12. [References](#references)


## Introduction
 The goal of the project was to create and implement an entire cpu archictecture from scratch to use as a clock engine. The cpu was, then, tested on FPGA Cyclone IV EP4CE115F29C7.

## Clock Features
* *AM/PM* mode
* Change clock basetime speed from normal to high 
* Change clock time (minutes or hours)


## Pseudocode
```javascript
h = 0;
m = 0;
s = 0;
reg = 0;
minuteButtonDown = 0;
hourButtonDown = 0;

while (1) {
   checkSecond();

   if (reg == 1) {
       s += 1;
       if(s == 60)
       {
           s = 0;
           m += 1;
       }
       if(m == 60)
       {
           m = 0;
           h += 1;
       }
       if(h == 24)
       {
           h = 0;
       }

       reg = 0;

       clearSecond();
   }

   checkMinuteButton();

   if (minuteButtonDown) {

       m += 1;

       if(m == 60)
       {
           m = 0;
           h += 1;
       }
       if(h == 24)
       {
           h = 0;
       }

       minuteButtonDown = 0;
   }

   checkHourButton();

   if (hourButtonDown) {

       h += 1;

       if(h == 24)
       {
           h = 0;
       }

       hourButtonDown = 0;
   }

   updateDisplayMinute();
   updateDisplayHour();

}
```
 

## Instructions

| Instructions        | Sintax           | OPCODE  |  Description                                 |
| ------------- |:----------------:|:------:|:----------------------------------------------------|
| ADD      | add reg, $immediate   | 000    | Adds reg value to immediate                         |
| CMP      | cmp reg, $immediate   | 001    | Compares reg's value to immediate and sets RD value |
| MOVI     | movi reg, $immediate  | 010    | Defines reg's value to immediate                    |
| JMP      | jmp label             | 011    | Jumps to label                                      |
| JMPNE    | jmpne label           | 100    | Jumps to label if RD = 1                            |
| null     |         null          | 101    | null                                                |
| LOAD     | load reg, $immediate  | 111    | Loads immediate RAM address value to reg            |
| STORE    | store reg, $immediate | 110    | Writes reg's value into the immediate RAM address   |



## Addressing Modes
* **Word Length:** 14 bits
* **Total number of Instructions:** 8 registers
* **Total number of Registers:** 8 registers

| OPCODE        | REG          | Immediate  |  
| ------------- |:-------------:|:-------------:|
| 3 bits        | 3 bits        | 8 bits    |                        

| OPCODE        | Immediate     | 
| ------------- |:-------------:|
| 3 bits        | 11 bits       |                     


## Assembly
[Assembly Code](https://github.com/TeraByte900/Relogio_VHDL/blob/master/Assembly.txt "Assembly Code")

## Assembler
 There is also a python assembler for our processor assembly language. It was based on a MIPS assembler made provided by our teacher Eduardo Marossi. The assembler generates a `.mif` file that is load on the ROM.
 
[Assembler Code](https://github.com/TeraByte900/Relogio_VHDL/blob/master/watch_assembler.py "Assembler's code")

[Assembly .mifs](https://github.com/TeraByte900/Relogio_VHDL/blob/master/initROM.mif "Generated .mif")


## CPU and ROM
Inserir imagem

## IO
Inserir imagem


## Memory Mapping
Inserir imagem

## How-to-use
Inserir imagem

## References
[VHDL Quick Reference Card da Synthworks.](http://www.synthworks.com/downloads/vhdl_quickref.pdf)

[VHDL Types & Package Quick Reference Card da Synthworks.](http://www.synthworks.com/downloads/type_pkg_quickref.pdf)


___

