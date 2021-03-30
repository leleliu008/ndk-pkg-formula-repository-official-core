summary "Utility for computing and verifying hash sums of files"
webpage "http://rhash.sourceforge.net"
src_url "https://github.com/rhash/RHash/archive/v1.4.0.tar.gz"
src_sum "2ea39540f5c580da0e655f7b483c19e0d31506aed4202d88e8459fa7aeeb8861"
license "0BSD"
bsystem "make"

build_in_sourced

build() {
    run ./configure \
        --cc="$CC" \
        --ar="$AR" \
        --extra-cflags="\"$CFLAGS $CPPFLAGS\"" \
        --extra-ldflags="\"$LDFLAGS\"" \
        --target="$TARGET_TRIPLE" \
        --prefix="$ABI_INSTALL_DIR" \
        --enable-static \
        --enable-lib-static \
        --enable-lib-shared &&
    make clean &&
    make &&
    make install
}
