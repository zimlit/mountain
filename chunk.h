#ifndef mountain_chunk_h
#define mountain_chunk_h

#include "common.h"
#include "value.h"

typedef enum {
  OP_CONSTANT,
  OP_RETURN,
  OP_NIL,
  OP_TRUE,
  OP_FALSE,
  OP_ADD,
  OP_SUBTRACT,
  OP_MULTIPLY,
  OP_DIVIDE,
  OP_NEGATE,
    OP_NOT,
  OP_EQUAL,
  OP_GREATER,
  OP_LESS,
  OP_POP,
  OP_PRINT,
  OP_DEFINE_GLOBAL,
  OP_GET_GLOBAL,
  OP_SET_GLOBAL,
  OP_DUP,
  OP_GET_LOCAL,
  OP_SET_LOCAL,
  OP_JUMP_IF_FALSE,
  OP_JUMP,
  OP_LOOP,
} OpCode;

typedef struct {
  int count;
  int capacity;
  uint8_t* code;
  int* lines;
  ValueArray constants;
} Chunk;

void initChunk(Chunk* chunk);
void freeChunk(Chunk* chunk);
void writeChunk(Chunk* chunk, uint8_t byte, int line);
int addConstant(Chunk* chunk, Value value);

#endif
