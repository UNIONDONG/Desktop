#include <linux/input.h>
#include <pthread.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

#include "button.h"
#include "custom_print.h"
#define BUTTON_EVENT_PATH "/dev/input/event1"
#define BUTTON_TYPE 

bool g_button_flag = false;

void Button_Status_Set(bool status)
{
	g_button_flag = status;
}

bool Button_Status_Get(void)
{
	return g_button_flag;
}

void *button_thread_handle()
{
	int fd;
	struct input_event key_event;
	sys_log(LOG_INFO, "button console");

	fd = open(BUTTON_EVENT_PATH, O_RDONLY);
	if (fd == -1) {
		sys_log(LOG_ERR, "Error Open input device");
		exit(EXIT_FAILURE);
	}

	while (1) {
		ssize_t bytesRead = read(fd, &key_event, sizeof(struct input_event));
		
        if (bytesRead == sizeof(struct input_event)) {
            if (key_event.type == EV_KEY && key_event.value == 1) {
                printf("Key pressed: %d\n", key_event.code);
            } else if (key_event.type == EV_KEY && key_event.value == 0) {
                printf("Key released: %d\n", key_event.code);
				Button_Status_Set(true);
            }
        } else {
            perror("Error reading input event");
            break;
        }
	}

    close(fd);
}

int button_threads_init(void)
{
	int ret = -1;
	sys_log(LOG_INFO, "thread init");

	pthread_t button_thread;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setdetachstate(&attr , PTHREAD_CREATE_DETACHED);
    ret = pthread_create(&button_thread, &attr, button_thread_handle, NULL);
    if (ret) {
        sys_log(LOG_ERR, "create thread_1 failed");
        return -1;
    }
	return 0;
}
