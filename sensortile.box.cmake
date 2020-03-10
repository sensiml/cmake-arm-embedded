list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})
include("${CMAKE_CURRENT_LIST_DIR}/arm-cortex-m4f.cmake")

set(STBOX_FP_SDK_ROOT "" CACHE PATH  "SensorTile.Box FunctionPack root")
set(STBOX_FP_APP_NAME "SDDataLog" CACHE  PROPERTY  "QuickAI SDK Application")

include_directories(${STBOX_FP_SDK_ROOT}/Drivers/CMSIS/Device/ST/STM32L4xx/Include
${STBOX_FP_SDK_ROOT}/Drivers/STM32L4xx_HAL_Driver/Inc
${STBOX_FP_SDK_ROOT}/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/hts221
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/lps22hh
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/iis2mdc
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/ism330dhc
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/Common
${STBOX_FP_SDK_ROOT}/Drivers/BSP/SensorTile.box
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/lis2mdl
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/stts751
${STBOX_FP_SDK_ROOT}/Drivers/BSP/Components/lsm6dsox
${STBOX_FP_SDK_ROOT}/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc
${STBOX_FP_SDK_ROOT}/Middlewares/ST/STM32_USB_Device_Library/Core/Inc
${STBOX_FP_SDK_ROOT}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F
${STBOX_FP_SDK_ROOT}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS
${STBOX_FP_SDK_ROOT}/Middlewares/Third_Party/FreeRTOS/Source/include
${STBOX_FP_SDK_ROOT}/Middlewares/Third_Party/FatFs/src
${STBOX_FP_SDK_ROOT}/Middlewares/Third_Party/FatFs/src/drivers
${STBOX_FP_SDK_ROOT}/Drivers/CMSIS/Include
${STBOX_FP_SDK_ROOT}/Projects/STM32L4R9ZI-SensorTile.box/Applications/SDDataLog/Inc)


list(APPEND DEVICE_MACROS "-D__FPU_USED=1"
    "-D__FPU_USED=1"
    "-D__M4_DEBUG"
    "-D__RTOS"
    "-D__GNU_SOURCE"
    "-DSTM32L4R9xx"
    "-DSTM32_SENSORTILEBOX"
    "-D_DEFAULT_SOURCE"
    "-DARM_MATH_CM4"
    "-DARM_MATH_MATRIX_CHECK"
    "-DARM_MATH_ROUNDING"
    "-D__FPU_PRESENT"
    "-DconfigUSE_STATS_FORMATTING_FUNCTIONS"
    "-DconfigUSE_TRACE_FACILITY"
    "-DNDEBUG"
    "-DGCC_MAKE"
    "-DUSE_HAL_DRIVER"
    "-DFreeRTOS"
    "-DUSES_FREERTOS"
    "-DUSE_FATFS=1")
