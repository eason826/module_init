#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <define.h>

void do_initcalls(void)
{
        myown_call *call_ptr = &_myown_start;
        do {
                fprintf (stderr, "pointer adress: %p--->", call_ptr);
                (*call_ptr)();
                ++call_ptr;
        } while (call_ptr < &_myown_end);

}
