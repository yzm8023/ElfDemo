APP_ABI := armeabi
APP_PLATFORM := android-14
APP_STL := gnustl_static
APP_OPTIM := release
Elf_ROOT          := $(call my-dir)
NDK_MODULE_PATH  := $(NDK_MODULE_PATH):$(Elf_ROOT)