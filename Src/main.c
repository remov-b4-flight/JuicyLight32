/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim14;
DMA_HandleTypeDef hdma_tim1_ch3_up;

#if LEDTYPE == RGBW
/* USER CODE BEGIN PV */
const LEDDATA LEDTable[COLOR_MAX] = {
		//			R		G		B		W
		{.rgbw = {.r=LOFF,.g=LOFF,.b=LOFF,.w=LOFF}},//COLOR_OFF,
		{.rgbw = {.r=LMAX,.g=LOFF,.b=LOFF,.w=LOFF}},//COLOR_RED,
		{.rgbw = {.r=LOFF,.g=LOFF,.b=LMAX,.w=LOFF}},//COLOR_BLUE,
		{.rgbw = {.r=LOFF,.g=LMAX,.b=LOFF,.w=LOFF}},//COLOR_GREEN,
		{.rgbw = {.r=LOFF,.g=LOFF,.b=LOFF,.w=LMAX}},//COLOR_WHITE,
		{.rgbw = {.r=LHLF,.g=LHLF,.b=LOFF,.w=LOFF}},//COLOR_YELLOW,
		{.rgbw = {.r=LHLF,.g=LOFF,.b=LHLF,.w=LOFF}},//COLOR_MAGENTA,
		{.rgbw = {.r=LOFF,.g=LHLF,.b=LHLF,.w=LOFF}},//COLOR_CYAN,
		{.rgbw = {.r=LMAX,.g=LOFF,.b=LQTR,.w=LQTR}},//COLOR_PINK,
		{.rgbw = {.r=LMAX,.g=LQTR,.b=LOFF,.w=LOFF}},//COLOR_ORANGE,
};
#else
const LEDDATA LEDTable[COLOR_MAX] = {
	//			R		G		B
	{.rgb = {.r=LOFF,.g=LOFF,.b=LOFF}},//COLOR_OFF,
	{.rgb = {.r=LMAX,.g=LOFF,.b=LOFF}},//COLOR_RED,
	{.rgb = {.r=LOFF,.g=LOFF,.b=LMAX}},//COLOR_BLUE,
	{.rgb = {.r=LOFF,.g=LMAX,.b=LOFF}},//COLOR_GREEN,
	{.rgb = {.r=LOFF,.g=LOFF,.b=LOFF}},//COLOR_WHITE,
	{.rgb = {.r=LHLF,.g=LHLF,.b=LOFF}},//COLOR_YELLOW,
	{.rgb = {.r=LHLF,.g=LOFF,.b=LHLF}},//COLOR_MAGENTA,
	{.rgb = {.r=LOFF,.g=LHLF,.b=LHLF}},//COLOR_CYAN,
	{.rgb = {.r=LMAX,.g=LOFF,.b=LQTR}},//COLOR_PINK,
	{.rgb = {.r=LMAX,.g=LQTR,.b=LOFF}},//COLOR_ORANGE,
}
#endif

#if LED_COUNT == 10
const uint8_t	LEDRainbow[LED_COUNT]={
		COLOR_RED,COLOR_ORANGE,COLOR_YELLOW,COLOR_GREEN,COLOR_BLUE,
		COLOR_RED,COLOR_ORANGE,COLOR_YELLOW,COLOR_GREEN,COLOR_BLUE
};
#else
const uint8_t	LEDRainbow[LED_COUNT]={
//			1			2			3			4			5			6			7			8
		COLOR_RED,COLOR_ORANGE,COLOR_YELLOW,COLOR_GREEN,COLOR_BLUE,COLOR_PINK,COLOR_PURPLE,COLOR_WHITE
		COLOR_RED,COLOR_ORANGE,COLOR_YELLOW,COLOR_GREEN,COLOR_BLUE,COLOR_PINK,COLOR_PURPLE,COLOR_WHITE
};
#endif

uint8_t		LEDColor[LED_COUNT];
uint16_t	LEDPulse[TOTAL_BITS];	//Data formed PWM width send to LED

