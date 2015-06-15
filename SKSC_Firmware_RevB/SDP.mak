# Generated by the VisualDSP++ IDDE

# Note:  Any changes made to this Makefile will be lost the next time the
# matching project file is loaded into the IDDE.  If you wish to preserve
# changes, rename this file and run it externally to the IDDE.

# The syntax of this Makefile is such that GNU Make v3.77 or higher is
# required.

# The current working directory should be the directory in which this
# Makefile resides.

# Supported targets:
#     CurrentSensor_Release
#     CurrentSensor_Release_clean

# Define this variable if you wish to run this Makefile on a host
# other than the host that created it and VisualDSP++ may be installed
# in a different directory.

ADI_DSP=C:\Program Files (x86)\Analog Devices\VisualDSP 5.1.1


# $VDSP is a gmake-friendly version of ADI_DIR

empty:=
space:= $(empty) $(empty)
VDSP_INTERMEDIATE=$(subst \,/,$(ADI_DSP))
VDSP=$(subst $(space),\$(space),$(VDSP_INTERMEDIATE))

RM=cmd /C del /F /Q

#
# Begin "CurrentSensor_Release" configuration
#

ifeq ($(MAKECMDGOALS),CurrentSensor_Release)

CurrentSensor_Release : ./Release/CurrentSensor.ldr 

./Release/CurrentSensor_basiccrt.doj :./CurrentSensor_basiccrt.s $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/sys/_adi_platform.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/platform.h 
	@echo ".\CurrentSensor_basiccrt.s"
	$(VDSP)/easmblkfn.exe .\CurrentSensor_basiccrt.s -proc ADSP-BF527 -file-attr ProjectName=CurrentSensor -si-revision 0.2 -o .\Release\CurrentSensor_basiccrt.doj -MM

Release/CurrentSensor_heaptab.doj :CurrentSensor_heaptab.c 
	@echo ".\CurrentSensor_heaptab.c"
	$(VDSP)/ccblkfn.exe -c .\CurrentSensor_heaptab.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\CurrentSensor_heaptab.doj -MM

Release/SDP.doj :SDP.c SDP_std_include.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_general_functions.h SDP_usb.h $(VDSP)/Blackfin/include/bfrom.h SDP_ssl_init.h SDP_signalpath.h SDP_onewire.h SDP_uart.h SDP_adc.h 
	@echo ".\SDP.c"
	$(VDSP)/ccblkfn.exe -c .\SDP.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP.doj -MM

Release/SDP_adc.doj :SDP_adc.c SDP_std_include.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_general_functions.h SDP_usb.h SDP_adc.h $(VDSP)/Blackfin/include/string.h 
	@echo ".\SDP_adc.c"
	$(VDSP)/ccblkfn.exe -c .\SDP_adc.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP_adc.doj -MM

Release/SDP_general_functions.doj :SDP_general_functions.c SDP_std_include.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_general_functions.h SDP_usb.h SDP_adc.h 
	@echo ".\SDP_general_functions.c"
	$(VDSP)/ccblkfn.exe -c .\SDP_general_functions.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP_general_functions.doj -MM

Release/SDP_onewire.doj :SDP_onewire.c SDP_onewire.h SDP_std_include.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_general_functions.h SDP_usb.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/string.h $(VDSP)/Blackfin/include/bfrom.h 
	@echo ".\SDP_onewire.c"
	$(VDSP)/ccblkfn.exe -c .\SDP_onewire.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP_onewire.doj -MM

Release/SDP_signalpath.doj :SDP_signalpath.c SDP_std_include.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_general_functions.h SDP_usb.h SDP_signalpath.h $(VDSP)/Blackfin/include/string.h 
	@echo ".\SDP_signalpath.c"
	$(VDSP)/ccblkfn.exe -c .\SDP_signalpath.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP_signalpath.doj -MM

Release/SDP_ssl_init.doj :SDP_ssl_init.c $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_ssl_init.h 
	@echo ".\SDP_ssl_init.c"
	$(VDSP)/ccblkfn.exe -c .\SDP_ssl_init.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP_ssl_init.doj -MM

Release/SDP_uart.doj :SDP_uart.c SDP_uart.h SDP_std_include.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_general_functions.h SDP_usb.h $(VDSP)/Blackfin/include/string.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h 
	@echo ".\SDP_uart.c"
	$(VDSP)/ccblkfn.exe -c .\SDP_uart.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP_uart.doj -MM

