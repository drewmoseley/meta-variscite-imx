FILESEXTRAPATHS_prepend_variscite := "${THISDIR}/${PN}:"

SRC_URI_append_variscite = " \
	file://remove_default_sleep_d.diff \
        file://01-bt.sh \
        file://02-wifi.sh \
"

SRC_URI_append_imx6ul-var-dart = " \
	file://03-eth.sh \
"

SRC_URI_append_imx8mm-var-dart = " \
	file://03-eth.sh \
"

SRC_URI_append_imx8mn-var-som = " \
        file://03-eth.sh \
"

FILES_${PN}_append_variscite = " /etc/pm/sleep.d/* "

do_install_append_variscite() {
	install -d ${D}/${sysconfdir}/pm/sleep.d
	install -m 0755 ${WORKDIR}/01-bt.sh ${D}/${sysconfdir}/pm/sleep.d
	install -m 0755 ${WORKDIR}/02-wifi.sh ${D}/${sysconfdir}/pm/sleep.d
}

do_install_append_imx6ul-var-dart() {
        install -d ${D}/${sysconfdir}/pm/sleep.d
        install -m 0755 ${WORKDIR}/03-eth.sh ${D}/${sysconfdir}/pm/sleep.d
}

do_install_append_imx8mm-var-dart() {
        install -d ${D}/${sysconfdir}/pm/sleep.d
        install -m 0755 ${WORKDIR}/03-eth.sh ${D}/${sysconfdir}/pm/sleep.d
}

do_install_append_imx8mn-var-som() {
        install -d ${D}/${sysconfdir}/pm/sleep.d
        install -m 0755 ${WORKDIR}/03-eth.sh ${D}/${sysconfdir}/pm/sleep.d
}
