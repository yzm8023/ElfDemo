LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := ElfHook

LOCAL_LDLIBS := -llog
LOCAL_SRC_FILES := \
                elf_common.cc \
                elf_hooker.cc \
                elf_module.cc \
                elf_file.cc \
                elf_mapped.cc \
                main.cc

#LOCAL_CFLAGS := \
#                -Wno-write-strings \
#                -DHAVE_LITTLE_ENDIAN \
#                -DELFHOOK_STANDALONE=0

LOCAL_CFLAGS := -Wno-error=format-security -fpermissive
LOCAL_CFLAGS += -fno-rtti -fno-exceptions

include $(BUILD_SHARED_LIBRARY)

####################################

