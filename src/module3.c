#include <unistd.h>
#include <stdint.h>
#include <stdio.h>
#include <define.h>

static void module3_init(void)
{
	printf("call %s\n",__func__);
}

mymodule_init(module3_init);
