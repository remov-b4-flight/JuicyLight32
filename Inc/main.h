/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdbool.h>
#include <string.h>
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

//Determine LED type (RGB or RGBW)
#ifndef RGB
#define	LEDTYPE RGBW
#endif

//LED intensity definition
#define LFFH	0xFF
#define LBRIGHT	0x80
#define LMAX	0x78
#define L43		0x58
#define LHLF	0x38
#define LQTR	0x10
#define LMIN	0x08
#define LOFF	0x00

#if LEDTYPE==RGBW
typedef union leddata_t {
	uint32_t	n;
	struct	rgbw_t {
		uint8_t	w;
		uint8_t	b;
		uint8_t	r;
		uint8_t g;
	}	rgbw;
} LEDDATA;
#else
typedef union leddata_t {
	uint32_t	n;
	struct	rgbw_t {
		uint8_t	padding;
		uint8_t	b;
		uint8_t	r;
		uint8_t g;
	}	rgbw;
} LEDDATA;
#endif

enum{   //constants for operation mode.
    MODE_STATIC = 0,
	MODE_DYNAMIC,
};
#define MODE_MAX    2

enum{
	PATTERN_DYNAMIC_DD = 0,
	PATTERN_DYNAMIC_FADE,
};
#define PATTERN_DYNAMIC_MAX	2

enum{   //constants for expressing color.
	COLOR_OFF = 0,
	COLOR_RED,
    COLOR_BLUE,
    COLOR_GREEN,
    COLOR_WHITE,
    COLOR_YELLOW,
    COLOR_MAGENTA,
    COLOR_CYAN,
    COLOR_PINK,
    COLOR_ORANGE,
	COLOR_RAINBOW,
};
#define COLOR_MAX 11

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

#define LED_COUNT		16
#define BITS_PER_LED    32  // (RGBW) 4 * 8bit
#define TOTAL_BITS      (LED_COUNT * BITS_PER_LED)
#define MOD_SW_OFF		1
#define MOD_SW_ON		0

//TIM3(8ms) based time constants
#define TIM3_COUNT_2SEC 250
#define TIM3_COUNT_1SEC 125
#define TIM3_COUNT_0R5S		62
#define TIM3_COUNT_0R3S		38
#define TIM3_COUNT_0R25S	31
#define TIM3_COUNT_0R22S	28
#define TIM3_COUNT_0R20S	25
#define TIM3_COUNT_0R18S	22
#define TIM3_COUNT_0R16S	20
#define TIM3_COUNT_DECHAT 3

#define DPCOUNT_PERIOD TIM3_COUNT_0R25S
#define LPCOUNT_STOP 0
#define DPCOUNT_CLEAR 0
/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define PWM_PERIOD 59
#define PWM_HI 29
#define PWM_LO 14
#define TIM_PERIOD_80uS 4000
#define TIM_PERIOD_8mS 8000
#define TIM_PRESC_1uS 47
#define MOD_SW_Pin GPIO_PIN_0
#define MOD_SW_GPIO_Port GPIOF
#define MOD_SW_EXTI_IRQn EXTI0_1_IRQn
#define LEDOUT_Pin GPIO_PIN_10
#define LEDOUT_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
