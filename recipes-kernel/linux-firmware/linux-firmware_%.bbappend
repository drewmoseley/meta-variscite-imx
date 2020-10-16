# Support additional firmware for bc43xx WIFI+BT modules

FILESEXTRAPATHS_prepend_variscite := "${THISDIR}/files:"

SRCREV_FORMAT_variscite = "linux-firmware"

SRCREV_brcm_variscite = "7080491e10b82661ca4a67237fdb361190775d2f"
BRANCH_brcm_variscite = "7.0.0.142"
SRC_URI_append_variscite = " \
           git://github.com/varigit/bcm_4343w_fw.git;protocol=git;branch=${BRANCH_brcm};destsuffix=brcm;name=brcm \
"
do_install_append_variscite() {
        install -d ${D}${nonarch_base_libdir}/firmware/bcm
        install -m 0755 ${WORKDIR}/brcm/brcm/* ${D}${nonarch_base_libdir}/firmware/brcm/
        install -m 0755 ${WORKDIR}/brcm/*.hcd ${D}${nonarch_base_libdir}/firmware/bcm
}

FILES_${PN}-bcm4339_append_variscite = " \
  ${nonarch_base_libdir}/firmware/bcm/bcm4339.hcd \
  ${nonarch_base_libdir}/firmware/brcm/brcmfmac4339-sdio.txt \
"

FILES_${PN}-bcm43430_append_variscite = " \
  ${nonarch_base_libdir}/firmware/bcm/bcm43430a1.hcd \
  ${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.txt \
"

