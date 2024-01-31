all: zad1.o zad2.o zad3.o zad4.o zad5.o zadtest.o
	gcc -m32 zad1.o -o zad1
	gcc -m32 zad2.o -o zad2
	gcc -m32 zad3.o -o zad3
	gcc -m32 zad4.o -o zad4
	gcc -m32 zad5.o -o zad5
	gcc -m32 zadtest.o -o zadtest
	make clean
	
zad1: zad1.o
	gcc -m32 zad1.o -o zad1
	make clean > /dev/null
	
zad2: zad2.o
	gcc -m32 zad2.o -o zad2
	make clean > /dev/null
	
zad3: zad3.o
	gcc -m32 zad3.o -o zad3
	make clean > /dev/null
	
zad4: zad4.o
	ld -m elf_i386 zad4.o -o zad4 
	make clean > /dev/null
	
zad5: zad5.o
	ld -m elf_i386 zad5.o -o zad5 
	make clean > /dev/null

zadtest: zadtest.o
	gcc -m32 zadtest.o -o zadtest
	make clean > /dev/null
	
zad1.o: zad1.asm
	nasm -f elf32 -g zad1.asm
	
zad2.o: zad2.asm
	nasm -f elf32 -g zad2.asm
	
zad3.o: zad3.asm
	nasm -f elf32 -g zad3.asm
	
zad4.o: zad4.asm
	nasm -f elf32 -g zad4.asm
	
zad5.o: zad5.asm
	nasm -f elf32 -g zad5.asm

zadtest.o: zadtest.asm
	nasm -f elf32 -g zadtest.asm
	
clean:
	rm -f *.o
	