Release/SDP_usb.doj :SDP_usb.c SDP_std_include.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF527.h $(VDSP)/Blackfin/include/defBF527.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF52x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF52x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf52x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/drivers/adi_dev.h SDP_general_functions.h SDP_usb.h $(VDSP)/Blackfin/include/bfrom.h $(VDSP)/Blackfin/include/drivers/usb/usb_core/adi_usb_core.h $(VDSP)/Blackfin/include/drivers/usb/usb_core/adi_usb_objects.h $(VDSP)/Blackfin/include/drivers/usb/usb_core/adi_usb_common.h $(VDSP)/Blackfin/include/drivers/usb/usb_core/adi_usb_types.h $(VDSP)/Blackfin/include/drivers/usb/controller/otg/adi/hdrc/adi_usb_hdrc.h $(VDSP)/Blackfin/include/drivers/usb/class/peripheral/vendor_specific/adi/bulkadi/adi_usb_bulkadi.h $(VDSP)/Blackfin/include/stdio.h SDP_signalpath.h 
	@echo ".\SDP_usb.c"
	$(VDSP)/ccblkfn.exe -c .\SDP_usb.c -file-attr ProjectName=CurrentSensor -structs-do-not-overlap -no-multiline -double-size-32 -decls-strong -warn-protos -si-revision 0.2 -proc ADSP-BF527 -o .\Release\SDP_usb.doj -MM

./Release/CurrentSensor.dxe :./CurrentSensor.ldf ./Release/CurrentSensor_basiccrt.doj $(VDSP)/Blackfin/lib/bf523_rev_any/libprofile532y.dlb ./Release/CurrentSensor_heaptab.doj ./Release/SDP.doj ./Release/SDP_adc.doj ./Release/SDP_general_functions.doj ./Release/SDP_onewire.doj ./Release/SDP_ssl_init.doj ./Release/SDP_uart.doj ./Release/SDP_usb.doj ./Release/SDP_signalpath.doj $(VDSP)/Blackfin/lib/cplbtab527.doj $(VDSP)/Blackfin/lib/bf523_rev_any/crtn532y.doj $(VDSP)/Blackfin/lib/bf523_rev_any/libsmall532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libio532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libc532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libevent532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libssl527y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libdrv527y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libusb527y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libx532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libcpp532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libcpprt532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libf64ieee532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libdsp532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libsftflt532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libetsi532y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/libftl527y.dlb $(VDSP)/Blackfin/lib/bf523_rev_any/idle532mty.doj $(VDSP)/Blackfin/lib/bf523_rev_any/librt_fileio532y.dlb 
	@echo "Linking..."
	$(VDSP)/ccblkfn.exe .\Release\CurrentSensor_basiccrt.doj .\Release\CurrentSensor_heaptab.doj .\Release\SDP.doj .\Release\SDP_adc.doj .\Release\SDP_general_functions.doj .\Release\SDP_onewire.doj .\Release\SDP_signalpath.doj .\Release\SDP_ssl_init.doj .\Release\SDP_uart.doj .\Release\SDP_usb.doj -T .\CurrentSensor.ldf -map .\Release\CurrentSensor.map.xml -flags-link -ip -L .\Release -flags-link -MDUSE_FILEIO,-MD__cplusplus,-MDUSER_CRT=ADI_QUOTECurrentSensor_basiccrt.dojADI_QUOTE -flags-link -e -flags-link -od,.\Release -o .\Release\CurrentSensor.dxe -proc ADSP-BF527 -si-revision 0.2 -flags-link -MM

./Release/CurrentSensor.ldr :./Release/CurrentSensor.dxe 
	@echo "Creating loader file..."
	$(VDSP)/elfloader.exe .\Release\CurrentSensor.dxe -b SPI -f HEX -Width 8 -init D:\PORJECT\SKCS\FW\SKSC_FW\ -\ v1.2.6\ezkitBF527_initcode_ROM.dxe -o .\Release\CurrentSensor.ldr -No2Kernel -denseblocks -si-revision 0.2 -proc ADSP-BF527 -MM

endif

ifeq ($(MAKECMDGOALS),CurrentSensor_Release_clean)

CurrentSensor_Release_clean:
	-$(RM) ".\Release\CurrentSensor_basiccrt.doj"
	-$(RM) "Release\CurrentSensor_heaptab.doj"
	-$(RM) "Release\SDP.doj"
	-$(RM) "Release\SDP_adc.doj"
	-$(RM) "Release\SDP_general_functions.doj"
	-$(RM) "Release\SDP_onewire.doj"
	-$(RM) "Release\SDP_signalpath.doj"
	-$(RM) "Release\SDP_ssl_init.doj"
	-$(RM) "Release\SDP_uart.doj"
	-$(RM) "Release\SDP_usb.doj"
	-$(RM) ".\Release\CurrentSensor.dxe"
	-$(RM) ".\Release\CurrentSensor.ldr"
	-$(RM) ".\Release\*.ipa"
	-$(RM) ".\Release\*.opa"
	-$(RM) ".\Release\*.ti"
	-$(RM) ".\Release\*.pgi"
	-$(RM) ".\*.rbld"

endif


