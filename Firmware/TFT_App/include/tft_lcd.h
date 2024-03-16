#include <stdio.h>

#define LCD_1IN8_WIDTH  160  //LCD width
#define LCD_1IN8_HEIGHT  128 //LCD height

#define LCD_DEVICE "/dev/ecspi_lcd"

int Tft_Init(void);
int Tft_Deinit(void);
int Tft_Reset(void);
int Welcome_Show(void);
int Costom_Times(void);
int Main_Windows(void);
int Desktop_Focus(void);
int Progress_bar_Set(unsigned int percent);
extern int Relex_Focus(int fd);
extern int Picture_Show(int fd);
extern int Progress_bar_Init();
