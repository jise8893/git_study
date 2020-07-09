all: git_study

git_study: sum.o main.o
	g++ -o git_study sum.o main.o
main.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp
sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

clean: 
	rm -f git_study *.o

