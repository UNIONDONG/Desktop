#include <stdio.h>
#include <stdbool.h>

extern bool g_button_flag;

extern bool Button_Status_Get(void);
extern void Button_Status_Set(bool status);
extern int button_threads_init(void);
