REM  *
REM  * Copyright (C) 2014 Joerg Riechardt
REM  *
REM  * This program is free software; you can redistribute it and/or modify
REM  * it under the terms of the GNU General Public License as published by
REM  * the Free Software Foundation; either version 2 of the License, or
REM  * (at your option) any later version.
REM  *
REM    NOTE: atm the paths are absolute! you need C:\IRMP_STM32-master !
REM    TODO: implement relative paths
REM 
cd C:\IRMP_STM32-master\STM32F103\
mkdir ext_src
if exist C:\IRMP_STM32-master\STM32F103\ext_src\prepared goto EXIT
if not exist C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32010.zip powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('http://www.st.com/st-web-ui/static/active/en/st_prod_software_internet/resource/technical/software/firmware/stsw-stm32010.zip','C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32010.zip')
if not exist C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('http://www.st.com/st-web-ui/static/active/en/st_prod_software_internet/resource/technical/software/firmware/stsw-stm32121.zip', 'C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip')
REM if not exist C:\IRMP_STM32-master\STM32F103\ext_src\irmp.tar.gz powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('http://www.mikrocontroller.net/svnbrowser/irmp/?view=tar', 'C:\IRMP_STM32-master\STM32F103\ext_src\irmp.tar.gz')
mkdir cmsis_boot\startup
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis_boot').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\CMSIS\Device\ST\STM32F10x\Include\stm32f10x.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis_boot').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\CMSIS\Device\ST\STM32F10x\Include\system_stm32f10x.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis_boot').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\system_stm32f10x.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis_boot').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\stm32f10x_conf.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis_boot\startup').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\CMSIS\Device\ST\STM32F10x\Source\Templates\gcc_ride7\startup_stm32f10x_md.s'))
mkdir cmsis
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\CMSIS\Include\core_cm3.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\CMSIS\Include\core_cmFunc.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\cmsis').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\CMSIS\Include\core_cmInstr.h'))
mkdir stm_lib\inc
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\misc.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\stm32f10x_exti.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\stm32f10x_flash.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\stm32f10x_gpio.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\stm32f10x_pwr.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\stm32f10x_rcc.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\stm32f10x_tim.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\inc\stm32f10x_usart.h'))
mkdir stm_lib\src
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\misc.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_exti.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_flash.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_gpio.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_pwr.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_rcc.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_tim.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_usart.c'))
mkdir usb_hid\inc
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_core.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_def.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_init.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_int.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_lib.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_mem.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_regs.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_sil.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\inc\usb_type.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\platform_config.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\hw_config.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\stm32_it.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\usb_conf.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\usb_desc.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\usb_istr.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\usb_prop.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\inc\usb_pwr.h'))
mkdir usb_hid\src
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\hw_config.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\stm32_it.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\usb_desc.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\usb_endp.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\usb_istr.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\usb_prop.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Projects\Custom_HID\src\usb_pwr.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\src\usb_core.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\src\usb_init.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\src\usb_int.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\src\usb_mem.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\src\usb_regs.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\usb_hid\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32121.zip\STM32_USB-FS-Device_Lib_V4.0.0\Libraries\STM32_USB-FS-Device_Driver\src\usb_sil.c'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\inc').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32010.zip\STM32F10x_AN2594_FW_V3.1.0\Project\EEPROM_Emulation\inc\eeprom.h'))
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\stm_lib\src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\stsw-stm32010.zip\STM32F10x_AN2594_FW_V3.1.0\Project\EEPROM_Emulation\src\eeprom.c'))
powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('http://sourceforge.net/projects/gnuwin32/files/patch/2.5.9-7/patch-2.5.9-7-bin.zip/download', 'C:\IRMP_STM32-master\STM32F103\ext_src\patch-2.5.9-7-bin.zip')
if not exist C:\IRMP_STM32-master\STM32F103\ext_src\patch.exe powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\patch-2.5.9-7-bin.zip\bin\patch.exe'))
cd usb_hid
C:\IRMP_STM32-master\STM32F103\ext_src\patch.exe -p1 -i C:\IRMP_STM32-master\STM32F103\patches\usb_hid.patch --binary
cd ..\stm_lib
C:\IRMP_STM32-master\STM32F103\ext_src\patch.exe -p1 -i C:\IRMP_STM32-master\STM32F103\patches\eeprom.patch --binary
cd ..\cmsis_boot
C:\IRMP_STM32-master\STM32F103\ext_src\patch.exe -p1 -i C:\IRMP_STM32-master\STM32F103\patches\stm32f10x_conf.patch --binary
C:\IRMP_STM32-master\STM32F103\ext_src\patch.exe -p1 -i C:\IRMP_STM32-master\STM32F103\patches\startup.patch --binary
cd ..
if not exist C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('http://www.mikrocontroller.net/wikifiles/7/79/Irmp.zip','C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip')
if not exist C:\IRMP_STM32-master\STM32F103\ext_src\Irsnd.zip powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('http://www.mikrocontroller.net/wikifiles/c/c7/Irsnd.zip','C:\IRMP_STM32-master\STM32F103\ext_src\Irsnd.zip')
mkdir ext_src\irmp
mkdir irmp
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip').Items())
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip\irmp.c'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irmp.c C:\IRMP_STM32-master\STM32F103\irmp\irmp.c
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip\irmp.h'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irmp.h C:\IRMP_STM32-master\STM32F103\irmp\irmp.h
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip\irmpconfig.h'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irmpconfig.h C:\IRMP_STM32-master\STM32F103\irmp\irmpconfig.h
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip\irmpprotocols.h'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irmpprotocols.h C:\IRMP_STM32-master\STM32F103\irmp\irmpprotocols.h
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irmp.zip\irmpsystem.h'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irmpsystem.h C:\IRMP_STM32-master\STM32F103\irmp\irmpsystem.h
powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irsnd.zip').Items(), 20)
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irsnd.zip\irsnd.c'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irsnd.c C:\IRMP_STM32-master\STM32F103\irmp\irsnd.c
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irsnd.zip\irsnd.h'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irsnd.h C:\IRMP_STM32-master\STM32F103\irmp\irsnd.h
REM powershell.exe -Command (new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\irmp').copyhere((new-object -ComObject shell.application).Namespace('C:\IRMP_STM32-master\STM32F103\ext_src\Irsnd.zip\irsndconfig.h'))
copy C:\IRMP_STM32-master\STM32F103\ext_src\irmp\irsndconfig.h C:\IRMP_STM32-master\STM32F103\irmp\irsndconfig.h
del /F /S /Q C:\IRMP_STM32-master\STM32F103\ext_src\irmp\
rd /s /q ext_src\irmp
cd irmp
C:\IRMP_STM32-master\STM32F103\ext_src\patch.exe -p1 -i C:\IRMP_STM32-master\STM32F103\patches\irmp.patch --binary
cd ..
echo. > C:\IRMP_STM32-master\STM32F103\ext_src\prepared
:EXIT
