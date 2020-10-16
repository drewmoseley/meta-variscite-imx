FILESEXTRAPATHS_prepend_variscite := "${THISDIR}/${PN}:"

SRC_URI_append_variscite = " \
	file://variscite-blacklist.conf \
"

do_install_append_variscite() {
	install -m 0755 -d ${D}${sysconfdir}/modprobe.d
	install -m 0644 ${WORKDIR}/variscite-blacklist.conf ${D}${sysconfdir}/modprobe.d
}
