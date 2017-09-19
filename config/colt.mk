# Product version should match Android version
PRODUCT_VERSION_MAJOR = 8
PRODUCT_VERSION_MINOR = 0

# Increase COLT Version with each major release.
COS_VERSION := 2.0

LINEAGE_VERSION := ColtOS_Oreo-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(LINEAGE_BUILD)-cv$(COS_VERSION)
LINEAGE_DISPLAY_VERSION := ColtOS_Oreo-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(LINEAGE_BUILD)-cv$(COS_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.colt.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
  ro.colt.build.version=$(COS_VERSION) \
  ro.modversion=$(LINEAGE_DISPLAY_VERSION) \
  ro.colt.display.version=$(LINEAGE_DISPLAY_VERSION)

#Colt Wallpapers
PRODUCT_PACKAGES += \
ColtPapers
