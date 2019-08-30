# Created with gm.pl v0.1 on Thu Apr 13 22:57:21 2017
rm=/bin/rm -f
CC=gcc
DEFS=  
PROGNAME= test 
INCLUDES=  -I./include
LIBS=

DEFINES= $(INCLUDES) $(DEFS) -DSYS_UNIX=1
CFLAGS= -g $(DEFINES)

SRCS_DIR = $(shell find .  -maxdepth 3 -type d)
OBJS_DIR = out

SRCS = $(foreach d,$(SRCS_DIR),$(wildcard $(d)/*.c))
OBJS = $(addprefix $(OBJS_DIR)/,$(patsubst %.c,%.o,$(notdir $(SRCS))))

all: $(PROGNAME)

$(PROGNAME) : $(OBJS)
	$(CC) $(CFLAGS) -o $(PROGNAME) $(OBJS) $(LIBS) section.lds

define make-object
$1:$2
	$(CC) $(CFLAGS) -c $$< -o $$@
endef

$(foreach d,$(SRCS_DIR),$(eval $(call make-object,$(OBJS_DIR)/%.o,$(d)/%.c)))

clean:
	$(rm) $(OBJS) $(PROGNAME) core *~
