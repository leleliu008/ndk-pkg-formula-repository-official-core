summary  "utilities used to display information about USB buses in the system and the devices connected to them"
homepage "http://www.linux-usb.org"
repo     "https://github.com/gregkh/usbutils"
url      "https://mirrors.edge.kernel.org/pub/linux/utils/usb/usbutils/usbutils-012.tar.xz"
#sha256   "9e23494fcc78b7a80ee29a07dd179c95ae2f71509c35728dbbabc2d1cca41338"
sha256   "88634625f91840bc1993d2731cc081ee8d3b13d56069a95bdd6ac6ef0e063e46"
requirements "autoreconf"
dependencies "libusb"

prepare() {
    (cd usbhid-dump && autoreconf -ivf) &&
    autoreconf -ivf
}

build() {
    configure
}
