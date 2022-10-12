KERNEL_DIR ?= /tmp/linux-3.12/

pvDisk-objs += main.o call.o

obj-m += pvDisk.o

all:
	make -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean
