#include <stdio.h>
#include <stdlib.h>


#define LOG_CLRSTR_NONE         "\033[0m"               // ��
#define LOG_CLRSTR_RED          "\033[0;32;31m"         // ��ɫ
#define LOG_CLRSTR_GREEN        "\033[0;32;32m"         // ��ɫ
#define LOG_CLRSTR_BLUE         "\033[0;32;34m"         // ��ɫ
#define LOG_CLRSTR_DARK_GRAY    "\033[1;30m"            // ���
#define LOG_CLRSTR_CYAN         "\033[0;36m"            // ����
#define LOG_CLRSTR_PURPLE       "\033[0;35m"            // ��ɫ
#define LOG_CLRSTR_BROWN        "\033[0;33m"            // ��ɫ
#define LOG_CLRSTR_YELLOW       "\033[5;33m"            // ��ɫ
#define LOG_CLRSTR_WHITE        "\033[1;37m"            // ��ɫ


typedef enum {
  LOG_EMERG=0, /**< Emergency */
  LOG_ALERT,   /**< Alert */
  LOG_CRIT,    /**< Critical */
  LOG_ERR,     /**< Error */
  LOG_WARNING, /**< Warning */
  LOG_NOTICE,  /**< Notice */
  LOG_INFO,    /**< Information */
  LOG_DEBUG    /**< Debug */
}GLOBAL_LOG_LEVEL;


void sys_log(int level, const char *fmt, ...);
void Set_Log_Lever(GLOBAL_LOG_LEVEL log_level);