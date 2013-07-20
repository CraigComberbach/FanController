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

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Main.o ${OBJECTDIR}/Initialize.o ${OBJECTDIR}/A2D.o ${OBJECTDIR}/Pins.o ${OBJECTDIR}/Timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Main.o.d ${OBJECTDIR}/Initialize.o.d ${OBJECTDIR}/A2D.o.d ${OBJECTDIR}/Pins.o.d ${OBJECTDIR}/Timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Main.o ${OBJECTDIR}/Initialize.o ${OBJECTDIR}/A2D.o ${OBJECTDIR}/Pins.o ${OBJECTDIR}/Timers.o


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
	${MP_CC} $(MP_EXTRA_CC_PRE)  Main.c  -o ${OBJECTDIR}/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Initialize.o: Initialize.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Initialize.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Initialize.c  -o ${OBJECTDIR}/Initialize.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Initialize.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Initialize.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/A2D.o: A2D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/A2D.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  A2D.c  -o ${OBJECTDIR}/A2D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/A2D.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/A2D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Pins.o: Pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Pins.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Pins.c  -o ${OBJECTDIR}/Pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Pins.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Pins.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Timers.o: Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timers.c  -o ${OBJECTDIR}/Timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Timers.o.d"        -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Main.c  -o ${OBJECTDIR}/Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Main.o.d"        -g -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Initialize.o: Initialize.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Initialize.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Initialize.c  -o ${OBJECTDIR}/Initialize.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Initialize.o.d"        -g -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Initialize.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/A2D.o: A2D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/A2D.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  A2D.c  -o ${OBJECTDIR}/A2D.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/A2D.o.d"        -g -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/A2D.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Pins.o: Pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Pins.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Pins.c  -o ${OBJECTDIR}/Pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Pins.o.d"        -g -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Pins.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Timers.o: Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timers.c  -o ${OBJECTDIR}/Timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Timers.o.d"        -g -omf=elf -O0 -msmart-io=1 -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/Timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem$(MP_EXTRA_LD_POST) 
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
