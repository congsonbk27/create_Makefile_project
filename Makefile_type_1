.PHONY: all sumsub_1 install clean
TARGET=sumsub_1
SRC_FILES=main.c src/sub.c src/sum.c
OBJ_FILES=$(patsubst %.c, %.o, ${SRC_FILES})

#DEP+FILES=$(patsubst %.c, %.dep, ${SRC_FILES})

VPATH = src

CFLAGS = -c -g
LDFLAGS = -g

all: ${TARGET}

${TARGET}: ${OBJ_FILES}
	gcc ${LDFLAGS} -o ${TARGET} ${OBJ_FILES}

%.o:%.c
	gcc ${CFLAGS} $< -o $@
clean: 
	rm *.o ${TARGET}

MAIN_HDRS= sub.h sum.h
#LIB_HDRS = ...

main.o : $(addprefix src/, ${MAIN_HDRS})
sum.o : $(addprefix src/, ${MAIN_HDRS})
sub.o : $(addprefix src/, ${MAIN_HDRS})