#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include "tft_lcd.h"
#include "button.h"
#include "beep.h"
#include "custom_print.h"

// #define LCD_DEVICE "/dev/ecspi_lcd"

int fd;

int main(int argc, char *argv[])
{
	int ret = 0;

	Set_Log_Lever(LOG_DEBUG);

	sys_log(LOG_NOTICE, "Welcome to Desktop Focus.");

	button_threads_init();

	Tft_Init();

	// Welcome_Show();
	// sleep(1);
	// Tft_Reset();
	// Costom_Times();
	Tft_Reset();
	Main_Windows();
	Progress_bar_Init();
	Desktop_Focus();
	
	// Progress_bar_Init(fd);
	// sleep(1);
	// Progress_bar_Set(fd, 10);
	// sleep(1);
	// Progress_bar_Set(fd, 30);
 //    beep_init();
 //    beep_shink();
	// sleep(1);
	// Picture_Show(fd);
	//sleep(3);

	while (1) {
		// Desktop_Focus(fd);
		// Focus_Seek_Get(fd);
		// Relex_Focus(fd);
	}

	Tft_Deinit();
    beep_deinit();
	return 0;
}
