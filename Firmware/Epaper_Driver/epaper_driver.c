#include "linux/device.h"
#include "linux/fs.h"
#include <linux/module.h>
#include <linux/printk.h>
#include <linux/spi/spi.h>
#include <linux/of.h>
#include <linux/err.h>
#include <linux/of_gpio.h>
#include <linux/gpio.h>
#include <linux/types.h>
#include <linux/cdev.h>
#include <linux/export.h>
#define DEV_NAME "epaper"
#define DEV_CNT (1)

int epaper_pin_dc;
int epaper_pin_reset;
int epaper_pin_busy;
int epaper_pin_cs;

struct device_node *epaper_device_node;
static dev_t spi_epaper_dev_number;
static struct cdev epaper_char_dev;
struct spi_device *spi_epaper_dev = NULL;
struct class *epaper_class = NULL;
struct device *epaper_device = NULL;




static int epaper_open(struct inode *inode, struct file *file) {
	return 0;
}

static int epaper_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *off) {

	return 0;
}

static int epaper_release(struct inode *inode, struct file *filp) {

	return 0;
}

static struct file_operations epaper_char_dev_ops = {
	.owner = THIS_MODULE,
	.open = epaper_open,
	.write = epaper_write,
	.release = epaper_release
};

static int epaper_probe(struct spi_device *spi) {
    int ret = 0;

    pr_info("epaper driver probo\r\n");
    epaper_device_node = of_find_node_by_name(NULL, "ecspi_epaper");
    if(epaper_device_node == NULL) {
        pr_err("get epaper device node failed\r\n");
		goto alloc_err;
    }

	// dts prase, in order to get pins
    epaper_pin_dc = of_get_named_gpio(epaper_device_node, "dc-pin", 0);
    pr_info("epaper_pin_dc is %d\r\n", epaper_pin_dc);
    gpio_direction_output(epaper_pin_dc, 1);
    
    epaper_pin_reset = of_get_named_gpio(epaper_device_node, "reset-pin", 0);
    pr_info("epaper_pin_reset is %d\r\n", epaper_pin_reset);
    gpio_direction_output(epaper_pin_reset, 1);

    epaper_pin_busy = of_get_named_gpio(epaper_device_node, "busy-pin", 0);
    pr_info("epaper_pin_busy is %d\r\n", epaper_pin_busy);
    gpio_direction_input(epaper_pin_busy, 1);

	// spi config
    spi_epaper_dev = spi;
    spi_epaper_dev->mode = SPI_MODE_0;
    spi_epaper_dev->max_speed_hz = 200000;
    spi_setup(spi_epaper_dev);
	
	// char dev create
    ret = alloc_chrdev_region(&spi_epaper_dev_number, 0, DEV_CNT, DEV_NAME);
    if(ret < 0) {
        pr_err("alloc epaper device number failed\r\n");
        goto alloc_err;
    }
	pr_info("epaper_device_number: %x\r\n", spi_epaper_dev_number);
    epaper_char_dev.owner = THIS_MODULE;
    cdev_init(&epaper_char_dev, &epaper_char_dev_ops);
    ret = cdev_add(&epaper_char_dev, spi_epaper_dev_number, DEV_CNT);
    if(ret < 0) {
        pr_err("add cdev failed, err_code : %d \r\n", ret);
        goto add_err;
    }
	// class create
    epaper_class = class_create(THIS_MODULE, DEV_NAME);
    epaper_device = device_create(epaper_class, NULL, spi_epaper_dev_number, NULL, DEV_NAME);

	pr_info("max_speed_hz = %d\r\n", spi_epaper_dev->max_speed_hz);
	pr_info("chip_select = %d\r\n", (int)spi_epaper_dev->chip_select);
	pr_info("bits_per_word = %d\r\n", (int)spi_epaper_dev->bits_per_word);
	pr_info("mode = %d\r\n", spi_epaper_dev->mode);
	pr_info("cs_gpio = %d\r\n", spi_epaper_dev->cs_gpio);
  	return 0;

add_err:
	unregister_chrdev_region(spi_epaper_dev_number, DEV_CNT);
	pr_err("add char dev error \r\n");
	
alloc_err:
	return -1;
    
}

static int epaper_remove(struct spi_device *spi) {
	pr_info("epaper driver remove");
	device_destroy(epaper_class, spi_epaper_dev_number);
	class_destroy(epaper_class);
	cdev_del(&epaper_char_dev);
	unregister_chrdev_region(spi_epaper_dev_number, DEV_CNT);
}

static const struct of_device_id epaper_of_match_table[] = {
    {.compatible = "fire,ecspi_epaper"},
    {}
};

struct spi_driver epaper_driver = {
    .probe  = epaper_probe,
    .remove = epaper_remove,
    .driver = {
        .name   = "ecspi_epaper",
        .owner  = THIS_MODULE,
        .of_match_table = epaper_of_match_table,
    },
};

static int __init epaper_driver_init(void) {
    int status;
    status = spi_register_driver(&epaper_driver);
    pr_info("epaper_driver_init status : %d\r\n", status);
    return status;
}

static void __exit epaper_driver_exit(void) {
    pr_info("epaper_driver_exit\r\n");
    spi_unregister_driver(&epaper_driver);
}

module_init(epaper_driver_init);
module_exit(epaper_driver_exit);

MODULE_AUTHOR("donge, <xihangdong@163.com>");
MODULE_DESCRIPTION("SPI driver interface");
MODULE_LICENSE("GPL");
