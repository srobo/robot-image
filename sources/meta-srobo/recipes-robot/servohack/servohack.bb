SUMMARY = "Servo Hack"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=2e7439106ad0c88223e853736a7b7aec"

inherit systemd

RDEPENDS:${PN} = "python3-astoria python3-pydantic uhubctl"

SRC_URI = " \
    file://LICENSE \
    file://servohack.service \
    file://servohack.py \
    "

S = "${WORKDIR}"

SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE:${PN} = "servohack.service"

DIRFILES = "1"

do_install () {
    install -d ${D}${systemd_system_unitdir}
    install -d ${D}/usr/bin/
    install -m 0644 ${WORKDIR}/servohack.service ${D}${systemd_system_unitdir}
    install -m 0755 ${WORKDIR}/servohack.py ${D}/usr/bin/servohack
}
