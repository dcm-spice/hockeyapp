LOCAL_PATH := $(call my-dir)/hockeyapp

include $(CLEAR_VARS)

LOCAL_MODULE_FILENAME := libhockeyapp
LOCAL_MODULE := hockeyapp_static
LOCAL_SRC_FILES := jni/HockeyApp.cpp

LOCAL_C_INCLUDES := $(POD_PATH)/breakpad/breakpad/src/common/android/include \
					$(POD_PATH)/breakpad/breakpad/src \
					$(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)

$(call import-module,breakpad)
