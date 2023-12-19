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

	struct cdev *lcd_cdev;
	struct spi_device *lcd_spi_dev;
	struct class *lcd_class;
	struct device *lcd_dev;
	struct device_node *lcd_dev_node;

	/*lcd tft pin*/
	int lcd_pin_dc;
	int lcd_pin_reset;
	int lcd_pin_backlight;
	int lcd_pin_cs;
	
	int lcd_width;
	int lcd_height;
	
} LCD_DEVICE;

static struct LCD_DEVICE *lcd_tft;

struct device_node *lcd_device_node;
static dev_t spi_lcd_dev_number;
static struct cdev lcd_char_dev;
struct spi_device *spi_lcd_dev = NULL;
struct class *lcd_class = NULL;
struct device *lcd_device = NULL;

LCD_DIS sLCD_DIS;
#define LCD_WIDTH  160  //LCD width
#define LCD_HEIGHT  128 //LCD height
#define LCD_X	 2
#define LCD_Y	 1

#define LCD_BL_0 gpio_direction_output(lcd_pin_backlight, 0)
#define LCD_BL_1 gpio_direction_output(lcd_pin_backlight, 1)
#define LCD_RST_0 gpio_direction_output(lcd_pin_reset, 0)
#define LCD_RST_1 gpio_direction_output(lcd_pin_reset, 1)
#define LCD_DC_O gpio_direction_output(lcd_pin_dc, 0)
#define LCD_DC_1 gpio_direction_output(lcd_pin_dc, 1)

static void lcd_reset(void)
{
	LCD_RST_1;
	mdelay(100);
	LCD_RST_0;
	mdelay(100);
	LCD_RST_1;
	mdelay(100);
}

static void lcd_write_command(uint8_t command)
{
	int ret = 0;
	struct spi_message msg;
	struct spi_transfer *trans;
	uint8_t txdata = command;
	trans = kzalloc(sizeof(struct spi_transfer), GFP_KERNEL);
	if (IS_ERR_OR_NULL(trans)) {
		pr_err("alloc spi transfer failed.\r\n");
		return -EINVAL;
	}

	LCD_DC_O;
	trans->tx_buf = &txdata;
	trans->len = 1;
	trans->bits_per_word = 8;
	
	spi_message_init(&msg);
	spi_message_add_tail(trans, &msg);
	ret = spi_sync(spi_lcd_dev, &msg);
	
	kfree(trans);
	return ret;
}
static void lcd_write_data(uint8_t data)
{
	int ret = 0;
	struct spi_message msg;
	struct spi_transfer *trans;
	uint8_t txdata = data;
	trans = kzalloc(sizeof(struct spi_transfer), GFP_KERNEL);
	if (IS_ERR_OR_NULL(trans)) {
		pr_err("alloc spi transfer failed.\r\n");
		return -EINVAL;
	}

	LCD_DC_1;
	trans->tx_buf = &txdata;
	trans->len = 1;
	trans->bits_per_word = 8;
	
	spi_message_init(&msg);
	spi_message_add_tail(trans, &msg);
	ret = spi_sync(spi_lcd_dev, &msg);
	
	kfree(trans);
	return ret;

}

static void lcd_write_data_16bit(uint16_t data)
{
	int ret = 0;
	struct spi_message msg;
	struct spi_transfer *trans;
	uint8_t txdata = data >> 8;
	trans = kzalloc(sizeof(struct spi_transfer), GFP_KERNEL);
	if (IS_ERR_OR_NULL(trans)) {
		pr_err("alloc spi transfer failed.\r\n");
		return -EINVAL;
	}

	LCD_DC_1;
	trans->tx_buf = &txdata;
	trans->len = 1;
	trans->bits_per_word = 8;
	
	spi_message_init(&msg);
	spi_message_add_tail(trans, &msg);
	ret = spi_sync(spi_lcd_dev, &msg);
	
	txdata = data & 0xFF;
	trans->tx_buf = &txdata;
	ret = spi_sync(spi_lcd_dev, &msg);
	
	kfree(trans);
	return ret;

}

