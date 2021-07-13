mountain: main.o chunk.o memory.o debug.o value.o vm.o compiler.o scanner.o object.o table.o
	cc -g -o mountain main.o chunk.o debug.o value.o memory.o vm.o compiler.o scanner.o \
		object.o table.o

main.o: common.h vm.h main.c
	cc -c -g -o main.o main.c

chunk.o: common.h chunk.h memory.h value.h chunk.c
	cc -c -g -o chunk.o chunk.c

memory.o: common.h memory.h compiler.h object.h vm.h memory.c
	cc -c -g -o memory.o memory.c

debug.o: chunk.h object.h debug.h value.h debug.c
	cc -c -g -o debug.o debug.c

value.o: value.h common.h memory.h object.h value.c
	cc -c -g -o value.o value.c

vm.o: chunk.h value.h compiler.h vm.h debug.h memory.h table.h object.h vm.c
	cc -c -g -o vm.o vm.c

compiler.o: compiler.h scanner.h object.h memory.h common.h vm.h compiler.c
	cc -c -g -o compiler.o compiler.c

scanner.o: scanner.h scanner.c
	cc -c -g -o scanner.o scanner.c

object.o: object.h chunk.h value.h common.h vm.h memory.h table.h object.c
	cc -c -g -o object.o object.c

table.o: common.h value.h table.h memory.h object.h table.c
	cc -c -g -o table.o table.c
