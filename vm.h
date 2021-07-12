#ifndef mountain_vm_h
#define mountain_vm_h

#include "chunk.h"
#include "table.h"
#include "value.h"

#define STACK_MAX 256


typedef struct {
  Chunk* chunk;
  uint8_t* ip;
  Value stack[STACK_MAX];
  Table strings;
  Value* stackTop;
   Table globals;
  Obj* objects;
} VM;

extern VM vm;

typedef enum {
  INTERPRET_OK,
  INTERPRET_COMPILE_ERROR,
  INTERPRET_RUNTIME_ERROR
} InterpretResult;

void initVM();
void freeVM();
InterpretResult interpret(const char* source);
void push(Value value);
Value pop();

#endif

