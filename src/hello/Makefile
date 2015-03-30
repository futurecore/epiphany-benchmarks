ESDK=${EPIPHANY_HOME}
ELIBS="-L ${ESDK}/tools/host/lib"
EINCS="-I ${ESDK}/tools/host/include"
ELDF=${ESDK}/bsps/current/fast.ldf

UNAME_P := $(shell uname -p)
ifeq($(filter arm%,$(UNAME_P)),)
    CROSS_PREFIX=
else
    CROSS_PREFIX="arm-linux-gnueabihf-"
endif

.PHONY: all clean

all: e_hello_world.srec hello_world.elf

hello_world.elf:
    ${CROSS_PREFIX}gcc hello_world.c -o hello_world.elf ${EINCS} ${ELIBS} -le-hal -le-loader -lpthread

e_hello_world.elf:
    e-gcc -T ${ELDF} e_hello_world.c -o e_hello_world.elf -le-lib

e_hello_world.srec
    e-objcopy --srec-forceS3 --output-target srec e_hello_world.elf e_hello_world.srec

clean:
    rm hello_world.elf e_hello_world.elf e_hello_world.srec