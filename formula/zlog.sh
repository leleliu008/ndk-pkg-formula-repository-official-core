pkg_set summary "High-performance C logging library"
pkg_set git.url "https://github.com/HardySimpson/zlog.git"
pkg_set src.url "https://github.com/HardySimpson/zlog/archive/1.2.15.tar.gz"
pkg_set src.sha "00037ab8d52772a95d645f1dcfd2c292b7cea326b54e63e219a5b7fdcb7e6508"
pkg_set license "LGPL-2.1-or-later|COPYING|https://raw.githubusercontent.com/HardySimpson/zlog/master/COPYING"
pkg_set dep.pkg "libglob"
pkg_set bsystem "gmake"
pkg_set bscript "src"
pkg_set binbstd "yes"

prepare() {
    sed_in_place '/cp -f/d' makefile
}

build() {
    gmakew clean &&
    gmakew all \
        CC="$CC" \
        REAL_CFLAGS="'$CPPFLAGS $CFLAGS'" \
        REAL_LDFLAGS="'$LDFLAGS'" \
        DYLIB_MINOR_NAME=libzlog.so \
        DYLIB_MAJOR_NAME=libzlog.so \
        STLIB_MAKE_CMD="'$AR rcs libzlog.a'" &&
    install_libs libzlog.a libzlog.so &&
    install_incs zlog.h &&
    install_bins zlog-chk-conf
}
