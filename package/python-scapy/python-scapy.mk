################################################################################
#
# python-scapy
#
################################################################################

PYTHON_SCAPY_VERSION = 2.6.0
PYTHON_SCAPY_SOURCE = scapy-$(PYTHON_SCAPY_VERSION).tar.gz
PYTHON_SCAPY_SITE = https://files.pythonhosted.org/packages/70/ca/17cc6ee0dbf342193732312f14bfc879dd162570287fd9f65ac1eb8a9c5f
PYTHON_SCAPY_SETUP_TYPE = setuptools
PYTHON_SCAPY_LICENSE = GPL-2.0
PYTHON_SCAPY_LICENSE_FILES = LICENSE
PYTHON_SCAPY_CPE_ID_VENDOR = scapy
PYTHON_SCAPY_CPE_ID_PRODUCT = scapy

$(eval $(python-package))
