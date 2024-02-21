#include "custom_print.h"

#include <time.h>
#include <string.h>
#include <stdarg.h>
#include <sys/time.h>

const char global_log_level_string[8][10] = {"EMERG", "ALERT", "CRIT", "ERR", "WARNING", "NOTICE", "INFO", "DEBUG"};
GLOBAL_LOG_LEVEL g_log_level = LOG_INFO;        //  default log level

/**
 * @brief 设置LOG打印等级
 * 
 * @param log_level 
 */

void Set_Log_Lever(GLOBAL_LOG_LEVEL log_level) {

    g_log_level = log_level;

}

void sys_log(int level, const char *fmt, ...) {
    static char str_uart[40960];
    static char str_tmp[512];
    char *log_color;
    int len;

    if (level > g_log_level) {
        return;
    }
    // 增加时间信息
    // time_t now;
    // time(&now);
    // strftime(str_tmp, sizeof(str_tmp), "[%Y-%m-%d %H:%M:%S ", localtime(&now));

    /** 增加前缀 */
    struct timeval tv;
    struct tm tm;
    gettimeofday(&tv, NULL);
    localtime_r(&tv.tv_sec, &tm);
	strftime(str_tmp, sizeof(str_tmp), "[%Y-%m-%d %H:%M:%S ", &tm);


    //加入LOG后缀信息
    strcat(str_tmp,global_log_level_string[level]);
    strcat(str_tmp, "] ");
    
    //LOG类型判断,选择不同打印颜色
    switch (level)
    {
    case LOG_EMERG:
        log_color = LOG_CLRSTR_RED;
        break;
    case LOG_ALERT:
        log_color = LOG_CLRSTR_BLUE;
        break;
    case LOG_CRIT:
        log_color = LOG_CLRSTR_CYAN;
        break;
    case LOG_ERR:
        log_color = LOG_CLRSTR_RED;
        break;
    case LOG_WARNING:
        log_color = LOG_CLRSTR_PURPLE;
        break;
    case LOG_NOTICE:
        log_color = LOG_CLRSTR_YELLOW;
        break;
    case LOG_INFO:
        log_color = LOG_CLRSTR_GREEN;
        break; 
    case LOG_DEBUG:
        log_color = LOG_CLRSTR_BROWN;
        break; 
    default:
        log_color = LOG_CLRSTR_GREEN;
        break;
    }
    //  重新设置标准输出
    sprintf(str_uart, "%s",log_color);
    strcat(str_uart, str_tmp);
    
    va_list ap;
    va_start(ap, fmt);
    len = strlen(str_tmp);
    vsnprintf(str_tmp + len, sizeof(str_tmp) - len, fmt, ap);
    len = strlen(str_uart);
    vsnprintf(str_uart + len, sizeof(str_uart) - len, fmt, ap);
    va_end(ap);
    
    strcat(str_uart, LOG_CLRSTR_NONE);
    strcat(str_uart, "\r\n");

    printf("%s",str_uart);
}
