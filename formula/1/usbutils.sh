package set summary "utilities used to display information about USB buses in the system and the devices connected to them"
package set webpage "http://www.linux-usb.org"
package set git.url "https://github.com/gregkh/usbutils.git"
package set src.url "https://mirrors.edge.kernel.org/pub/linux/utils/usb/usbutils/usbutils-012.tar.xz"
package set src.sum "88634625f91840bc1993d2731cc081ee8d3b13d56069a95bdd6ac6ef0e063e46"
package set dep.cmd "autoreconf"
package set dep.pkg "libusb"

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
