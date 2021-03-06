all: hw3

hw3: main.o 
ifeq (${OS}, Windows_NT)
	g++ -o hw3 main.o -lgtest
else
	g++ -o hw3 main.o -lgtest -lpthread
endif
	
main.o: main.cpp utAtom.h utStruct.h utVariable.h
	g++ -std=gnu++0x -c main.cpp


clean:
ifeq (${OS}, Windows_NT)
	del *.o *.exe
else
	rm -f *.o hw* utAtom utVariable utStruct
endif

stat:
	wc *.h *.cpp
