pkg_set summary "Library making programming with POSIX capabilities easier than traditional libcap"
pkg_set webpage "https://people.redhat.com/sgrubb/libcap-ng"
pkg_set git.url "https://github.com/stevegrubb/libcap-ng.git"
pkg_set src.url "https://github.com/stevegrubb/libcap-ng/archive/v0.8.3.tar.gz"
pkg_set src.sha "e542e9139961f0915ab5878427890cdc7762949fbe216bd0cb4ceedb309bb854"
pkg_set license "LGPL-2.1-or-later;LICENSE;https://raw.githubusercontent.com/stevegrubb/libcap-ng/master/LICENSE"
pkg_set dep.cmd "glibtoolize:libtoolize"
pkg_set bsystem "autogen"

# stdio_ext.h: int __fsetlocking(FILE* __fp, int __type) __INTRODUCED_IN(23);
pkg_set sdk.api 23

build() {
    configure \
        --with-warn \
        --without-debug \
        --without-python \
        --without-python3
}
