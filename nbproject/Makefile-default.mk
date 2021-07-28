#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.c bsp/picdem_fs_usb/adc.c bsp/picdem_fs_usb/buttons.c bsp/picdem_fs_usb/leds.c apps/usb/device/hid_custom/firmware/demo_src/timers.c apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.c apps/usb/device/hid_custom/firmware/demo_src/usb_events.c framework/usb/src/usb_device.c framework/usb/src/usb_device_hid.c apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.c apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.c apps/usb/device/hid_custom/firmware/demo_src/isr_test.c apps/usb/device/hid_custom/firmware/demo_src/main.c apps/usb/device/hid_custom/firmware/demo_src/system.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1 ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1 ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1 ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1 ${OBJECTDIR}/framework/usb/src/usb_device.p1 ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1.d ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1.d ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1.d ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1.d ${OBJECTDIR}/framework/usb/src/usb_device.p1.d ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1 ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1 ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1 ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1 ${OBJECTDIR}/framework/usb/src/usb_device.p1 ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1 ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1

# Source Files
SOURCEFILES=bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.c bsp/picdem_fs_usb/adc.c bsp/picdem_fs_usb/buttons.c bsp/picdem_fs_usb/leds.c apps/usb/device/hid_custom/firmware/demo_src/timers.c apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.c apps/usb/device/hid_custom/firmware/demo_src/usb_events.c framework/usb/src/usb_device.c framework/usb/src/usb_device_hid.c apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.c apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.c apps/usb/device/hid_custom/firmware/demo_src/isr_test.c apps/usb/device/hid_custom/firmware/demo_src/main.c apps/usb/device/hid_custom/firmware/demo_src/system.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1: bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1 bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.d ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1: bsp/picdem_fs_usb/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1 bsp/picdem_fs_usb/adc.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.d ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1: bsp/picdem_fs_usb/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1 bsp/picdem_fs_usb/buttons.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.d ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1: bsp/picdem_fs_usb/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1 bsp/picdem_fs_usb/leds.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.d ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1: apps/usb/device/hid_custom/firmware/demo_src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1 apps/usb/device/hid_custom/firmware/demo_src/timers.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1: apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1 apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1: apps/usb/device/hid_custom/firmware/demo_src/usb_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1 apps/usb/device/hid_custom/firmware/demo_src/usb_events.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/framework/usb/src/usb_device.p1: framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/usb/src" 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/framework/usb/src/usb_device.p1 framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/framework/usb/src/usb_device.d ${OBJECTDIR}/framework/usb/src/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/framework/usb/src/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/framework/usb/src/usb_device_hid.p1: framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/usb/src" 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1 framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/framework/usb/src/usb_device_hid.d ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1: apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1 apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1: apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1 apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1: apps/usb/device/hid_custom/firmware/demo_src/isr_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1 apps/usb/device/hid_custom/firmware/demo_src/isr_test.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1: apps/usb/device/hid_custom/firmware/demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1 apps/usb/device/hid_custom/firmware/demo_src/main.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1: apps/usb/device/hid_custom/firmware/demo_src/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1 apps/usb/device/hid_custom/firmware/demo_src/system.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1: bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1 bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.d ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/SparkFun_ProDriver_TC78H670FTG.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1: bsp/picdem_fs_usb/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1 bsp/picdem_fs_usb/adc.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.d ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1: bsp/picdem_fs_usb/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1 bsp/picdem_fs_usb/buttons.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.d ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1: bsp/picdem_fs_usb/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/bsp/picdem_fs_usb" 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1.d 
	@${RM} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1 bsp/picdem_fs_usb/leds.c 
	@-${MV} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.d ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/bsp/picdem_fs_usb/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1: apps/usb/device/hid_custom/firmware/demo_src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1 apps/usb/device/hid_custom/firmware/demo_src/timers.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1: apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1 apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1: apps/usb/device/hid_custom/firmware/demo_src/usb_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1 apps/usb/device/hid_custom/firmware/demo_src/usb_events.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/usb_events.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/framework/usb/src/usb_device.p1: framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/usb/src" 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/framework/usb/src/usb_device.p1 framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/framework/usb/src/usb_device.d ${OBJECTDIR}/framework/usb/src/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/framework/usb/src/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/framework/usb/src/usb_device_hid.p1: framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/usb/src" 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1 framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/framework/usb/src/usb_device_hid.d ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/framework/usb/src/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1: apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1 apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_device_custom_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1: apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1 apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1: apps/usb/device/hid_custom/firmware/demo_src/isr_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1 apps/usb/device/hid_custom/firmware/demo_src/isr_test.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/isr_test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1: apps/usb/device/hid_custom/firmware/demo_src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1 apps/usb/device/hid_custom/firmware/demo_src/main.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1: apps/usb/device/hid_custom/firmware/demo_src/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src" 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1.d 
	@${RM} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1 apps/usb/device/hid_custom/firmware/demo_src/system.c 
	@-${MV} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.d ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/apps/usb/device/hid_custom/firmware/demo_src/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     --rom=default,-7dc0-7fff --ram=default,-3f4-3ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"bsp/picdem_fs_usb" -I"apps/usb/device/hid_custom/firmware/demo_src" -I"framework/usb/inc" -I"framework/usb/src" -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/MICROCHIP_USB_STEP_MOTOR_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
