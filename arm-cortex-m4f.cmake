# Append current directory to CMAKE_MODULE_PATH for making device specific cmake modules visible
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})


set(SPECIFIC_CPU_FLAGS "-mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16")

include("${CMAKE_CURRENT_LIST_DIR}/toolchain-arm-none-eabi.cmake")