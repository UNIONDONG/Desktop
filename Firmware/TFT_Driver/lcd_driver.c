#include "linux/delay.h"
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
#include "lcd_driver.h"
#include "linux/gfp.h"
#include "linux/slab.h"
#include "linux/uaccess.h"

#define DEV_NAME "ecspi_lcd"
#define DEV_CNT (1)
#define SCAN_DIR_DFT  U2D_R2L  	//Default scan direction = L2R_U2D

typedef struct {
	uint8_t id;
	dev_t dev_number;

	struct cdev lcd_cdev;
	struct spi_device *lcd_spi_dev;
	struct class *lcd_class;
	struct device *lcd_device;
	struct device_node *lcd_dev_node;

	/* lcd tft pin */
	int lcd_pin_dc;
	int lcd_pin_reset;
	int lcd_pin_backlight;
	int lcd_pin_cs;
	
	/* lcd property*/
	int lcd_width;
	int lcd_height;
	LCD_DIS lcd_dis;
	
} LCD_DEVICE;

static LCD_DEVICE *lcd_tft;

#define LCD_WIDTH  160  //LCD width
#define LCD_HEIGHT  128 //LCD height
#define LCD_X	 2
#define LCD_Y	 1

#define LCD_PIN_SET_HIGH(pin) \
	gpio_direction_output(pin, 1)
#define LCD_PIN_SET_LOW(pin) \
	gpio_direction_output(pin, 0)

static void tft_reset(LCD_DEVICE *tft_dev)
{
	LCD_PIN_SET_HIGH(tft_dev->lcd_pin_reset);
	mdelay(100);
	LCD_PIN_SET_LOW(tft_dev->lcd_pin_reset);
	mdelay(100);
	LCD_PIN_SET_HIGH(tft_dev->lcd_pin_reset);
	mdelay(100);
}

static void tft_write_command(LCD_DEVICE *tft_dev, uint8_t command)
{
	struct spi_message msg;
	struct spi_transfer *trans;
	uint8_t txdata = command;

	trans = kzalloc(sizeof(struct spi_transfer), GFP_KERNEL);
	if (IS_ERR_OR_NULL(trans)) {
		pr_err("alloc spi transfer failed.\r\n");
		return;
	}

	LCD_PIN_SET_LOW(tft_dev->lcd_pin_dc);
	trans->tx_buf = &txdata;
	trans->len = 1;
	trans->bits_per_word = 8;
	
	spi_message_init(&msg);
	spi_message_add_tail(trans, &msg);
	spi_sync(tft_dev->lcd_spi_dev, &msg);
	
	kfree(trans);
}

static void tft_write_data(LCD_DEVICE *tft_dev, uint8_t data)
{
	struct spi_message msg;
	struct spi_transfer *trans;
	uint8_t txdata = data;
	trans = kzalloc(sizeof(struct spi_transfer), GFP_KERNEL);
	if (IS_ERR_OR_NULL(trans)) {
		pr_err("alloc spi transfer failed.\r\n");
		return;
	}

	LCD_PIN_SET_HIGH(tft_dev->lcd_pin_dc);

	trans->tx_buf = &txdata;
	trans->len = 1;
	trans->bits_per_word = 8;
	
	spi_message_init(&msg);
	spi_message_add_tail(trans, &msg);
	spi_sync(tft_dev->lcd_spi_dev, &msg);
	
	kfree(trans);
}

static void tft_write_data_16bit(LCD_DEVICE *tft_dev, uint16_t data)
{
	struct spi_message msg;
	struct spi_transfer *trans;
	uint8_t txdata = data >> 8;

	trans = kzalloc(sizeof(struct spi_transfer), GFP_KERNEL);
	if (IS_ERR_OR_NULL(trans)) {
		pr_err("alloc spi transfer failed.\r\n");
		return;
	}

	LCD_PIN_SET_HIGH(tft_dev->lcd_pin_dc);

	trans->tx_buf = &txdata;
	trans->len = 1;
	trans->bits_per_word = 8;
	
	spi_message_init(&msg);
	spi_message_add_tail(trans, &msg);
	spi_sync(tft_dev->lcd_spi_dev, &msg);
	
	txdata = data & 0xFF;
	trans->tx_buf = &txdata;
	spi_sync(tft_dev->lcd_spi_dev, &msg);
	
	kfree(trans);
}

