#include "tft_lcd.h"
#include "GUI_Paint.h"
#include "fonts.h"
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include "GUI_BMP.h"
#include "button.h"

static char s_Focus_Times = 25, s_Relex_Times = 10;

int ADJUST_TIME_MODE = 0;

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

int Costom_Times(int fd)
{
	int ret = 0;
	char str[64];
	int i = 0;
	UWORD *BlackImage;
	UDOUBLE Imagesize = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;
	
	if((BlackImage = (UWORD *)malloc(Imagesize)) == NULL) {
		printf("Failed to apply for black memory...\r\n");
		exit(0);
	}
	Paint_NewImage(BlackImage, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);
	Paint_DrawString_EN(25, 30, "Press Key2, Adjust Times ", &Font12, BLACK, YELLOW);
	sprintf(str, "Focus Times: %d", s_Focus_Times);
	Paint_DrawString_EN(25, 60, str, &Font12, BLACK, YELLOW);
	sprintf(str, "Relex Times: %d", s_Relex_Times);
	Paint_DrawString_EN(25, 90, str, &Font12, BLACK, YELLOW);

	write(fd, BlackImage, Imagesize);

	while(i < 4) {
		if(Button_Status_Get()) {
			ADJUST_TIME_MODE = 1;
			Button_Status_Set(false);
			Paint_Clear(BLACK);
			Paint_DrawString_EN(25, 30, "Enter Adjust Times Mode", &Font12, BLACK, YELLOW);
			sprintf(str, "Focus Times: %d", s_Focus_Times);
			Paint_DrawString_EN(25, 60, str, &Font12, BLACK, YELLOW);
			write(fd, BlackImage, Imagesize);
			break;
		}
		sleep(1);
		++i;
	}

	while(ADJUST_TIME_MODE) {
		if(Button2_Status_Get()) {
			s_Focus_Times+=5;
			if (s_Focus_Times > 60)
				s_Focus_Times = 25;
			Button2_Status_Set(false);
			Paint_Clear(BLACK);
			Paint_DrawString_EN(25, 30, "Enter Adjust Times Mode", &Font12, BLACK, YELLOW);
			sprintf(str, "Focus Times: %d", s_Focus_Times);
			Paint_DrawString_EN(25, 60, str, &Font12, BLACK, YELLOW);
			write(fd, BlackImage, Imagesize);
		}

		if(Button_Status_Get()) {
			Button_Status_Set(false);
			Paint_Clear(BLACK);
			Paint_DrawString_EN(25, 30, "Enter Adjust Times Mode", &Font12, BLACK, YELLOW);
			sprintf(str, "Relex Times: %d", s_Relex_Times);
			Paint_DrawString_EN(25, 90, str, &Font12, BLACK, YELLOW);
			write(fd, BlackImage, Imagesize);
			break;
		}
	}

	while(ADJUST_TIME_MODE) {
		if(Button2_Status_Get()) {
			s_Relex_Times+=5;
			if (s_Relex_Times > 20)
				s_Relex_Times = 5;
			Button2_Status_Set(false);
			Paint_Clear(BLACK);
			Paint_DrawString_EN(25, 30, "Enter Adjust Times Mode", &Font12, BLACK, YELLOW);
			sprintf(str, "Relex Times: %d", s_Relex_Times);
			Paint_DrawString_EN(25, 90, str, &Font12, BLACK, YELLOW);
			write(fd, BlackImage, Imagesize);
		}

		if(Button_Status_Get()) {
			Button_Status_Set(false);
			break;
		}
	}

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

    sPaint_time.Min = s_Focus_Times - 1;
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
