all: zad1.o zad2.o zad3.o zad4.o zad5.o zad6.o zad7.o bonifacy.o zad61.o zad71.o
	gcc -m32 zad1.o -o zad1
	gcc -m32 zad2.o -o zad2
	gcc -m32 zad3.o -o zad3
	gcc -m32 zad4.o -o zad4
	gcc -m32 zad5.o -o zad5
	gcc -m32 zad6.o -o zad6
	gcc -m32 zad7.o -o zad7
	gcc -m32 bonifacy.o bonifacy
	gcc -m32 zad61.o -o zad61
	gcc -m32 zad71.o -o zad71
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
	gcc -m32 zad4.o -o zad4
	make clean > /dev/null
	
zad5: zad5.o
	gcc -m32 zad5.o -o zad5
	make clean > /dev/null
	
zad6: zad6.o
	gcc -m32 zad6.o -o zad6
	make clean > /dev/null
	
zad7: zad7.o
	gcc -m32 zad7.o -o zad7
	make clean > /dev/null
bonifacy: bonifacy.o
	gcc -m32 bonifacy.o -o bonifacy
	make clean > /dev/null
zad61: zad61.o
	gcc -m32 zad61.o -o zad61
	make clean > /dev/null
zad71: zad71.o
	gcc -m32 zad71.o -o zad71
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
	
zad6.o: zad6.asm
	nasm -f elf32 -g zad6.asm
	
zad7.o: zad7.asm
	nasm -f elf32 -g zad7.asm
	
bonifacy.o: bonifacy.asm
	nasm -f elf32 -g bonifacy.asm

zad61.o: zad61.asm
	nasm -f elf32 -g zad61.asm

zad71.o: zad71.asm
	nasm -f elf32 -g zad71.asm


clean:
	rm -f *.o
	