static void lcd_init_reg(void)
{
    //ST7735R Frame Rate
    lcd_write_command(0xB1);
    lcd_write_data(0x01);
    lcd_write_data(0x2C);
    lcd_write_data(0x2D);

    lcd_write_command(0xB2);
    lcd_write_data(0x01);
    lcd_write_data(0x2C);
    lcd_write_data(0x2D);

    lcd_write_command(0xB3);
    lcd_write_data(0x01);
    lcd_write_data(0x2C);
    lcd_write_data(0x2D);
    lcd_write_data(0x01);
    lcd_write_data(0x2C);
    lcd_write_data(0x2D);

    lcd_write_command(0xB4); //Column inversion
    lcd_write_data(0x07);

    //ST7735R Power Sequence
    lcd_write_command(0xC0);
    lcd_write_data(0xA2);
    lcd_write_data(0x02);
    lcd_write_data(0x84);
    lcd_write_command(0xC1);
    lcd_write_data(0xC5);

    lcd_write_command(0xC2);
    lcd_write_data(0x0A);
    lcd_write_data(0x00);

    lcd_write_command(0xC3);
    lcd_write_data(0x8A);
    lcd_write_data(0x2A);
    lcd_write_command(0xC4);
    lcd_write_data(0x8A);
    lcd_write_data(0xEE);

    lcd_write_command(0xC5); //VCOM
    lcd_write_data(0x0E);

    //ST7735R Gamma Sequence
    lcd_write_command(0xe0);
    lcd_write_data(0x0f);
    lcd_write_data(0x1a);
    lcd_write_data(0x0f);
    lcd_write_data(0x18);
    lcd_write_data(0x2f);
    lcd_write_data(0x28);
    lcd_write_data(0x20);
    lcd_write_data(0x22);
    lcd_write_data(0x1f);
    lcd_write_data(0x1b);
    lcd_write_data(0x23);
    lcd_write_data(0x37);
    lcd_write_data(0x00);
    lcd_write_data(0x07);
    lcd_write_data(0x02);
    lcd_write_data(0x10);

    lcd_write_command(0xe1);
    lcd_write_data(0x0f);
    lcd_write_data(0x1b);
    lcd_write_data(0x0f);
    lcd_write_data(0x17);
    lcd_write_data(0x33);
    lcd_write_data(0x2c);
    lcd_write_data(0x29);
    lcd_write_data(0x2e);
    lcd_write_data(0x30);
    lcd_write_data(0x30);
    lcd_write_data(0x39);
    lcd_write_data(0x3f);
    lcd_write_data(0x00);
    lcd_write_data(0x07);
    lcd_write_data(0x03);
    lcd_write_data(0x10);

    lcd_write_command(0xF0); //Enable test command
    lcd_write_data(0x01);

    lcd_write_command(0xF6); //Disable ram power save mode
    lcd_write_data(0x00);

    lcd_write_command(0x3A); //65k mode
    lcd_write_data(0x05);
}

/********************************************************************************
function:	Set the display scan and color transfer modes
parameter:
		Scan_dir   :   Scan direction
		Colorchose :   RGB or GBR color format
********************************************************************************/
void lcd_set_gram_scanway(LCD_SCAN_DIR Scan_dir)
{
    //Get the screen scan direction
    sLCD_DIS.LCD_Scan_Dir = Scan_dir;

	//Get GRAM and LCD width and height
	if(Scan_dir == L2R_U2D || Scan_dir == L2R_D2U || Scan_dir == R2L_U2D || Scan_dir == R2L_D2U){
		sLCD_DIS.LCD_Dis_Column	= LCD_HEIGHT ;
		sLCD_DIS.LCD_Dis_Page = LCD_WIDTH ;		
		sLCD_DIS.LCD_X_Adjust = LCD_X;
		sLCD_DIS.LCD_Y_Adjust = LCD_Y;
	}else{
		sLCD_DIS.LCD_Dis_Column	= LCD_WIDTH ;
		sLCD_DIS.LCD_Dis_Page = LCD_HEIGHT ;	
		sLCD_DIS.LCD_X_Adjust = LCD_Y;
		sLCD_DIS.LCD_Y_Adjust = LCD_X;
	}

    // Gets the scan direction of GRAM
    uint16_t MemoryAccessReg_Data=0;  //0x36
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
    lcd_write_command(0x36); //MX, MY, RGB mode
    lcd_write_data( MemoryAccessReg_Data & 0xf7);	//RGB color filter panel
}

static void lcd_init(void)
{
	LCD_BL_1;
	lcd_reset();
	lcd_init_reg();
	lcd_set_gram_scanway(SCAN_DIR_DFT);
	mdelay(200);
	lcd_write_command(0x11);
	mdelay(120);
	lcd_write_command(0x29);
}