//Mode control
uint8_t LightColor;		//Set from switch
uint8_t LightMode;
uint8_t	LightPattern = PATTERN_DYNAMIC_DD;

//For switch detection.
bool	DynamicFlag;
bool	ReleaseIgnoreFlag; //for passing 'Release' after Long press
bool	BlightFlag;
//
bool	SinglePushFlag;
bool	DoublePushFlag;
bool	LongPushFlag;
//
bool	SendFlag;

//Driven by Timer3 (8ms interval)
uint8_t Timer3Count;	//0~250 2000ms count
uint8_t Timer3Limit = TIM3_COUNT_2SEC;
uint8_t LPCount;		//Long Push count
uint8_t DPCount;		//Double Push count

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_TIM1_Init(void);
static void MX_TIM3_Init(void);
static void MX_TIM14_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

//Set LEDColor[] array to Mono color(or Rainbow)
void SetLEDMonoColor(uint8_t mono_color){
	if (mono_color == COLOR_RAINBOW){
		memcpy(LEDColor,LEDRainbow,LED_COUNT);
	}else{
		memset(LEDColor,mono_color,LED_COUNT);
	}
	SendFlag = true;
}

//Initialization for DD pattern
void PatternDDInit(){
	LightColor = COLOR_RED;
	Timer3Limit = TIM3_COUNT_0R5S;
	SetLEDMonoColor(LightColor);
}

// Callback function for DD pattern
void PatternDDCallBack(){
	LightColor++;
	if(LightColor >= COLOR_RAINBOW) {
		LightColor = COLOR_RED;
	}
	SetLEDMonoColor(LightColor);
}

// Initialization function for fade pattern
void PatternFadeInit(){
	LightColor = COLOR_RED;
}

// Callback function for Fade pattern
void PatternFadeCallBack(){

}

// Function pointer array for Dynamic mode callbacks
void (*fp[PATTERN_DYNAMIC_MAX])(void)={
	PatternDDCallBack,
	PatternFadeCallBack
};

// Dynamic mode Initialization for each patterns
void DoPatternInit(){
	switch (LightPattern){
		case 	PATTERN_DYNAMIC_DD:
			PatternDDInit();
			break;
		case	PATTERN_DYNAMIC_FADE:
			PatternFadeInit();
			break;
		default:
			LightMode = MODE_STATIC;
			LightColor = COLOR_RED;
			SetLEDMonoColor(LightColor);
			break;
	}
}