static void tft_init_reg(LCD_DEVICE *tft_dev)
{
    //ST7735R Frame Rate
    tft_write_command(tft_dev, 0xB1);
    tft_write_data(tft_dev, 0x01);
    tft_write_data(tft_dev, 0x2C);
    tft_write_data(tft_dev, 0x2D);

    tft_write_command(tft_dev, 0xB2);
    tft_write_data(tft_dev, 0x01);
    tft_write_data(tft_dev, 0x2C);
    tft_write_data(tft_dev, 0x2D);

    tft_write_command(tft_dev, 0xB3);
    tft_write_data(tft_dev, 0x01);
    tft_write_data(tft_dev, 0x2C);
    tft_write_data(tft_dev, 0x2D);
    tft_write_data(tft_dev, 0x01);
    tft_write_data(tft_dev, 0x2C);
    tft_write_data(tft_dev, 0x2D);

    tft_write_command(tft_dev, 0xB4); //Column inversion
    tft_write_data(tft_dev, 0x07);

    //ST7735R Power Sequence
    tft_write_command(tft_dev, 0xC0);
    tft_write_data(tft_dev, 0xA2);
    tft_write_data(tft_dev, 0x02);
    tft_write_data(tft_dev, 0x84);
    tft_write_command(tft_dev, 0xC1);
    tft_write_data(tft_dev, 0xC5);

    tft_write_command(tft_dev, 0xC2);
    tft_write_data(tft_dev, 0x0A);
    tft_write_data(tft_dev, 0x00);

    tft_write_command(tft_dev, 0xC3);
    tft_write_data(tft_dev, 0x8A);
    tft_write_data(tft_dev, 0x2A);
    tft_write_command(tft_dev, 0xC4);
    tft_write_data(tft_dev, 0x8A);
    tft_write_data(tft_dev, 0xEE);

    tft_write_command(tft_dev, 0xC5); //VCOM
    tft_write_data(tft_dev, 0x0E);

    //ST7735R Gamma Sequence
    tft_write_command(tft_dev, 0xe0);
    tft_write_data(tft_dev, 0x0f);
    tft_write_data(tft_dev, 0x1a);
    tft_write_data(tft_dev, 0x0f);
    tft_write_data(tft_dev, 0x18);
    tft_write_data(tft_dev, 0x2f);
    tft_write_data(tft_dev, 0x28);
    tft_write_data(tft_dev, 0x20);
    tft_write_data(tft_dev, 0x22);
    tft_write_data(tft_dev, 0x1f);
    tft_write_data(tft_dev, 0x1b);
    tft_write_data(tft_dev, 0x23);
    tft_write_data(tft_dev, 0x37);
    tft_write_data(tft_dev, 0x00);
    tft_write_data(tft_dev, 0x07);
    tft_write_data(tft_dev, 0x02);
    tft_write_data(tft_dev, 0x10);

    tft_write_command(tft_dev, 0xe1);
    tft_write_data(tft_dev, 0x0f);
    tft_write_data(tft_dev, 0x1b);
    tft_write_data(tft_dev, 0x0f);
    tft_write_data(tft_dev, 0x17);
    tft_write_data(tft_dev, 0x33);
    tft_write_data(tft_dev, 0x2c);
    tft_write_data(tft_dev, 0x29);
    tft_write_data(tft_dev, 0x2e);
    tft_write_data(tft_dev, 0x30);
    tft_write_data(tft_dev, 0x30);
    tft_write_data(tft_dev, 0x39);
    tft_write_data(tft_dev, 0x3f);
    tft_write_data(tft_dev, 0x00);
    tft_write_data(tft_dev, 0x07);
    tft_write_data(tft_dev, 0x03);
    tft_write_data(tft_dev, 0x10);

    tft_write_command(tft_dev, 0xF0); //Enable test command
    tft_write_data(tft_dev, 0x01);

    tft_write_command(tft_dev, 0xF6); //Disable ram power save mode
    tft_write_data(tft_dev, 0x00);

    tft_write_command(tft_dev, 0x3A); //65k mode
    tft_write_data(tft_dev, 0x05);
}