/********************************************************************************
function:	Sets the start position and size of the display area
parameter:
		Xstart 	:   X direction Start coordinates
		Ystart  :   Y direction Start coordinates
		Xend    :   X direction end coordinates
		Yend    :   Y direction end coordinates
********************************************************************************/
void lcd_setwindows( uint16_t Xstart, uint16_t Ystart, uint16_t Xend, uint16_t Yend )
{

    //set the X coordinates
    lcd_write_command(0x2A);
    lcd_write_data(0x00);						//Set the horizontal starting point to the high octet
    lcd_write_data((Xstart & 0xff) + sLCD_DIS.LCD_X_Adjust);			//Set the horizontal starting point to the low octet
    lcd_write_data(0x00 );				//Set the horizontal end to the high octet
    lcd_write_data ((( Xend ) & 0xff) + sLCD_DIS.LCD_X_Adjust);	//Set the horizontal end to the low octet

    //set the Y coordinates
    lcd_write_command(0x2B);
    lcd_write_data(0x00);
    lcd_write_data((Ystart & 0xff) + sLCD_DIS.LCD_Y_Adjust);
    lcd_write_data(0x00 );
    lcd_write_data(((Yend) & 0xff)+ sLCD_DIS.LCD_Y_Adjust);

    lcd_write_command(0x2C);

}

static void lcd_clean(uint16_t Color)
{
    uint16_t j, i;
    uint16_t Image[LCD_HEIGHT * LCD_WIDTH];
    
    Color = ((Color<<8)&0xff00)|(Color>>8);
   
    for (j = 0; j < LCD_HEIGHT*LCD_WIDTH; j++) {
        Image[j] = Color;
    }
    
    lcd_setwindows(0, 0, LCD_WIDTH,LCD_HEIGHT);
    LCD_DC_1;
    for(i = 0; i < LCD_HEIGHT; i++)
    {
        for(j = 0; j < LCD_WIDTH;j++)
        {
            lcd_write_data_16bit(Color);
        }
    }
}

void LCD_Disp_Pic(void)
{
    // struct spi_lcd_dev *dev = &lcd_dev;
    int i,j;
    static char pic[128];

    for(i=0; i<128; i++)
    {
        pic[i] = 0xf8;
    }

    /* 设置屏幕和显示部分 */
    lcd_setwindows(0, 0, 159, 127);
    for(i=0; i<128; i++)
    {
        for(j=0; j<160;j++)
        {
            lcd_write_data_16bit(GRAY2);
        }
    }




    lcd_setwindows(0, 0, 79, 63);
    for(i=0; i<79; i++)
    {
        for(j=0; j<63;j++)
        {
            lcd_write_data_16bit(WHITE);
        }
    }

    lcd_setwindows(0, 63, 79, 127);
    for(i=0; i<79; i++)
    {
        for(j=0; j<63;j++)
        {
            lcd_write_data_16bit(RED);
        }
    }

    lcd_setwindows(79, 0, 159, 63);
    for(i=0; i<79; i++)
    {
        for(j=0; j<63;j++)
        {
            lcd_write_data_16bit(GREEN);
        }
    }

    lcd_setwindows(79, 63, 159, 127);
    for(i=0; i<79; i++)
    {
        for(j=0; j<63;j++)
        {
            lcd_write_data_16bit(YELLOW);
        }
    }

    mdelay(10);

    printk(KERN_ALERT "LCD display picture ok!\r\n");
}



static int lcd_open(struct inode *inode, struct file *file)
{
	pr_info("lcd init ......");
	lcd_init();
	lcd_clean(BLACK);
	return 0;
}

static int lcd_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *off)
{
	int num = 0, i = 0;

	uint16_t *Image;
	Image = (uint16_t *)kzalloc(cnt, GFP_KERNEL);
	num = copy_from_user(Image, buf, cnt);
	pr_info("write ......\r\n");
    for(i = 0; i < cnt / 2; i++)
    {
        lcd_write_data_16bit(Image[i]);
    }

	kfree(Image);
	return 0;
}

static int lcd_release(struct inode *inode, struct file *filp) {
	pr_info("exit\r\n");
	lcd_clean(WHITE);
	return 0;
}

static struct file_operations lcd_char_dev_ops = {
	.owner = THIS_MODULE,
	.open = lcd_open,
	.write = lcd_write,
	.release = lcd_release
};

