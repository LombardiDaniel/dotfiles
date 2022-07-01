# https://www.youtube.com/watch?v=3NTXFUxcKPc

hexdump -C $FILE_NAME # get hexdump of file

strings $FILE_NAME # get strings inside hex

man syscalls

strace $FILE_NAME # prints out syscalls in program

ltrace $FILE_NAME # same but with library functions

r2 $FILE_NAME # redare2: `?`: help | can also be used to debug program | Tab for auto-completion
    aaa # automatically analyse and auto-name
    afl # print all found functions
    s sys.main # navigate to main function
    pdf # print disassebly of current function
    VV # enter visual mode -> Tab and Shift+Tab select boxes
    p # change representation

r2 -d $FILE_NAME # degub
    aaa
    afl
    db $WHERE # plaecs breakpoint
    V! # -> good alternative
    VV
    ;dc # runs program