/********************************************************************************
function:	Set the display scan and color transfer modes
parameter:
		Scan_dir   :   Scan direction
		Colorchose :   RGB or GBR color format
********************************************************************************/
void tft_set_gram_scanway(LCD_DEVICE *tft_dev, LCD_SCAN_DIR Scan_dir)
{
	uint16_t MemoryAccessReg_Data = 0;  //0x36

    //Get the screen scan direction
	LCD_DIS *lcd_dis = &tft_dev->lcd_dis;

	lcd_dis->LCD_Scan_Dir = Scan_dir;

	//Get GRAM and LCD width and height
	if(Scan_dir == L2R_U2D || Scan_dir == L2R_D2U || Scan_dir == R2L_U2D || Scan_dir == R2L_D2U){
		lcd_dis->LCD_Dis_Column	= LCD_HEIGHT ;
		lcd_dis->LCD_Dis_Page = LCD_WIDTH ;		
		lcd_dis->LCD_X_Adjust = LCD_X;
		lcd_dis->LCD_Y_Adjust = LCD_Y;
	}else{
		lcd_dis->LCD_Dis_Column	= LCD_WIDTH ;
		lcd_dis->LCD_Dis_Page = LCD_HEIGHT ;	
		lcd_dis->LCD_X_Adjust = LCD_Y;
		lcd_dis->LCD_Y_Adjust = LCD_X;
	}

    // Gets the scan direction of GRAM
    switch (Scan_dir) {
    case L2R_U2D:
        MemoryAccessReg_Data = 0X00 | 0x00;//x Scan direction | y Scan direction
        break;
    case L2R_D2U:
        MemoryAccessReg_Data = 0x00 | 0x80;//0xC8 | 0X10
        break;
    case R2L_U2D:	//0X04
        MemoryAccessReg_Data = 0x40 | 0x00;
        break;
    case R2L_D2U:	//0X0C
        MemoryAccessReg_Data = 0x40 | 0x80;
        break;
    case U2D_L2R:	//0X02
        MemoryAccessReg_Data = 0X00 | 0X00 | 0x20;
        break;
    case U2D_R2L:	//0X06
        MemoryAccessReg_Data = 0x00 | 0X40 | 0x20;
        break;
    case D2U_L2R:	//0X0A
        MemoryAccessReg_Data = 0x80 | 0x00 | 0x20;
        break;
    case D2U_R2L:	//0X0E
        MemoryAccessReg_Data = 0x40 | 0x80 | 0x20;
        break;
    }

    // Set the read / write scan direction of the frame memory
    tft_write_command(tft_dev, 0x36); //MX, MY, RGB mode
    tft_write_data(tft_dev, MemoryAccessReg_Data & 0xf7);	//RGB color filter panel
}

static void tft_init(LCD_DEVICE *tft_dev)
{
	pr_info("lcd backlight pin: %d\r\n", tft_dev->lcd_pin_backlight);
	// backlight setting
	LCD_PIN_SET_HIGH(tft_dev->lcd_pin_backlight);

	tft_reset(tft_dev);
	tft_init_reg(tft_dev);
	tft_set_gram_scanway(tft_dev, SCAN_DIR_DFT);
	mdelay(200);
	tft_write_command(tft_dev, 0x11);
	mdelay(120);
	tft_write_command(tft_dev, 0x29);
}

