#Enables the listed display HAL modules
#libs to be built for QCOM targets only

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),caf)
display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils

ifneq ($(TARGET_PROVIDES_LIBLIGHTS),true)
display-hals += liblight
endif

display-hals += libtilerenderer

include $(call all-named-subdir-makefiles,$(display-hals))
endif
endif