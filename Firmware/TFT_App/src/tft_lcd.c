#include "tft_lcd.h"
#include "GUI_Paint.h"
#include "fonts.h"
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include "GUI_BMP.h"
#include "button.h"

int Welcome_Show(int fd)
{
	int ret = 0;
	UWORD *BlackImage;
	UDOUBLE Imagesize = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;
	
	if((BlackImage = (UWORD *)malloc(Imagesize)) == NULL) {
		printf("Failed to apply for black memory...\r\n");
		exit(0);
	}
	Paint_NewImage(BlackImage, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);
	Paint_DrawString_EN(25, 30, "Welcome to", &Font16, BLACK, YELLOW);
	Paint_DrawString_EN(25, 60, "Desktop", &Font16, BLACK, YELLOW);
	Paint_DrawString_EN(25, 90, "Focus", &Font16, BLACK, YELLOW);
	
	write(fd, BlackImage, Imagesize);

	return ret;
}

int Desktop_Focus(int fd)
{
	int ret = 0;
	UWORD *BlackImage;
	UDOUBLE Imagesize = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;
    PAINT_TIME sPaint_time; //time struct

	if((BlackImage = (UWORD *)malloc(Imagesize)) == NULL) {
		printf("Failed to apply for black memory...\r\n");
		exit(0);
	}
	
	// /*1.Create a new image cache named IMAGE_RGB and fill it with white*/
	Paint_NewImage(BlackImage, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);
	Paint_Clear(BLACK);

    sPaint_time.Min = 24;
    sPaint_time.Sec = 59;

	while (1) {
		if (Button_Status_Get()) {
			Paint_Clear(BLACK);
			Button_Status_Set(false);
			sPaint_time.Min = 24;
			sPaint_time.Sec = 59;
		}

		sPaint_time.Sec--;
		if (sPaint_time.Sec == 255) {
			sPaint_time.Sec = 59;
			sPaint_time.Min--;
			if (sPaint_time.Min == 255) {
				break;	
			}
		}
        Paint_ClearWindow(0, 0, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, BLACK);
        // Paint_DrawTime(15, 20, &sPaint_time, &Font48, BLACK, YELLOW);
        Paint_DrawTime(15 , 59 - sPaint_time.Sec, &sPaint_time, &Font48, BLACK, YELLOW);
 		write(fd, BlackImage, Imagesize);
		sleep(1);
	}
    free(BlackImage);
    BlackImage = NULL;
	return ret;
}

int Picture_Show(int fd)
{
	UWORD *BlackImage;
	UDOUBLE Imagesize = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;

	if((BlackImage = (UWORD *)malloc(Imagesize)) == NULL) {
		printf("Failed to apply for black memory...\r\n");
		exit(0);
	}

	printf("show bmp\r\n");

	// /*1.Create a new image cache named IMAGE_RGB and fill it with white*/
	Paint_NewImage(BlackImage, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);

	GUI_ReadBmp("./pic/test.bmp");

	write(fd, BlackImage, Imagesize);

	sleep(1);
    free(BlackImage);
    BlackImage = NULL;
}
