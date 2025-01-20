$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(recovery_ramdisk) $(recovery_kernel) $(RECOVERYIMAGE_EXTRA_DEPS)
	@echo "----- Making bootable recovery image for rtwo ------"
	$(MKBOOTIMG) --ramdisk $(PRODUCT_OUT)/ramdisk-recovery.img --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --os_version 14 --os_patch_level 2024-12-01 --header_version $(BOARD_BOOT_HEADER_VERSION) --output $@
	@echo "DONE! You can now flash the image using fastboot flash."