/********************************************************************************
function:	Sets the start position and size of the display area
parameter:
		Xstart 	:   X direction Start coordinates
		Ystart  :   Y direction Start coordinates
		Xend    :   X direction end coordinates
		Yend    :   Y direction end coordinates
********************************************************************************/
void lcd_setwindows(LCD_DEVICE *tft_dev, uint16_t Xstart, uint16_t Ystart, uint16_t Xend, uint16_t Yend )
{

    //set the X coordinates
    tft_write_command(tft_dev, 0x2A);
    tft_write_data(tft_dev, 0x00);						//Set the horizontal starting point to the high octet
    tft_write_data(tft_dev, (Xstart & 0xff) + tft_dev->lcd_dis.LCD_X_Adjust);			//Set the horizontal starting point to the low octet
    tft_write_data(tft_dev, 0x00 );				//Set the horizontal end to the high octet
    tft_write_data (tft_dev, (( Xend ) & 0xff) + tft_dev->lcd_dis.LCD_X_Adjust);	//Set the horizontal end to the low octet

    //set the Y coordinates
    tft_write_command(tft_dev, 0x2B);
    tft_write_data(tft_dev, 0x00);
    tft_write_data(tft_dev, (Ystart & 0xff) + tft_dev->lcd_dis.LCD_Y_Adjust);
    tft_write_data(tft_dev, 0x00 );
    tft_write_data(tft_dev, ((Yend) & 0xff)+ tft_dev->lcd_dis.LCD_Y_Adjust);

    tft_write_command(tft_dev, 0x2C);

}

static void lcd_clean(LCD_DEVICE *tft_dev, uint16_t Color)
{
    uint16_t j, i;
	uint16_t height = tft_dev->lcd_height;
	uint16_t width = tft_dev->lcd_width;

    uint16_t Image[height * width];
    
    Color = ((Color<<8)&0xff00) | (Color>>8);
   
    for (j = 0; j < height * width; ++j) {
        Image[j] = Color;
    }
    
    lcd_setwindows(tft_dev, 0, 0, width, height);

	LCD_PIN_SET_HIGH(tft_dev->lcd_pin_dc);

    for(i = 0; i < LCD_HEIGHT; i++)
    {
        for(j = 0; j < LCD_WIDTH;j++)
        {
            tft_write_data_16bit(tft_dev, Color);
        }
    }
}

// void LCD_Disp_Pic(void)
// {
//     // struct lcd_spi_dev *dev = &lcd_dev;
//     int i,j;
//     static char pic[128];
//
//     for(i=0; i<128; i++)
//     {
//         pic[i] = 0xf8;
//     }
//
//     /* 设置屏幕和显示部分 */
//     lcd_setwindows(0, 0, 159, 127);
//     for(i=0; i<128; i++)
//     {
//         for(j=0; j<160;j++)
//         {
//             tft_write_data_16bit(GRAY2);
//         }
//     }
//
//
//
//
//     lcd_setwindows(0, 0, 79, 63);
//     for(i=0; i<79; i++)
//     {
//         for(j=0; j<63;j++)
//         {
//             tft_write_data_16bit(WHITE);
//         }
//     }
//
//     lcd_setwindows(0, 63, 79, 127);
//     for(i=0; i<79; i++)
//     {
//         for(j=0; j<63;j++)
//         {
//             tft_write_data_16bit(RED);
//         }
//     }
//
//     lcd_setwindows(79, 0, 159, 63);
//     for(i=0; i<79; i++)
//     {
//         for(j=0; j<63;j++)
//         {
//             tft_write_data_16bit(GREEN);
//         }
//     }
//
//     lcd_setwindows(79, 63, 159, 127);
//     for(i=0; i<79; i++)
//     {
//         for(j=0; j<63;j++)
//         {
//             tft_write_data_16bit(YELLOW);
//         }
//     }
//
//     mdelay(10);
//
//     printk(KERN_ALERT "LCD display picture ok!\r\n");
// }



static int tft_open(struct inode *inode, struct file *file)
{
	struct cdev *tft_cdev = inode->i_cdev;
	LCD_DEVICE *tft_dev = container_of(tft_cdev, LCD_DEVICE, lcd_cdev);
	// LCD_DEVICE *tft_dev = lcd_tft;
	file->private_data = tft_dev;

	pr_info("origin addr: 0x%x , current addr : 0x%x\r\n", 0, tft_dev->lcd_spi_dev);
	pr_info("lcd init ......");
	// tft_init(tft_dev);
	// lcd_clean(tft_dev, BLACK);
	return 0;
}

