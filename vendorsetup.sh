#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# export FOX_VENDOR_CMD="Fox_Before_Recovery_Image"

FDEVICE="a70q"
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

export OF_MAINTAINER="Zyrnnh Akash"
export FOX_VERSION="R10.0_0-alpha"
export FOX_BUILD_TYPE="Unofficial"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export TARGET_ARCH="arm64"

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

    # USE THIS WHEN BUILDING FOR R11
    # THIS REQUIRES R11 sources and pull latest commits to the vendor tree
    # export FOX_R11=1

    export PLATFORM_VERSTION="9.0"
    export PLATFORM_SECURITY_PATCH="2099-12-31"
    export TW_DEFAULT_LANGUAGE="en"

    export OF_PATCH_AVB20=1
    export OF_CHECK_OVERWRITE_ATTEMPTS=1

    # # 330 kb
    # export FOX_USE_NANO_EDITOR=1
    # # 275kb
    # export FOX_USE_ZIP_BINARY=1
    # export FOX_REPLACE_BUSYBOX_PS=1
    # export FOX_USE_BASH_SHELL=1
    # export FOX_ASH_IS_BASH=1
    # export FOX_USE_TAR_BINARY=1
    export FOX_USE_LZMA_COMPRESSION=1
    
    
    # SCREEN: 1080x2400, 20:9 ratio (~393 ppi density)
    export OF_SCREEN_H=2400
    export OF_STATUS_H=76
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=0
    
    # # LIGHTS
    # # export OF_FL_PATH1=/
    # # export OF_FL_PATH2=/
    export OF_FLASHLIGHT_ENABLE=1

    # # TO TEST
    export FOX_DELETE_AROMAFM=1
    export OF_USE_HEXDUMP=1

    # # EXPERIMENTAL
    # export OF_USE_MAGISKBOOT=1
    # export OF_USE_NEW_MAGISKBOOT=1
    # export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
    # export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
    # export OF_SUPPORT_PRE_FLASH_SCRIPT=1
    # export OF_DONT_KEEP_LOG_HISTORY=1
    # export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"
    
    
    # WHAT IS THIS?
    export OF_SKIP_FBE_DECRYPTION=1
    export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1

    # TAKING IT SLOW.
    export OF_DISABLE_DM_VERITY=1
    export OF_FORCE_DISABLE_DM_VERITY=1
    export OF_DISABLE_FORCED_ENCRYPTION=1
    export OF_FORCE_DISABLE_FORCED_ENCRYPTION=1
    export OF_DISABLE_DM_VERITY_FORCED_ENCRYPTION=1
    export OF_SKIP_ORANGEFOX_PROCESS=1
    
    # # TAKE THAT KERNEL!! (NOR VAHLES TUHR!) - HORVEC
    export OF_FORCE_DISABLE_DM_VERITY_FORCED_ENCRYPTION=1

    # # ANOTHER ONE
    # export OF_USE_SYSTEM_FINGERPRINT=1
    
    # # ENCRYPTION & COMPATIBILITY WIZARDRY
    export OF_NO_RELOAD_AFTER_DECRYPTION=1
    export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
    export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

    # # AB STUFF
    # export OF_AB_DEVICE=1

    # OTA STUFF
    # export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
    # export OF_OTA_RES_DECRYPT=1
    # export OF_NO_MIUI_OTA_VENDOR_BACKUP=1
    # export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
    # export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
    # export OF_OTA_RES_DECRYPT=1
    # export OF_NO_MIUI_OTA_VENDOR_BACKUP=1
    # export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1

    # TWRP & SAR
    export OF_USE_TWRP_SAR_DETECT=1
    
    # PLANNING FOR THE FUTURE
    # export FOX_RESET_SETTINGS=1

    # Mmm, show yourself >>
    if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
        export | grep "FOX" >> $FOX_BUILD_LOG_FILE
        export | grep "OF_" >> $FOX_BUILD_LOG_FILE
        export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
        export | grep "TW_" >> $FOX_BUILD_LOG_FILE
    fi

    add_lunch_combo omni_"$FDEVICE"-eng
    add_lunch_combo omni_"$FDEVICE"-userdebug
fi


