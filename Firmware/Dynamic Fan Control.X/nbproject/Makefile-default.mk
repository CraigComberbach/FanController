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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Main.c ../../../Libraries/Timers/Firmware/Timers.c ../../../Libraries/Pins/Pins.c ../../../Libraries/A2D/A2D.c Config.c "../../../Libraries/I2C/I2C Master.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Main.o ${OBJECTDIR}/_ext/972003159/Timers.o ${OBJECTDIR}/_ext/93644285/Pins.o ${OBJECTDIR}/_ext/972868274/A2D.o ${OBJECTDIR}/Config.o "${OBJECTDIR}/_ext/972860587/I2C Master.o"
POSSIBLE_DEPFILES=${OBJECTDIR}/Main.o.d ${OBJECTDIR}/_ext/972003159/Timers.o.d ${OBJECTDIR}/_ext/93644285/Pins.o.d ${OBJECTDIR}/_ext/972868274/A2D.o.d ${OBJECTDIR}/Config.o.d "${OBJECTDIR}/_ext/972860587/I2C Master.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/Main.o ${OBJECTDIR}/_ext/972003159/Timers.o ${OBJECTDIR}/_ext/93644285/Pins.o ${OBJECTDIR}/_ext/972868274/A2D.o ${OBJECTDIR}/Config.o ${OBJECTDIR}/_ext/972860587/I2C\ Master.o

# Source Files
SOURCEFILES=Main.c ../../../Libraries/Timers/Firmware/Timers.c ../../../Libraries/Pins/Pins.c ../../../Libraries/A2D/A2D.c Config.c ../../../Libraries/I2C/I2C Master.c


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24F08KL200
MP_LINKER_FILE_OPTION=,--script=p24F08KL200.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Main.c  -o ${OBJECTDIR}/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/972003159/Timers.o: ../../../Libraries/Timers/Firmware/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/972003159 
	@${RM} ${OBJECTDIR}/_ext/972003159/Timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Libraries/Timers/Firmware/Timers.c  -o ${OBJECTDIR}/_ext/972003159/Timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/972003159/Timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/972003159/Timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/93644285/Pins.o: ../../../Libraries/Pins/Pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/93644285 
	@${RM} ${OBJECTDIR}/_ext/93644285/Pins.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Libraries/Pins/Pins.c  -o ${OBJECTDIR}/_ext/93644285/Pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/93644285/Pins.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/93644285/Pins.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/972868274/A2D.o: ../../../Libraries/A2D/A2D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/972868274 
	@${RM} ${OBJECTDIR}/_ext/972868274/A2D.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Libraries/A2D/A2D.c  -o ${OBJECTDIR}/_ext/972868274/A2D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/972868274/A2D.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/972868274/A2D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Config.o: Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Config.c  -o ${OBJECTDIR}/Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/972860587/I2C\ Master.o: ../../../Libraries/I2C/I2C\ Master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/972860587 
	@${RM} ${OBJECTDIR}/_ext/972860587/I2C\ Master.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../Libraries/I2C/I2C Master.c"  -o "${OBJECTDIR}/_ext/972860587/I2C Master.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/972860587/I2C Master.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/972860587/I2C Master.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Main.c  -o ${OBJECTDIR}/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"      -g -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/972003159/Timers.o: ../../../Libraries/Timers/Firmware/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/972003159 
	@${RM} ${OBJECTDIR}/_ext/972003159/Timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Libraries/Timers/Firmware/Timers.c  -o ${OBJECTDIR}/_ext/972003159/Timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/972003159/Timers.o.d"      -g -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/972003159/Timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/93644285/Pins.o: ../../../Libraries/Pins/Pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/93644285 
	@${RM} ${OBJECTDIR}/_ext/93644285/Pins.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Libraries/Pins/Pins.c  -o ${OBJECTDIR}/_ext/93644285/Pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/93644285/Pins.o.d"      -g -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/93644285/Pins.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/972868274/A2D.o: ../../../Libraries/A2D/A2D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/972868274 
	@${RM} ${OBJECTDIR}/_ext/972868274/A2D.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Libraries/A2D/A2D.c  -o ${OBJECTDIR}/_ext/972868274/A2D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/972868274/A2D.o.d"      -g -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/972868274/A2D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Config.o: Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Config.c  -o ${OBJECTDIR}/Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Config.o.d"      -g -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/972860587/I2C\ Master.o: ../../../Libraries/I2C/I2C\ Master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/972860587 
	@${RM} ${OBJECTDIR}/_ext/972860587/I2C\ Master.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "../../../Libraries/I2C/I2C Master.c"  -o "${OBJECTDIR}/_ext/972860587/I2C Master.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/972860587/I2C Master.o.d"      -g -omf=elf -O0 -I"../../../Libraries/A2D" -I"../../../Libraries/I2C" -I"../../../Libraries/Pins" -I"../../../Libraries/Timers/Firmware" -I"C:/Users/craigc/Dropbox/Local Code/Personal Projects/FanController/Firmware/Dynamic Fan Control.X" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/972860587/I2C Master.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,$(MP_LINKER_FILE_OPTION),--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
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
