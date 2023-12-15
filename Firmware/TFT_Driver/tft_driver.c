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
#define DEV_NAME "tft"
#define DEV_CNT (1)

int tft_pin_dc;
int tft_pin_reset;
int tft_pin_backlight;
int tft_pin_cs;

struct device_node *tft_device_node;
static dev_t spi_tft_dev_number;
static struct cdev tft_char_dev;
struct spi_device *spi_tft_dev = NULL;
struct class *tft_class = NULL;
struct device *tft_device = NULL;




static int tft_open(struct inode *inode, struct file *file) {
	return 0;
}

static int tft_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *off) {

	return 0;
}

static int tft_release(struct inode *inode, struct file *filp) {

	return 0;
}

static struct file_operations tft_char_dev_ops = {
	.owner = THIS_MODULE,
	.open = tft_open,
	.write = tft_write,
	.release = tft_release
};

static int tft_probe(struct spi_device *spi) {
    int ret = 0;

    pr_info("tft driver probe\r\n");
    tft_device_node = of_find_node_by_name(NULL, "ecspi_tft");
    if(tft_device_node == NULL) {
        pr_err("get tft device node failed\r\n");
		goto alloc_err;
    }

	// dts prase, in order to get pins
    tft_pin_dc = of_get_named_gpio(tft_device_node, "dc-pin", 0);
	if (IS_ERR_VALUE(tft_pin_dc)) {
		pr_info("get pin_dc error\r\n");
		goto alloc_err;
	} else {
		pr_info("tft_pin_dc is %d\r\n", tft_pin_dc);
		gpio_direction_output(tft_pin_dc, 1);
	}
        
    tft_pin_reset = of_get_named_gpio(tft_device_node, "reset-pin", 0);
	if (IS_ERR_VALUE(tft_pin_reset)) {
		pr_info("get pin_reset error\r\n");
		goto alloc_err;
	} else {
		pr_info("tft_pin_reset is %d\r\n", tft_pin_reset);
		gpio_direction_output(tft_pin_reset, 1);
	}

    tft_pin_backlight = of_get_named_gpio(tft_device_node, "backlight-pin", 0);
	if (IS_ERR_VALUE(tft_pin_backlight)) {
		pr_info("get pin_backlight error\r\n");
		goto alloc_err;
	} else {
		pr_info("tft_pin_backlight is %d\r\n", tft_pin_backlight);
		gpio_direction_output(tft_pin_backlight, 1);
	}

	// spi config
    spi_tft_dev = spi;
    spi_tft_dev->mode = SPI_MODE_0;
    spi_tft_dev->max_speed_hz = 200000;
    spi_setup(spi_tft_dev);
	
	// char dev create
    ret = alloc_chrdev_region(&spi_tft_dev_number, 0, DEV_CNT, DEV_NAME);
    if(ret < 0) {
        pr_err("alloc tft device number failed\r\n");
        goto alloc_err;
    }
	pr_info("tft_device_number: %x\r\n", spi_tft_dev_number);
    tft_char_dev.owner = THIS_MODULE;
    cdev_init(&tft_char_dev, &tft_char_dev_ops);
    ret = cdev_add(&tft_char_dev, spi_tft_dev_number, DEV_CNT);
    if(ret < 0) {
        pr_err("add cdev failed, err_code : %d \r\n", ret);
        goto add_err;
    }
	// class create
    tft_class = class_create(THIS_MODULE, DEV_NAME);
    tft_device = device_create(tft_class, NULL, spi_tft_dev_number, NULL, DEV_NAME);

	pr_info("max_speed_hz = %d\r\n", spi_tft_dev->max_speed_hz);
	pr_info("chip_select = %d\r\n", (int)spi_tft_dev->chip_select);
	pr_info("bits_per_word = %d\r\n", (int)spi_tft_dev->bits_per_word);
	pr_info("mode = %d\r\n", spi_tft_dev->mode);
	pr_info("cs_gpio = %d\r\n", spi_tft_dev->cs_gpio);
  	return 0;

add_err:
	unregister_chrdev_region(spi_tft_dev_number, DEV_CNT);
	pr_err("add char dev error \r\n");
	
alloc_err:
	return -1;
}

static int tft_remove(struct spi_device *spi) {
	pr_info("tft driver remove");
	device_destroy(tft_class, spi_tft_dev_number);
	class_destroy(tft_class);
	cdev_del(&tft_char_dev);
	unregister_chrdev_region(spi_tft_dev_number, DEV_CNT);
}

static const struct of_device_id tft_of_match_table[] = {
    {.compatible = "fire,ecspi_tft"},
    {}
};

struct spi_driver tft_driver = {
    .probe  = tft_probe,
    .remove = tft_remove,
    .driver = {
        .name   = "ecspi_tft",
        .owner  = THIS_MODULE,
        .of_match_table = tft_of_match_table,
    },
};

static int __init tft_driver_init(void) {
    int status;
    status = spi_register_driver(&tft_driver);
    pr_info("tft_driver_init status : %d\r\n", status);
    return status;
}

static void __exit tft_driver_exit(void) {
    pr_info("tft_driver_exit\r\n");
    spi_unregister_driver(&tft_driver);
}

module_init(tft_driver_init);
module_exit(tft_driver_exit);

MODULE_AUTHOR("donge, <xihangdong@163.com>");
MODULE_DESCRIPTION("TFT driver interface");
MODULE_LICENSE("GPL");
