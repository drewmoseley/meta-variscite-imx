DESCRIPTION = "A fsl-image-multimedia image with docker-ce support"
LICENSE = "MIT"

require recipes-fsl/images/fsl-image-multimedia.bb

inherit distro_features_check

REQUIRED_DISTRO_FEATURES += "virtualization"

IMAGE_INSTALL += " \
    docker-ce \
    python3-docker-compose \
"
