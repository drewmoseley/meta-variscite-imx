CONNMAN_PACKAGES_variscite = "\
    connman-tools \
    connman-tests \
    connman-client \
    "

RDEPENDS_${PN}_remove_variscite = "\
    ${@bb.utils.contains('DISTRO', 'b2qt', '', \
       bb.utils.contains('DISTRO_FEATURES', 'wayland', '${CONNMAN_PACKAGES}', \
                                                   '', d), d)} \
    "