static int lcd_hardware_reset(struct LCD_DEVICE *lcd_dev)
{
	if (IS_ERR_OR_NULL(lcd_dev)) {
		pr_err("lcd_dev is null!");
		return -1;
	}

	// dts prase, in order to get pins
	lcd_dev->lcd_dev_node = of_find_node_by_name(NULL, "ecspi_tft");
    if(lcd_dev->lcd_device_node == NULL) {
        pr_err("get lcd device node failed\r\n");
		return -1;
    }

    lcd_dev->lcd_pin_dc = of_get_named_gpio(lcd_dev->lcd_device_node, "dc-pin", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_pin_dc)) {
		pr_info("get pin_dc error\r\n");
		return -1;
	} else {
		pr_info("lcd_pin_dc is %d\r\n", lcd_dev->lcd_pin_dc);
		gpio_direction_output(lcd_dev->lcd_pin_dc, 1);
	}
        
    lcd_dev->lcd_pin_reset = of_get_named_gpio(lcd_dev->lcd_device_node, "reset-pin", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_pin_reset)) {
		pr_info("get pin_reset error\r\n");
		return -1;
	} else {
		pr_info("lcd_pin_reset is %d\r\n", lcd_dev->lcd_pin_reset);
		gpio_direction_output(lcd_dev->lcd_pin_reset, 1);
	}

    lcd_dev->lcd_pin_backlight = of_get_named_gpio(lcd_dev->lcd_device_node, "backlight-pin", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_pin_backlight)) {
		pr_info("get pin_backlight error\r\n");
		return -1;
	} else {
		pr_info("lcd_pin_backlight is %d\r\n", lcd_dev->lcd_pin_backlight);
		gpio_direction_output(lcd_dev->lcd_pin_backlight, 1);
	}

    lcd_dev->lcd_width = of_get_named_gpio(lcd_dev->lcd_device_node, "lcd-width", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_width)) {
		pr_info("get lcd width error\r\n");
		return -1;
	} else {
		pr_info("lcd width is %d\r\n", lcd_dev->lcd_width);
	}

    lcd_dev->lcd_height = of_get_named_gpio(lcd_dev->lcd_height, "lcd-height", 0);
	if (IS_ERR_VALUE(lcd_dev->lcd_height)) {
		pr_info("get lcd_height error\r\n");
		return -1;
	} else {
		pr_info("lcd_height is %d\r\n", lcd_dev->lcd_height);
	}

	return 0;
}

static int lcd_probe(struct spi_device *spi) {
    int ret = 0;

    pr_info("lcd driver probe\r\n");

	lcd_tft = kzalloc(sizeof(struct LCD_DEVICE), GFP_KERNEL);
	if (IS_ERR_OR_NULL(lcd_tft)) {
		pr_err("%s : kzalloc error!");
		ret = -ENOMEM;
		goto alloc_err;
	}

	lcd_hardware_pin_reset(lcd_tft);

	// spi config
	lcd_tft->spi_lcd_dev = spi;
	lcd_tft->spi_lcd_dev->mode = SPI_MODE_0;
	lcd_tft->spi_lcd_dev->max_speed_hz = 20000000;
    spi_setup(lcd_tft->spi_lcd_dev);
	
	// char dev create
    ret = alloc_chrdev_region(&lcd_tft->spi_lcd_dev_number, 0, DEV_CNT, DEV_NAME);
    if(ret < 0) {
        pr_err("alloc lcd device number failed\r\n");
        goto alloc_err;
    }
	pr_info("lcd_device_number: %x\r\n", spi_lcd_dev_number);
    lcd_char_dev.owner = THIS_MODULE;
    cdev_init(&lcd_char_dev, &lcd_char_dev_ops);
    ret = cdev_add(&lcd_char_dev, spi_lcd_dev_number, DEV_CNT);
    if(ret < 0) {
        pr_err("add cdev failed, err_code : %d \r\n", ret);
        goto add_err;
    }
	// class create
    lcd_class = class_create(THIS_MODULE, DEV_NAME);
    lcd_device = device_create(lcd_class, NULL, spi_lcd_dev_number, NULL, DEV_NAME);

	pr_info("max_speed_hz = %d\r\n", spi_lcd_dev->max_speed_hz);
	pr_info("chip_select = %d\r\n", (int)spi_lcd_dev->chip_select);
	pr_info("bits_per_word = %d\r\n", (int)spi_lcd_dev->bits_per_word);
	pr_info("mode = %d\r\n", spi_lcd_dev->mode);
	pr_info("cs_gpio = %d\r\n", spi_lcd_dev->cs_gpio);
	
  	return 0;

add_err:
	unregister_chrdev_region(spi_lcd_dev_number, DEV_CNT);
	pr_err("add char dev error \r\n");
	
alloc_err:
	return -1;
}

static int lcd_remove(struct spi_device *spi) {
	pr_info("lcd driver remove");
	device_destroy(lcd_class, spi_lcd_dev_number);
	class_destroy(lcd_class);
	cdev_del(&lcd_char_dev);
	unregister_chrdev_region(spi_lcd_dev_number, DEV_CNT);
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
