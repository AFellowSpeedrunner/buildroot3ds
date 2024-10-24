################################################################################
#
# wavpack
#
################################################################################

WAVPACK_VERSION = 5.7.0
WAVPACK_SITE = \
	https://github.com/dbry/WavPack/releases/download/$(WAVPACK_VERSION)
WAVPACK_SOURCE = wavpack-$(WAVPACK_VERSION).tar.xz
WAVPACK_INSTALL_STAGING = YES
WAVPACK_DEPENDENCIES = $(if $(BR2_ENABLE_LOCALE),,libiconv)
WAVPACK_LICENSE = BSD-3-Clause
WAVPACK_LICENSE_FILES = COPYING
WAVPACK_CPE_ID_VENDOR = wavpack

# 0001-issue-110-sanitize-DSD-file-types-for-invalid-lengths.patch
WAVPACK_IGNORE_CVES += CVE-2021-44269

ifeq ($(BR2_PACKAGE_LIBICONV),y)
WAVPACK_CONF_OPTS += LIBS=-liconv
endif

ifeq ($(BR2_TOOLCHAIN_HAS_THREADS),y)
WAVPACK_CONF_OPTS += --enable-threads
else
WAVPACK_CONF_OPTS += --disable-threads
endif

# WavPack "autodetects" CPU type to enable ASM code. However, the assembly code
# for ARM is written for ARMv7 only and building WavPack for an ARM-non-v7
# architecture will fail. We explicitly enable ASM for the supported
# architectures x86, x64 and ARMv7 and disable it for all others.
ifeq ($(BR2_i386)$(BR2_x86_64)$(BR2_ARM_CPU_ARMV7A),y)
WAVPACK_CONF_OPTS += --enable-asm
else
WAVPACK_CONF_OPTS += --disable-asm
endif

$(eval $(autotools-package))
