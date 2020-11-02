#############################################
# Settings Robolectric test target. #
#############################################
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)

# Include the testing libraries (JUnit4 + Robolectric libs).
LOCAL_STATIC_JAVA_LIBRARIES := \
    mockito-robolectric-prebuilt \
    truth-prebuilt

LOCAL_JAVA_LIBRARIES := \
    junit \
    platform-robolectric-prebuilt \
    sdk_vcurrent \
    telephony-common

LOCAL_INSTRUMENTATION_FOR := EvSettings

LOCAL_OVERRIDES_PACKAGES := SettingsRoboTests
LOCAL_MODULE := EvSettingsRoboTests

LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_JAVA_LIBRARY)

#############################################################
# Settings runner target to run the previous target. #
#############################################################
include $(CLEAR_VARS)

LOCAL_OVERRIDES_PACKAGES := RunSettingsRoboTests

LOCAL_MODULE := EvRunSettingsRoboTests

LOCAL_SDK_VERSION := current

LOCAL_STATIC_JAVA_LIBRARIES := \
    EvSettingsRoboTests

LOCAL_TEST_PACKAGE := EvSettings

LOCAL_INSTRUMENT_SOURCE_DIRS := $(dir $(LOCAL_PATH))../src

include prebuilts/misc/common/robolectric/run_robotests.mk
