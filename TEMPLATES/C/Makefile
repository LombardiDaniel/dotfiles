main.out: main.c
	gcc -Wall -pedantic -Wextra -O0 -g main.c -o main.out

asm: main.c
	gcc -Wall -pedantic -Wextra -O0 -g main.c -o main.asm -S

clean:
	rm -r *.o *.asm *.out ./main.out.dSYM
