KERNEL_DIR=/home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/build_image/build
ARCH=arm
CROSS_COMPILE=arm-none-eabi-
export ARCH CROSS_COMPILE

obj-m := epaper_driver.o
ccflags-y := -std=gnu99

all:
	$(MAKE) EXTRA_CFLAGS=-fno-pic -C $(KERNEL_DIR) M=$(CURDIR) modules

.PHONY:clean

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(CURDIR) clean


