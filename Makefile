mountain: main.o chunk.o memory.o debug.o value.o vm.o compiler.o scanner.o object.o table.o
	cc -o mountain main.o chunk.o debug.o value.o memory.o vm.o compiler.o scanner.o \
		object.o table.o

main.o: common.h vm.h main.c

chunk.o: common.h chunk.h memory.h value.h chunk.c

memory.o: common.h memory.h object.h vm.h memory.c

debug.o: chunk.h debug.h value.h debug.c

value.o: value.h common.h memory.h object.h value.c

vm.o: chunk.h value.h compiler.h vm.h debug.h memory.h table.h object.h vm.c

compiler.o: compiler.h scanner.h object.h common.h vm.h compiler.c

scanner.o: scanner.h scanner.c

object.o: object.h chunk.h value.h common.h vm.h memory.h table.h object.c

table.o: common.h value.h table.h memory.h object.h table.c
