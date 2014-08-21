LOCAL_PATH := $(call my-dir)

# Build malkor #
include $(CLEAR_VARS)
LOCAL_MODULE    := melkor
SRC             := src
LOCAL_SRC_FILES := $(SRC)/melkor.c $(SRC)/logger.c \
                   $(SRC)/fuzz_hdr.c $(SRC)/fuzz_sht.c \
                   $(SRC)/fuzz_pht.c $(SRC)/fuzz_sym.c \
                   $(SRC)/fuzz_dyn.c $(SRC)/fuzz_rel.c \
                   $(SRC)/fuzz_note.c $(SRC)/fuzz_strs.c \
                   $(SRC)/generators.c

LOCAL_CFLAGS    += -fPIE -ggdb -Wall -Wno-maybe-uninitialized -DDEBUG
LOCAL_LDFLAGS   += -fPIE -pie
include $(BUILD_EXECUTABLE)

# Build envtools  #
include $(CLEAR_VARS)
LOCAL_MODULE    := env1
SRC             := src
LOCAL_SRC_FILES := $(SRC)/env1.c $(SRC)/generators.c

LOCAL_CFLAGS    += -fPIE -ggdb -Wall -DDEBUG
LOCAL_LDFLAGS   += -fPIE -pie
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE    := env2
SRC             := src
LOCAL_SRC_FILES := $(SRC)/env2.c $(SRC)/generators.c

LOCAL_CFLAGS    += -fPIE -ggdb -Wall -DDEBUG
LOCAL_LDFLAGS   += -fPIE -pie
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE    := env3
SRC             := src
LOCAL_SRC_FILES := $(SRC)/env3.c $(SRC)/generators.c

LOCAL_CFLAGS    += -fPIE -ggdb -Wall -DDEBUG
LOCAL_LDFLAGS   += -fPIE -pie
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE    := print_envp_vars
SRC             := src
LOCAL_SRC_FILES := $(SRC)/print_envp_vars.c $(SRC)/generators.c

LOCAL_CFLAGS    += -fPIE -ggdb -Wall -DDEBUG
LOCAL_LDFLAGS   += -fPIE -pie
include $(BUILD_EXECUTABLE)
