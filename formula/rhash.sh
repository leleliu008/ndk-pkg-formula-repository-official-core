pkg_set summary "Utility for computing and verifying hash sums of files"
pkg_set webpage "http://rhash.sourceforge.net"
pkg_set git.url "https://github.com/rhash/RHash.git"
pkg_set src.url "https://github.com/rhash/RHash/archive/v1.4.0.tar.gz"
pkg_set src.sha "2ea39540f5c580da0e655f7b483c19e0d31506aed4202d88e8459fa7aeeb8861"
pkg_set license "0BSD"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"
pkg_set ccflags '-std=c11'

prepare() {
    # stdlib.h: void* aligned_alloc(size_t __alignment, size_t __size) __INTRODUCED_IN(28)
    sed_in_place '/__APPLE__/c #elif (__ANDROID_API__ >= 28)' librhash/util.h
    sed_in_place '/SHARED_EXT=/c SHARED_EXT=".so"' configure
    sed_in_place 's/LD_STATIC=-static/LD_STATIC=/' configure
}

build() {
    run ./configure \
        --cc="$CC" \
        --ar="$AR" \
        --extra-cflags="'$CFLAGS $CPPFLAGS'" \
        --extra-ldflags="'$LDFLAGS'" \
        --target="$TARGET_TRIPLE" \
        --prefix="$TARGET_INSTALL_DIR" \
        --enable-static \
        --enable-lib-static \
        --enable-lib-shared &&
    gmakew clean &&
    gmakew &&
    gmakew install
}
