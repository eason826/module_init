#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <define.h>

static void module1_init(void)
{
	printf("call %s\n",__func__);
}

mymodule_init(module1_init);
