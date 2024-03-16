#include "tft_lcd.h"
#include "GUI_Paint.h"
#include "fonts.h"
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include "GUI_BMP.h"
#include "button.h"
#include "beep.h"
#include "custom_print.h"

static unsigned int s_pbar_x_start = 0, s_pbar_x_end = 160;
static unsigned int s_pbar_y_start = 114, s_pbar_y_end = 128;
static char s_Focus_Times = 25, s_Relex_Times = 10;
static int s_Focus_Total_Times = 0;
static unsigned int g_focus_total_times = 100;
int ADJUST_TIME_MODE = 0;

UWORD *g_Image;
UDOUBLE g_Image_Size = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;

static int fd;

int Tft_Init(void) {
	fd = open(LCD_DEVICE, O_RDWR);
	if (fd < 0) {
		sys_log(LOG_ERR, "open file : %s failed! \n", LCD_DEVICE);
		return -1;
	}
	if((g_Image = (UWORD *)malloc(g_Image_Size)) == NULL) {
		sys_log(LOG_ERR, "Failed to apply for black memory...\r\n");
		return -1;
	}
	Paint_NewImage(g_Image, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);
	write(fd, g_Image, g_Image_Size);

	return 0;
}

int Tft_Deinit(void)
{

	free(g_Image);
	close(fd);
	// if (ret < 0) {
	// 	sys_log(LOG_ERR, "close file error!");
	// 	return -1;
	// }
	return 0;
}

int Welcome_Show(void)
{
	int ret = 0;
	Paint_DrawString_EN(25, 30, "Welcome to", &Font16, BLACK, YELLOW);
	Paint_DrawString_EN(25, 60, "Desktop", &Font16, BLACK, YELLOW);
	Paint_DrawString_EN(25, 90, "Focus", &Font16, BLACK, YELLOW);
	
	ret = write(fd, g_Image, g_Image_Size);
	if (ret < 0) {
		sys_log(LOG_ERR, "write err!");
	}
	return ret;
}

int Tft_Reset(void)
{
	Paint_Clear(BLACK);
	write(fd, g_Image, g_Image_Size);
}

int Costom_Times(void)
{
	int ret = 0;
	char str[64];
	int i = 0;

	Paint_DrawString_EN(25, 30, "Press Key2, Adjust Times ", &Font12, BLACK, YELLOW);
	sprintf(str, "Focus Times: %d", s_Focus_Times);
	Paint_DrawString_EN(25, 60, str, &Font12, BLACK, YELLOW);
	sprintf(str, "Relex Times: %d", s_Relex_Times);
	Paint_DrawString_EN(25, 90, str, &Font12, BLACK, YELLOW);

	write(fd, g_Image, g_Image_Size);

	while(i < 4) {
		if(Button_Status_Get()) {
			ADJUST_TIME_MODE = 1;
			Button_Status_Set(false);
			Paint_Clear(BLACK);
			Paint_DrawString_EN(25, 30, "Enter Adjust Times Mode", &Font12, BLACK, YELLOW);
			sprintf(str, "Focus Times: %d", s_Focus_Times);
			Paint_DrawString_EN(25, 60, str, &Font12, BLACK, YELLOW);
			write(fd, g_Image, g_Image_Size);
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
			write(fd, g_Image, g_Image_Size);
		}

		if(Button_Status_Get()) {
			Button_Status_Set(false);
			Paint_Clear(BLACK);
			Paint_DrawString_EN(25, 30, "Enter Adjust Times Mode", &Font12, BLACK, YELLOW);
			sprintf(str, "Relex Times: %d", s_Relex_Times);
			Paint_DrawString_EN(25, 90, str, &Font12, BLACK, YELLOW);
			write(fd, g_Image, g_Image_Size);
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
			write(fd, g_Image, g_Image_Size);
		}

		if(Button_Status_Get()) {
			Button_Status_Set(false);
			break;
		}
	}

	return ret;

}

int Main_Windows(void)
{
	char str[64];
	sprintf(str, "Focus time today:%d m", g_focus_total_times);
	Paint_DrawString_EN(0, 0, str, &Font12, BLACK, WHITE);
	Paint_DrawLine(0, 15, 160, 15, WHITE, DOT_PIXEL_1X1, LINE_STYLE_DOTTED); 			// 上横线
	Paint_DrawLine(100, 15, 100, 113, WHITE, DOT_PIXEL_1X1, LINE_STYLE_DOTTED); 		// 右边竖线
	Paint_DrawLine(0, 113, 160, 113, WHITE, DOT_PIXEL_1X1, LINE_STYLE_DOTTED); 			// 下横线

	Paint_DrawCircle(110, 25, 5, BLUE, DOT_PIXEL_1X1, DRAW_FILL_FULL); 					// 专注图标
	sprintf(str,"%dmin", s_Focus_Times);
	Paint_DrawString_EN(120, 20, str, &Font12, BLACK, WHITE);


	Paint_DrawCircle(110, 40, 5, GREEN, DOT_PIXEL_1X1, DRAW_FILL_FULL); 				// 休息图标
	sprintf(str,"%dmin", s_Relex_Times);
	Paint_DrawString_EN(120, 35, str, &Font12, BLACK, WHITE);

	write(fd, g_Image, g_Image_Size);
}