static int tft_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *off)
{
	int num = 0, i = 0;
	LCD_DEVICE *tft_dev = filp->private_data;

	uint16_t *Image;
	Image = (uint16_t *)kzalloc(cnt, GFP_KERNEL);
	num = copy_from_user(Image, buf, cnt);
	pr_info("write ......\r\n");
    for(i = 0; i < cnt / 2; i++)
    {
        tft_write_data_16bit(tft_dev, Image[i]);
    }

	kfree(Image);
	return 0;
}

static int tft_release(struct inode *inode, struct file *filp)
{
	LCD_DEVICE *tft_dev = filp->private_data;
	pr_info("origin addr: 0x%x , current addr : 0x%x\r\n", lcd_tft, tft_dev);
	pr_info("exit\r\n");
	// lcd_clean(tft_dev, WHITE);
	return 0;
}

static struct file_operations tft_char_dev_ops = {
	.owner = THIS_MODULE,
	.open = tft_open,
	.write = tft_write,
	.release = tft_release
};

static int lcd_hardware_reset(LCD_DEVICE *lcd_dev)
{
	int ret = 0;

	if (IS_ERR_OR_NULL(lcd_dev)) {
		pr_err("lcd_dev is null!");
		return -1;
	}

	// dts prase, in order to get pins
	lcd_dev->lcd_dev_node = of_find_node_by_name(NULL, "ecspi_tft");
    if(lcd_dev->lcd_dev_node == NULL) {
        pr_err("get lcd device node failed\r\n");
		return -1;
    }

    lcd_dev->lcd_pin_dc = of_get_named_gpio(lcd_dev->lcd_dev_node, "dc-pin", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_pin_dc)) {
		pr_info("get pin_dc error\r\n");
		return -1;
	} else {
		pr_info("lcd_pin_dc is %d\r\n", lcd_dev->lcd_pin_dc);
		gpio_direction_output(lcd_dev->lcd_pin_dc, 1);
	}
        
    lcd_dev->lcd_pin_reset = of_get_named_gpio(lcd_dev->lcd_dev_node, "reset-pin", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_pin_reset)) {
		pr_info("get pin_reset error\r\n");
		return -1;
	} else {
		pr_info("lcd_pin_reset is %d\r\n", lcd_dev->lcd_pin_reset);
		gpio_direction_output(lcd_dev->lcd_pin_reset, 1);
	}

    lcd_dev->lcd_pin_backlight = of_get_named_gpio(lcd_dev->lcd_dev_node, "backlight-pin", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_pin_backlight)) {
		pr_info("get pin_backlight error\r\n");
		return -1;
	} else {
		pr_info("lcd_pin_backlight is %d\r\n", lcd_dev->lcd_pin_backlight);
		gpio_direction_output(lcd_dev->lcd_pin_backlight, 1);
	}

    ret = of_property_read_u32_index(lcd_dev->lcd_dev_node, "lcd-width", 0, &lcd_dev->lcd_width);
	if (ret < 0) {
		pr_info("get lcd width error\r\n");
		return -1;
	} else {
		pr_info("lcd width is %d\r\n", lcd_dev->lcd_width);
	}

    ret = of_property_read_u32_index(lcd_dev->lcd_dev_node, "lcd-height", 0, &lcd_dev->lcd_height);
	if (ret < 0) {
		pr_info("get lcd_height error\r\n");
		return -1;
	} else {
		pr_info("lcd_height is %d\r\n", lcd_dev->lcd_height);
	}

	return 0;
}

