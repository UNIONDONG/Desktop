KERNEL_DIR=/home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/build_image/build
# KERNEL_DIR=/home/dong/WorkSpace/buildroot/output/r8-common-vrf/build/linux-refs_remotes_origin_r8_develop
ARCH=arm
CROSS_COMPILE=arm-none-eabi-
export ARCH CROSS_COMPILE

obj-m := lcd_driver.o 
ccflags-y := -std=gnu99

all:
	$(MAKE) EXTRA_CFLAGS=-fno-pic -C $(KERNEL_DIR) M=$(CURDIR) modules

.PHONY:clean

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(CURDIR) clean


