################################################################################
#
#  Aether-Radio's X6100 base control library
#
################################################################################

FT8LIB_VERSION = 7545c8e553250b2ec3c97298d80c81e8e85c3070
FT8LIB_SITE = https://github.com/gdyuldin/ft8_lib
FT8LIB_SITE_METHOD = git
FT8LIB_LICENSE = MIT

FT8LIB_INSTALL_STAGING = YES

define FT8LIB_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) lib
endef

define FT8LIB_INSTALL_STAGING_CMDS
    $(INSTALL) -D -m 0755 $(@D)/.build/libft8.so $(STAGING_DIR)/usr/lib
    $(INSTALL) -D -m 0644 $(@D)/ft8/*.h $(STAGING_DIR)/usr/include/ft8lib/
endef

define FT8LIB_INSTALL_HOST_CMDS
endef

define FT8LIB_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/.build/libft8.so  $(TARGET_DIR)/usr/lib
endef

$(eval $(generic-package))
