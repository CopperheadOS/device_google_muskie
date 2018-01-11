KERNEL_DEFCONFIG := walleye_defconfig
KERNEL_DIR := kernel/google/wahoo
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_CLANG_TRIPLE := aarch64-linux-gnu-

include $(TOP)/$(KERNEL_DIR)/AndroidKernel.mk

.PHONY: $(PRODUCT_OUT)/kernel
$(PRODUCT_OUT)/kernel: $(TARGET_PREBUILT_KERNEL)
	cp $(TARGET_PREBUILT_KERNEL) $(PRODUCT_OUT)/kernel

-include device/google/muskie/AndroidBoard.mk