//make LEDPulse[] from LEDColor[]
void Color2Pulse(){
	uint16_t	pulse = 0;
	LEDDATA		leddata;

	for(uint8_t	led = 0; led < LED_COUNT; led++){
		uint8_t c = LEDColor[led];
		leddata.n = LEDTable[c].n;
		if(BlightFlag){
			if(leddata.rgbw.r > LQTR) leddata.rgbw.r |= LBRIGHT;
			if(leddata.rgbw.g > LQTR) leddata.rgbw.g |= LBRIGHT;
			if(leddata.rgbw.b > LQTR) leddata.rgbw.b |= LBRIGHT;
#if LEDTYPE == RGBW
			if(leddata.rgbw.w > LQTR) leddata.rgbw.w |= LBRIGHT;
#endif
		}
#if LEDTTYPE == RGBW
		for (uint32_t mask = 0x80000000; mask > 0; mask >>= 1){
#else //RGB(24bit)
		for (uint32_t mask = 0x80000000; mask > 0x80; mask >>= 1){
#endif
			LEDPulse[pulse++] = (leddata.n & mask)? PWM_HI:PWM_LO;
		}
	}
}

// Send pulses to LEDs rely on LEDColor[] array
void SendPulse(){

	//Convert LEDColor[] to LEDPulse[]
	Color2Pulse();

	//Send 'RESET' signal(80us > low data) for LEDs
	HAL_TIM_Base_Start(&htim14);
	htim14.Instance->SR = 0;
	while((htim14.Instance->SR & TIM_SR_UIF) == 0)
		;	//wait until timer up.
	HAL_TIM_Base_Stop(&htim14);
	//End of RESET

	//Start DMA
	htim1.Instance->CNT = PWM_HI + 1;
	HAL_TIM_PWM_Start_DMA(&htim1, TIM_CHANNEL_3,(uint32_t *) LEDPulse, TOTAL_BITS);
}

// 'Single Pushed' event function
void SinglePushed() {
	if(LightMode == MODE_DYNAMIC){
		LightPattern++;
		if(LightPattern >= PATTERN_DYNAMIC_MAX) {
			LightPattern = PATTERN_DYNAMIC_DD;
		}
		DoPatternInit();
	}else if(LightMode == MODE_STATIC){
		LightColor++;
		if ( LightColor >= COLOR_MAX) {
			LightColor = COLOR_OFF;
			HAL_TIM_Base_Stop_IT(&htim3);
		}
		SetLEDMonoColor(LightColor);
	}
}

// 'Double Pushed' event function
void DoublePushed(){
	LightMode++;
	if(LightMode >= MODE_MAX){
		LightMode = MODE_STATIC;
		LightColor = COLOR_OFF;
		SetLEDMonoColor(LightColor);
		return;
	}
	DoPatternInit();
}

// 'Long pushed' event function
void LongPushed(){

	BlightFlag = (BlightFlag)? false:true;
	SendFlag = true;
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_TIM1_Init();
  MX_TIM3_Init();
  MX_TIM14_Init();
  /* USER CODE BEGIN 2 */
  SinglePushFlag = false;
  DoublePushFlag = false;
  SendFlag = false;
  LightColor = COLOR_OFF;
  LightMode = MODE_STATIC;
  LongPushFlag = false;
  ReleaseIgnoreFlag = false;
  DynamicFlag = false;
  BlightFlag = false;
  LPCount = LPCOUNT_STOP;	//Timer Stopped
  DPCount = TIM3_COUNT_1SEC;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  SetLEDMonoColor(COLOR_OFF);
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  if(SinglePushFlag){
		  SinglePushed();
		  SinglePushFlag = false;
	  }else if(DoublePushFlag){
		  DoublePushed();
		  DoublePushFlag = false;
	  }
	  if(SendFlag){
		  SendPulse();
		  SendFlag = false;
	  }
      if (LongPushFlag) {
          LongPushed();
          LongPushFlag = false;
      }

      HAL_SuspendTick();
#if DEBUG
      HAL_DBGMCU_EnableDBGSleepMode();
#endif
      HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
      HAL_ResumeTick();

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL12;
  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 0;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = PWM_PERIOD;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_LOW;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim1, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */
  HAL_TIM_MspPostInit(&htim1);

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

  /* USER CODE BEGIN TIM3_Init 0 */

  /* USER CODE END TIM3_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  htim3.Instance = TIM3;
  htim3.Init.Prescaler = TIM_PRESC_1uS;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = TIM_PERIOD_8mS;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM3_Init 2 */

  /* USER CODE END TIM3_Init 2 */

}

/**
  * @brief TIM14 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM14_Init(void)
{

  /* USER CODE BEGIN TIM14_Init 0 */

  /* USER CODE END TIM14_Init 0 */

  /* USER CODE BEGIN TIM14_Init 1 */

  /* USER CODE END TIM14_Init 1 */
  htim14.Instance = TIM14;
  htim14.Init.Prescaler = 0;
  htim14.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim14.Init.Period = TIM_PERIOD_80uS;
  htim14.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim14.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim14) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM14_Init 2 */

  /* USER CODE END TIM14_Init 2 */

}

/** 
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void) 
{
  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel4_5_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel4_5_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel4_5_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin : MOD_SW_Pin */
  GPIO_InitStruct.Pin = MOD_SW_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(MOD_SW_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI0_1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI0_1_IRQn);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(char *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
