


#define RED  	0xf800
#define GREEN	0x07e0
#define BLUE 	0x001f
#define WHITE	0xffff
#define BLACK	0x0000
#define YELLOW  0xFFE0
#define GRAY0   0xEF7D   	//灰色0 3165 00110 001011 00101
#define GRAY1   0x8410      	//灰色1      00000 000000 00000
#define GRAY2   0x4208      	//灰色2  1111111111011111
/********************************************************************************
function: scanning method
********************************************************************************/
typedef enum {
    L2R_U2D  = 0,				//The display interface is displayed , left to right, up to down
    L2R_D2U  ,
    R2L_U2D  ,
    R2L_D2U  ,

    U2D_L2R  ,
    U2D_R2L  ,
    D2U_L2R  ,
    D2U_R2L  ,
} LCD_SCAN_DIR;

/********************************************************************************
function:
	Defines the total number of rows in the display area
********************************************************************************/

typedef struct {
    uint16_t 				LCD_Dis_Column;	//COLUMN
    uint16_t 				LCD_Dis_Page;		//PAGE
    LCD_SCAN_DIR 		LCD_Scan_Dir;
    uint16_t 				LCD_X_Adjust;		//LCD x actual display position calibration
    uint16_t 				LCD_Y_Adjust;		//LCD y actual display position calibration
} LCD_DIS;
