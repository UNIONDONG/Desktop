#include "beep.h"
#include <stdio.h>

int beep_init(void)
{
	FILE *fd;
	
	fd = fopen("/sys/class/gpio/export", "w");
	if (fd < 0)
		return -1;
	fwrite(BEEP_PIN_NUMBER, 1, sizeof(BEEP_PIN_NUMBER), fd);
	fclose(fd);

	fd = fopen("/sys/class/gpio" BEEP_PIN_NUMBER "/direction", "w");
	if (fd < 0)
		return -2;
	fwrite("out", 1, sizeof("out"), fd);
	fclose(fd);

	return 0;
}

int beep_deinit(void)
{
	FILE *fd;
	
	fd = fopen("/sys/class/gpio/unexport", "w");
	if (fd < 0)
		return -1;
	fwrite(BEEP_PIN_NUMBER, 1, sizeof(BEEP_PIN_NUMBER), fd);
	fclose(fd);

	return 0;
}

int beep_on(void)
{
	FILE *fd;

	fd = fopen("/sys/class/gpio" BEEP_PIN_NUMBER "/value", "w");
	if (fd < 0)
		return -2;
	fwrite(BEEP_ON, 1, sizeof(BEEP_ON), fd);
	fclose(fd);

	return 0;
}

int beep_off(void)
{
	FILE *fd;
	fd = fopen("/sys/class/gpio" BEEP_PIN_NUMBER "/value", "w");
	if (fd < 0)
		return -2;
	fwrite(BEEP_OFF, 1, sizeof(BEEP_OFF), fd);
	fclose(fd);

	return 0;

}
