LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng

LOCAL_USE_FRAMEWORK_AIDL = 1

LOCAL_USE_AAPT2 := true
LOCAL_REQUIRED_MODULES := android-support-v4

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4

LOCAL_SRC_FILES := \
	$(call all-java-files-under, src)

LOCAL_AIDL_INCLUDES := $(LOCAL_PATH)/src/main/aidl

LOCAL_RESOURCE_DIR = \
	$(LOCAL_PATH)/res

LOCAL_PACKAGE_NAME := wifidirectdemp
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

LOCAL_AAPT_FLAGS := \
	--auto-add-overlay \
	--version-code 1 \
	--version-name 1.0 \
	--replace-version \
	--extra-packages android.support.v4





LOCAL_FULL_MANIFEST_FILE := $(LOCAL_PATH)/AndroidManifest.xml



LOCAL_PROGUARD_ENABLED := disabled
LOCAL_DEX_PREOPT := nostripping

include $(BUILD_PACKAGE)

