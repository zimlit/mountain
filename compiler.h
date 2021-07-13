#ifndef mountain_compiler_h
#define mountain_compiler_h

#include "vm.h"

ObjFunction* compile(const char* source);
void markCompilerRoots();

#endif