int Desktop_Focus(void)
{
	int ret = 0;
	int percent = 0;
	int total_time = 0, cur_time = 0;
    PAINT_TIME sPaint_time; //time struct

	// /*1.Create a new image cache named IMAGE_RGB and fill it with white*/

    sPaint_time.Min = s_Focus_Times - 1;
    sPaint_time.Sec = 59;

	total_time = s_Focus_Times * 60;

	while (1) {
		if (Button_Status_Get()) {
			// Paint_Clear(BLACK);
			Button_Status_Set(false);
			// sPaint_time.Min = s_Focus_Times - 1;
			sPaint_time.Min = 0;
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
        Paint_ClearWindow(0, 15, 100 - 1, 113 - 1, BLACK);
        Paint_DrawTime(10 ,50, &sPaint_time, &Font24, BLACK, YELLOW);
		cur_time = sPaint_time.Min * 60 + sPaint_time.Sec;
		percent = (total_time - cur_time) * 100 / total_time;
	
		Progress_bar_Set(percent);
 		write(fd, g_Image, g_Image_Size);
		sleep(1);
	}
	return ret;
}

int Focus_Seek_Get(int fd)
{
	int ret = 0;
	UWORD *g_Image;
	UDOUBLE g_Image_Size = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;
    PAINT_TIME sPaint_time; //time struct

	if((g_Image = (UWORD *)malloc(g_Image_Size)) == NULL) {
		printf("Failed to apply for black memory...\r\n");
		exit(0);
	}
	
	beep_shink();
	// /*1.Create a new image cache named IMAGE_RGB and fill it with white*/
	Paint_NewImage(g_Image, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);
	Paint_Clear(BLACK);
	Paint_DrawString_EN(25, 30, "Get Focus Seek by press button", &Font12, BLACK, YELLOW);

    sPaint_time.Min = 0;
    sPaint_time.Sec = 59;

	while (1) {
		if (Button_Status_Get()) {
			Paint_Clear(BLACK);
			Button_Status_Set(false);
			s_Focus_Total_Times += s_Focus_Times;
			break;
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
 		write(fd, g_Image, g_Image_Size);
		sleep(1);
	}
    free(g_Image);
    g_Image = NULL;
	return ret;
}


int Relex_Focus(int fd)
{
	int ret = 0;
	UWORD *g_Image;
	UDOUBLE g_Image_Size = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;
    PAINT_TIME sPaint_time; //time struct

	if((g_Image = (UWORD *)malloc(g_Image_Size)) == NULL) {
		printf("Failed to apply for black memory...\r\n");
		exit(0);
	}
	
	// /*1.Create a new image cache named IMAGE_RGB and fill it with white*/
	Paint_NewImage(g_Image, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);
	Paint_Clear(BLACK);

    sPaint_time.Min = s_Relex_Times - 1;
    sPaint_time.Sec = 59;

	while (1) {
		if (Button_Status_Get()) {
			Paint_Clear(BLACK);
			Button_Status_Set(false);
			// sPaint_time.Min = s_Relex_Times - 1;
			sPaint_time.Min = 0;
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
 		write(fd, g_Image, g_Image_Size);
		sleep(1);
	}
    free(g_Image);
    g_Image = NULL;
	return ret;
}


int Picture_Show(int fd)
{
	UWORD *g_Image;
	UDOUBLE g_Image_Size = LCD_1IN8_HEIGHT * LCD_1IN8_WIDTH * 2;

	if((g_Image = (UWORD *)malloc(g_Image_Size)) == NULL) {
		printf("Failed to apply for black memory...\r\n");
		exit(0);
	}

	printf("show bmp\r\n");

	// /*1.Create a new image cache named IMAGE_RGB and fill it with white*/
	Paint_NewImage(g_Image, LCD_1IN8_WIDTH, LCD_1IN8_HEIGHT, 0, BLACK, 16);

	GUI_ReadBmp("./pic/test.bmp");

	write(fd, g_Image, g_Image_Size);

	sleep(1);
    free(g_Image);
    g_Image = NULL;
}

int Progress_bar_Init()
{
	int ret = 0;

	Paint_DrawRectangle(s_pbar_x_start, s_pbar_y_start, s_pbar_x_end, s_pbar_y_end, GRAY, DOT_PIXEL_1X1, DRAW_FILL_FULL); 

	write(fd, g_Image, g_Image_Size);

	return 0;
}

int Progress_bar_Set(unsigned int percent)
{
	if (percent < 0)
		percent = 0;
	else if(percent > 100)
		percent = 100;
	unsigned int cur_length = (s_pbar_x_end - s_pbar_x_start) * percent / 100;
	Paint_DrawRectangle(s_pbar_x_start, s_pbar_y_start, cur_length, s_pbar_y_end, GREEN, DOT_PIXEL_1X1, DRAW_FILL_FULL);
	// write(fd, g_Image, g_Image_Size);
	return 0;
}
