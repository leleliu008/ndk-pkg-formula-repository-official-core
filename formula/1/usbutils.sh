pkg_set summary "utilities used to display information about USB buses in the system and the devices connected to them"
pkg_set webpage "http://www.linux-usb.org"
pkg_set git.url "https://github.com/gregkh/usbutils.git"
pkg_set src.url "https://mirrors.edge.kernel.org/pub/linux/utils/usb/usbutils/usbutils-012.tar.xz"
pkg_set src.sha "88634625f91840bc1993d2731cc081ee8d3b13d56069a95bdd6ac6ef0e063e46"
pkg_set dep.cmd "autoreconf"
pkg_set dep.pkg "libusb"

prepare() {
    (cd usbhid-dump && autoreconf -ivf) &&
    autoreconf -ivf
}

build() {
    export CPPFLAGS="$CPPFLAGS -Drindex=strrchr"
    export UDEV_CFLAGS=' '
    export UDEV_LIBS=' '
    configure 
}
