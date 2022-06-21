pkg_set summary "Utility for computing and verifying hash sums of files"
pkg_set webpage "http://rhash.sourceforge.net"
pkg_set git.url "https://github.com/rhash/RHash.git"
pkg_set src.url "https://github.com/rhash/RHash/archive/v1.4.3.tar.gz"
pkg_set src.sha "1e40fa66966306920f043866cbe8612f4b939b033ba5e2708c3f41be257c8a3e"
pkg_set license "0BSD"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

prepare() {
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