static int lcd_probe(struct spi_device *spi)
{
    int ret = 0;
	LCD_DEVICE *lcd_dev;
    pr_info("lcd driver probe\r\n");
	lcd_dev = kzalloc(sizeof(LCD_DEVICE), GFP_KERNEL);
	if (IS_ERR_OR_NULL(lcd_dev)) {
		pr_err("kzalloc error!\r\n");
		ret = -ENOMEM;
		goto alloc_err;
	}
	lcd_tft = lcd_dev;

	lcd_hardware_reset(lcd_dev);

	// spi config
	lcd_dev->lcd_spi_dev = spi;
	pr_info("origin addr: 0x%x , current addr : 0x%x\r\n", spi, lcd_dev->lcd_spi_dev);

	lcd_dev->lcd_spi_dev->mode = SPI_MODE_0;
	lcd_dev->lcd_spi_dev->max_speed_hz = 20000000;
    spi_setup(lcd_dev->lcd_spi_dev);
	
	// char dev create
    ret = alloc_chrdev_region(&lcd_dev->dev_number, 0, DEV_CNT, DEV_NAME);
    if(ret < 0) {
        pr_err("alloc lcd device number failed\r\n");
        goto alloc_err;
    }
	pr_info("lcd_device_number: %x\r\n", lcd_dev->dev_number);
	// lcd_dev->lcd_cdev = cdev_alloc();
    lcd_dev->lcd_cdev.owner = THIS_MODULE;
    cdev_init(&lcd_dev->lcd_cdev, &tft_char_dev_ops);
    ret = cdev_add(&lcd_dev->lcd_cdev, lcd_dev->dev_number, DEV_CNT);
    if(ret < 0) {
        pr_err("add cdev failed, err_code : %d \r\n", ret);
        goto add_err;
    }
	// class create
    lcd_dev->lcd_class = class_create(THIS_MODULE, DEV_NAME);
    lcd_dev->lcd_device = device_create(lcd_dev->lcd_class, NULL, lcd_dev->dev_number, NULL, DEV_NAME);

	pr_info("max_speed_hz = %d\r\n", lcd_dev->lcd_spi_dev->max_speed_hz);
	pr_info("chip_select = %d\r\n", (int)lcd_dev->lcd_spi_dev->chip_select);
	pr_info("bits_per_word = %d\r\n", (int)lcd_dev->lcd_spi_dev->bits_per_word);
	pr_info("mode = %d\r\n", lcd_dev->lcd_spi_dev->mode);
	
  	return 0;

add_err:
	unregister_chrdev_region(lcd_dev->dev_number, DEV_CNT);
	pr_err("add char dev error \r\n");
	
alloc_err:
	return -1;
}

static int lcd_remove(struct spi_device *spi) {

	LCD_DEVICE *lcd_dev = container_of(&spi, LCD_DEVICE, lcd_spi_dev);

	pr_info("origin addr: 0x%x , current addr : 0x%x\r\n", spi, lcd_dev->lcd_spi_dev);
	pr_info("lcd driver remove");
	device_destroy(lcd_dev->lcd_class, lcd_dev->dev_number);
	class_destroy(lcd_dev->lcd_class);
	cdev_del(&lcd_dev->lcd_cdev);
	unregister_chrdev_region(lcd_dev->dev_number, DEV_CNT);
	return 0;
}

static const struct of_device_id lcd_of_match_table[] = {
    {.compatible = "fire,ecspi_lcd"},
    {}
};

struct spi_driver lcd_driver = {
    .probe  = lcd_probe,
    .remove = lcd_remove,
    .driver = {
        .name   = "ecspi_lcd",
        .owner  = THIS_MODULE,
        .of_match_table = lcd_of_match_table,
    },
};

static int __init lcd_driver_init(void) {
    int status;
    status = spi_register_driver(&lcd_driver);
    pr_info("lcd_driver_init status : %d\r\n", status);
    return status;
}

static void __exit lcd_driver_exit(void) {
    pr_info("lcd_driver_exit\r\n");
    spi_unregister_driver(&lcd_driver);
}

module_init(lcd_driver_init);
module_exit(lcd_driver_exit);

MODULE_AUTHOR("donge, <xihangdong@163.com>");
MODULE_DESCRIPTION("TFT driver interface");
MODULE_LICENSE("GPL");
