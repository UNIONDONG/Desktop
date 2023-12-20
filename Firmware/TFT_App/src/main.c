#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include "tft_lcd.h"

#define LCD_DEVICE "/dev/ecspi_lcd"

int fd;


int main(int argc, char *argv[])
{
	int ret = 0;
	printf("Welcome to Desktop Focus.\n");
	
	fd = open(LCD_DEVICE, O_RDWR);
	if (fd < 0) {
		printf("open file : %s failed! \n", LCD_DEVICE);
		return -1;
	}

	// Welcome_Show(fd);
	// sleep(3);
	// Desktop_Focus(fd);

	// while (1) {
	//
	 	sleep(10);
	// 
	// }

	ret = close(fd);
	if (ret < 0) {
		printf("close file error!\n");
		return -1;
	}
	return 0;
}
