pkg_set summary "C library to read whole-slide images (a.k.a. virtual slides)"
pkg_set webpage "https://openslide.org/"
pkg_set git.url "https://github.com/openslide/openslide.git"
pkg_set src.url "https://github.com/openslide/openslide/releases/download/v3.4.1/openslide-3.4.1.tar.xz"
pkg_set src.sha "9938034dba7f48fadc90a2cdf8cfe94c5613b04098d1348a5ff19da95b990564"
pkg_set license "LGPL-2.1-only"
pkg_set dep.pkg "cairo openjpeg sqlite gdk-pixbuf"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

prepare() {
    rm -rf include.h &&
    touch  include.h
}
