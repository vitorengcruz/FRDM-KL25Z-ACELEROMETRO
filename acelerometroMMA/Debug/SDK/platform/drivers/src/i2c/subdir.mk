################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SDK/platform/drivers/src/i2c/fsl_i2c_common.c \
../SDK/platform/drivers/src/i2c/fsl_i2c_master_driver.c \
../SDK/platform/drivers/src/i2c/fsl_i2c_shared_function.c \
../SDK/platform/drivers/src/i2c/fsl_i2c_slave_driver.c 

OBJS += \
./SDK/platform/drivers/src/i2c/fsl_i2c_common.o \
./SDK/platform/drivers/src/i2c/fsl_i2c_master_driver.o \
./SDK/platform/drivers/src/i2c/fsl_i2c_shared_function.o \
./SDK/platform/drivers/src/i2c/fsl_i2c_slave_driver.o 

C_DEPS += \
./SDK/platform/drivers/src/i2c/fsl_i2c_common.d \
./SDK/platform/drivers/src/i2c/fsl_i2c_master_driver.d \
./SDK/platform/drivers/src/i2c/fsl_i2c_shared_function.d \
./SDK/platform/drivers/src/i2c/fsl_i2c_slave_driver.d 


# Each subdirectory must supply rules for building sources it contributes
SDK/platform/drivers/src/i2c/%.o: ../SDK/platform/drivers/src/i2c/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -D"CPU_MKL25Z128VLK4" -D"FSL_RTOS_FREE_RTOS" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/hal/inc" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/hal/src/sim/MKL25Z4" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/system/src/clock/MKL25Z4" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/system/inc" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/osa/inc" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/CMSIS/Include" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/devices" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/devices/MKL25Z4/include" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/utilities/src" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/utilities/inc" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/devices/MKL25Z4/startup" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/Generated_Code/SDK/platform/devices/MKL25Z4/startup" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/Sources" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/Generated_Code" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/rtos/FreeRTOS/include" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/rtos/FreeRTOS/port/gcc" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/Generated_Code/SDK/rtos/FreeRTOS/config" -I"C:/Users/vcruz/workspace.kds/acelerometroMMA/SDK/platform/drivers/inc" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


