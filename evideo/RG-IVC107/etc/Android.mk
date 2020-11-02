
LOCAL_PATH := $(call my-dir)

#####################################
include $(CLEAR_VARS)
LOCAL_MODULE := EsFile
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := EsFile.apk
LOCAL_OVERRIDES_PACKAGES := RkExplorer
include $(BUILD_PREBUILT)

#####################################
include $(CLEAR_VARS)
LOCAL_MODULE := SFLauncher
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := sifang_launcher_1.1.1.apk
# LOCAL_OVERRIDES_PACKAGES := Launcher3
include $(BUILD_PREBUILT)

#####################################
