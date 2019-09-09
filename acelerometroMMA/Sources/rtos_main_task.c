/* ###################################################################
**     Filename    : rtos_main_task.c
**     Project     : acelerometroMMA
**     Processor   : MKL25Z128VLK4
**     Component   : Events
**     Version     : Driver 01.00
**     Compiler    : GNU C Compiler
**     Date/Time   : 2019-09-06, 16:00, # CodeGen: 1
**     Abstract    :
**         This is user's event module.
**         Put your event handler code here.
**     Settings    :
**     Contents    :
**         main_task - void main_task(os_task_param_t task_init_data);
**
** ###################################################################*/
/*!
** @file rtos_main_task.c
** @version 01.00
** @brief
**         This is user's event module.
**         Put your event handler code here.
*/         
/*!
**  @addtogroup rtos_main_task_module rtos_main_task module documentation
**  @{
*/         
/* MODULE rtos_main_task */

#include "Cpu.h"
#include "Events.h"
#include "rtos_main_task.h"
#include "os_tasks.h"
#include "MMA1.h"

#ifdef __cplusplus
extern "C" {
#endif 


/* User includes (#include below this line is not maintained by Processor Expert) */

/* Initialization of Processor Expert components function prototype */
#ifdef MainTask_PEX_RTOS_COMPONENTS_INIT
extern void PEX_components_init(void);
#endif 

/*
** ===================================================================
**     Callback    : main_task
**     Description : Task function entry.
**     Parameters  :
**       task_init_data - OS task parameter
**     Returns : Nothing
** ===================================================================
*/
void main_task(os_task_param_t task_init_data)
{
  /* Write your local variable definition here */
  uint8_t codigoErro;
  uint8_t valor;
  uint8_t habilita = 1;
  uint8_t x = 0;
  uint8_t y = 0;
  uint8_t z = 0;


  /* Initialization of Processor Expert components (when some RTOS is active). DON'T REMOVE THIS CODE!!! */
#ifdef MainTask_PEX_RTOS_COMPONENTS_INIT
  PEX_components_init(); 
#endif 
  /* End of Processor Expert components initialization.  */
  codigoErro = MMA1_WriteReg8( MMA1_CTRL_REG_2, 0x40 );
  OSA_TimeDelay(10);                 /* Example code (for task release) */

  codigoErro = MMA1_WriteReg8( MMA1_CTRL_REG_4, 1 );
  codigoErro = MMA1_WriteReg8( MMA1_CTRL_REG_5, 1 );

  codigoErro = MMA1_ReadReg8( MMA1_CTRL_REG_4, &valor );
  codigoErro = MMA1_ReadReg8( MMA1_CTRL_REG_5, &valor );

  if( habilita == 1 )
	codigoErro = MMA1_Init();

  codigoErro = MMA1_ReadReg8( MMA1_SYS_MODE_REG, &valor );


#ifdef PEX_USE_RTOS
  while (1) {
#endif
    /* Write your code here ... */
    
    
    while( GPIO_DRV_ReadPinInput( ACCEL_INT1 ) == 1 );

	codigoErro = MMA1_ReadReg8( MMA1_OUT_X_MSB, &x );
	codigoErro = MMA1_ReadReg8( MMA1_OUT_Y_MSB, &y );
	codigoErro = MMA1_ReadReg8( MMA1_OUT_Z_MSB, &z );

    OSA_TimeDelay(10);                 /* Example code (for task release) */
   
    
    
    
#ifdef PEX_USE_RTOS   
  }
#endif    
}

/* END rtos_main_task */

#ifdef __cplusplus
}  /* extern "C" */
#endif 

/*!
** @}
*/
/*
** ###################################################################
**
**     This file was created by Processor Expert 10.5 [05.21]
**     for the Freescale Kinetis series of microcontrollers.
**
** ###################################################################
*/
