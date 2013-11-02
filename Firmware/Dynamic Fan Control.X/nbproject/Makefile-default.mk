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
SOURCEFILES_QUOTED_IF_SPACED=Initialize.c Main.c "../../../Personal Libraries/Timers/Firmware/Timers.c" "../../../Personal Libraries/A2D/A2D.c" "../../../Personal Libraries/I2C/I2C.c" "../../../Personal Libraries/Pins/Pins.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Initialize.o ${OBJECTDIR}/Main.o ${OBJECTDIR}/_ext/122442901/Timers.o ${OBJECTDIR}/_ext/1466736756/A2D.o ${OBJECTDIR}/_ext/1466729069/I2C.o ${OBJECTDIR}/_ext/1776301957/Pins.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Initialize.o.d ${OBJECTDIR}/Main.o.d ${OBJECTDIR}/_ext/122442901/Timers.o.d ${OBJECTDIR}/_ext/1466736756/A2D.o.d ${OBJECTDIR}/_ext/1466729069/I2C.o.d ${OBJECTDIR}/_ext/1776301957/Pins.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Initialize.o ${OBJECTDIR}/Main.o ${OBJECTDIR}/_ext/122442901/Timers.o ${OBJECTDIR}/_ext/1466736756/A2D.o ${OBJECTDIR}/_ext/1466729069/I2C.o ${OBJECTDIR}/_ext/1776301957/Pins.o

# Source Files
SOURCEFILES=Initialize.c Main.c ../../../Personal Libraries/Timers/Firmware/Timers.c ../../../Personal Libraries/A2D/A2D.c ../../../Personal Libraries/I2C/I2C.c ../../../Personal Libraries/Pins/Pins.c


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
MP_LINKER_FILE_OPTION=,-Tp24F08KL200.gld
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Initialize.o: Initialize.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Initialize.o.d 
	@${RM} ${OBJECTDIR}/Initialize.o.ok ${OBJECTDIR}/Initialize.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Initialize.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/Initialize.o.d" -o ${OBJECTDIR}/Initialize.o Initialize.c    
	
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o.ok ${OBJECTDIR}/Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/Main.o.d" -o ${OBJECTDIR}/Main.o Main.c    
	
${OBJECTDIR}/_ext/122442901/Timers.o: ../../../Personal\ Libraries/Timers/Firmware/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/122442901 
	@${RM} ${OBJECTDIR}/_ext/122442901/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/122442901/Timers.o.ok ${OBJECTDIR}/_ext/122442901/Timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122442901/Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/122442901/Timers.o.d" -o ${OBJECTDIR}/_ext/122442901/Timers.o "../../../Personal Libraries/Timers/Firmware/Timers.c"    
	
${OBJECTDIR}/_ext/1466736756/A2D.o: ../../../Personal\ Libraries/A2D/A2D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1466736756 
	@${RM} ${OBJECTDIR}/_ext/1466736756/A2D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466736756/A2D.o.ok ${OBJECTDIR}/_ext/1466736756/A2D.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466736756/A2D.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/1466736756/A2D.o.d" -o ${OBJECTDIR}/_ext/1466736756/A2D.o "../../../Personal Libraries/A2D/A2D.c"    
	
${OBJECTDIR}/_ext/1466729069/I2C.o: ../../../Personal\ Libraries/I2C/I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1466729069 
	@${RM} ${OBJECTDIR}/_ext/1466729069/I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466729069/I2C.o.ok ${OBJECTDIR}/_ext/1466729069/I2C.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466729069/I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/1466729069/I2C.o.d" -o ${OBJECTDIR}/_ext/1466729069/I2C.o "../../../Personal Libraries/I2C/I2C.c"    
	
${OBJECTDIR}/_ext/1776301957/Pins.o: ../../../Personal\ Libraries/Pins/Pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1776301957 
	@${RM} ${OBJECTDIR}/_ext/1776301957/Pins.o.d 
	@${RM} ${OBJECTDIR}/_ext/1776301957/Pins.o.ok ${OBJECTDIR}/_ext/1776301957/Pins.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1776301957/Pins.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/1776301957/Pins.o.d" -o ${OBJECTDIR}/_ext/1776301957/Pins.o "../../../Personal Libraries/Pins/Pins.c"    
	
else
${OBJECTDIR}/Initialize.o: Initialize.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Initialize.o.d 
	@${RM} ${OBJECTDIR}/Initialize.o.ok ${OBJECTDIR}/Initialize.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Initialize.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/Initialize.o.d" -o ${OBJECTDIR}/Initialize.o Initialize.c    
	
${OBJECTDIR}/Main.o: Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Main.o.d 
	@${RM} ${OBJECTDIR}/Main.o.ok ${OBJECTDIR}/Main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/Main.o.d" -o ${OBJECTDIR}/Main.o Main.c    
	
${OBJECTDIR}/_ext/122442901/Timers.o: ../../../Personal\ Libraries/Timers/Firmware/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/122442901 
	@${RM} ${OBJECTDIR}/_ext/122442901/Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/122442901/Timers.o.ok ${OBJECTDIR}/_ext/122442901/Timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122442901/Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/122442901/Timers.o.d" -o ${OBJECTDIR}/_ext/122442901/Timers.o "../../../Personal Libraries/Timers/Firmware/Timers.c"    
	
${OBJECTDIR}/_ext/1466736756/A2D.o: ../../../Personal\ Libraries/A2D/A2D.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1466736756 
	@${RM} ${OBJECTDIR}/_ext/1466736756/A2D.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466736756/A2D.o.ok ${OBJECTDIR}/_ext/1466736756/A2D.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466736756/A2D.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/1466736756/A2D.o.d" -o ${OBJECTDIR}/_ext/1466736756/A2D.o "../../../Personal Libraries/A2D/A2D.c"    
	
${OBJECTDIR}/_ext/1466729069/I2C.o: ../../../Personal\ Libraries/I2C/I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1466729069 
	@${RM} ${OBJECTDIR}/_ext/1466729069/I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466729069/I2C.o.ok ${OBJECTDIR}/_ext/1466729069/I2C.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1466729069/I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/1466729069/I2C.o.d" -o ${OBJECTDIR}/_ext/1466729069/I2C.o "../../../Personal Libraries/I2C/I2C.c"    
	
${OBJECTDIR}/_ext/1776301957/Pins.o: ../../../Personal\ Libraries/Pins/Pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1776301957 
	@${RM} ${OBJECTDIR}/_ext/1776301957/Pins.o.d 
	@${RM} ${OBJECTDIR}/_ext/1776301957/Pins.o.ok ${OBJECTDIR}/_ext/1776301957/Pins.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1776301957/Pins.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/A2D" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/I2C" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Pins" -I"C:/Users/Craig/Dropbox/Local Code/Personal Libraries/Timers" -MMD -MF "${OBJECTDIR}/_ext/1776301957/Pins.o.d" -o ${OBJECTDIR}/_ext/1776301957/Pins.o "../../../Personal Libraries/Pins/Pins.c"    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Dynamic_Fan_Control.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
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
