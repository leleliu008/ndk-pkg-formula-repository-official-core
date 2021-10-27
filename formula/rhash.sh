package set summary "Utility for computing and verifying hash sums of files"
package set webpage "http://rhash.sourceforge.net"
package set src.url "https://github.com/rhash/RHash/archive/v1.4.0.tar.gz"
package set src.sum "2ea39540f5c580da0e655f7b483c19e0d31506aed4202d88e8459fa7aeeb8861"
package set license "0BSD"
package set bsystem "make"
package set binsrcd 'yes'

build() {
    run ./configure \
        --cc="$CC" \
        --ar="$AR" \
        --extra-cflags="\"$CFLAGS $CPPFLAGS\"" \
        --extra-ldflags="\"$LDFLAGS\"" \
        --target="$TARGET_TRIPLE" \
        --prefix="$ABI_INSTALL_DIR" \
        --enable-lib-static \
        --enable-lib-shared &&
    makew clean &&
    makew &&
    makew install
}
