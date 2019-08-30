#ifndef DEFINE_H_H
#define DEFINE_H_H
typedef void (*myown_call)(void);

extern myown_call _myown_start;
extern myown_call _myown_end;

#define _init __attribute__((unused, section(".myown")))
#define mymodule_init(func) myown_call _fn_##func _init = func

#endif
