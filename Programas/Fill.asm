// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(MAIN)
    @KBD
    D=M
    @PRETO
    D;JNE
    D=0
    @PINTAR
    0;JMP

(PRETO)
    D=-1

(PINTAR)
    @cor
    M=D

    @SCREEN
    D=A
    @addr
    M=D

(LOOP)
    @cor
    D=M
    @addr
    A=M
    M=D
    @addr
    M=M+1
    D=M
    @KBD
    D=D-A
    @MAIN
    D;JEQ
    @LOOP
    0;JMP