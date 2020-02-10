list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})
include("${CMAKE_CURRENT_LIST_DIR}/arm-cortex-m4f.cmake")

set(QUICKAI_SDK_ROOT "" CACHE PATH  "Path to QuickAI SDK root")
set(QUICKAI_APP_NAME "" CACHE  PROPERTY  "QuickAI SDK Application")

include_directories(${QUICKAI_SDK_ROOT}/App/${QUICKAI_APP_NAME}/inc
${QUICKAI_SDK_ROOT}/App/${QUICKAI_APP_NAME}/knowledgepack/sensiml/inc
${QUICKAI_SDK_ROOT}/App/${QUICKAI_APP_NAME}/knowledgepack/inc
${QUICKAI_SDK_ROOT}/Libraries/CMSIS/DSP/Include
${QUICKAI_SDK_ROOT}/Libraries/CMSIS/inc
${QUICKAI_SDK_ROOT}/HAL/inc
${QUICKAI_SDK_ROOT}/FreeRTOSv10_1_1/include
${QUICKAI_SDK_ROOT}/FreeRTOSv10_1_1/portable/GCC/ARM_CM4F_quicklogic_s3XX
${QUICKAI_SDK_ROOT}/Libraries/Power/inc
${QUICKAI_SDK_ROOT}/Libraries/SensorFramework/inc
${QUICKAI_SDK_ROOT}/Libraries/SensorFramework/drivers/M4/LSM6DSL
${QUICKAI_SDK_ROOT}/Libraries/SensorFramework/inc
${QUICKAI_SDK_ROOT}/Libraries/SensorFramework/drivers/inc
${QUICKAI_SDK_ROOT}/Libraries/SensorFramework/test/inc
#${QUICKAI_SDK_ROOT}/Libraries/Utils/inc
${QUICKAI_SDK_ROOT}/Libraries/FreeRTOS_FAT/include
${QUICKAI_SDK_ROOT}/Libraries/FreeRTOS_FAT/portable/QL
${QUICKAI_SDK_ROOT}/Libraries/FreeRTOS_FAT
${QUICKAI_SDK_ROOT}/Libraries/QLFS/inc
${QUICKAI_SDK_ROOT}/Libraries/QLUART/inc
${QUICKAI_SDK_ROOT}/Libraries/SysFlash/inc
${QUICKAI_SDK_ROOT}/BSP/QuickAI/inc
${QUICKAI_SDK_ROOT}/Libraries/riff_file/inc
${QUICKAI_SDK_ROOT}/Libraries/cli/inc
${QUICKAI_SDK_ROOT}/Tasks/Audio/inc
${QUICKAI_SDK_ROOT}/Tasks/AI/inc
${QUICKAI_SDK_ROOT}/Tasks/IMU/inc
${QUICKAI_SDK_ROOT}/Tasks/ADC/inc
${QUICKAI_SDK_ROOT}/Tasks/KPD/inc
${QUICKAI_SDK_ROOT}/Tasks/BLE/inc
${QUICKAI_SDK_ROOT}/App/${QUICKAI_APP_NAME}/sensiml/inc
${QUICKAI_SDK_ROOT}/App/${QUICKAI_APP_NAME}/sensiml/
${QUICKAI_SDK_ROOT}/Libraries/DatablockManager/inc
${QUICKAI_SDK_ROOT}/Tasks/DatablockProcessor/inc)
#${QUICKAI_SDK_ROOT}/QAI-Common/inc)

list(APPEND DEVICE_MACROS "-D__FPU_USED=1"
    "-D__FPU_USED=1"
    "-D__M4_DEBUG"
    "-D__EOSS3_CHIP"
    "-D__RTOS"
    "-D__GNU_SOURCE"
    "-D_DEFAULT_SOURCE"
    "-DARM_MATH_CM4"
    "-DFFE_NEWARCH"
    "-DARM_MATH_MATRIX_CHECK"
    "-DARM_MATH_ROUNDING"
    "-D__FPU_PRESENT"
    "-DconfigUSE_STATS_FORMATTING_FUNCTIONS"
    "-DconfigUSE_TRACE_FACILITY"
    "-DNDEBUG"
    "-DGCC_MAKE"
    "-DUSES_FREERTOS"
    "-DSENSIML_RECOGNITION"
    "-DKBSIM")