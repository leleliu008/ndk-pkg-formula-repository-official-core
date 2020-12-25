summary "utilities used to display information about USB buses in the system and the devices connected to them"
webpage "http://www.linux-usb.org"
src_git "https://github.com/gregkh/usbutils"
src_url "https://mirrors.edge.kernel.org/pub/linux/utils/usb/usbutils/usbutils-012.tar.xz"
src_sum "88634625f91840bc1993d2731cc081ee8d3b13d56069a95bdd6ac6ef0e063e46"
require "autoreconf"
depends "libusb"

prepare() {
    (cd usbhid-dump && autoreconf -ivf) &&
    autoreconf -ivf
}

build() {
    configure
}
