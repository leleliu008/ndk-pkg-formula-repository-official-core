package set summary "Simple Realtime Server"
package set webpage "https://ossrs.net"
package set git.url "https://github.com/ossrs/srs.git"
package set version "3.0-r3"
package set src.url "https://github.com/ossrs/srs/archive/v${PACKAGE_VERSION}.tar.gz"
package set src.sum "a28a3b152dd51e58ad96caefa71c4310d29adbb0d1623581c13a5521afe04724"
package set license "MIT"
package set bsystem "make"
package set sourced "trunk"
package set binsrcd 'yes'

build() {
    export SRS_EXTRA_FLAGS="$CFLAGS $CPPFLAGS"

    case $TARGET_OS_ARCH in
        armv7a)  CONFIGURE_EXTRA_FLAGS=--arm ;;
        aarch64) CONFIGURE_EXTRA_FLAGS=--arm ;;
        i686)    CONFIGURE_EXTRA_FLAGS=--x86-64  ;;
        x86_64)  CONFIGURE_EXTRA_FLAGS=--x86-x64 ;;
    esac
    
    run ./configure \
        --prefix="$TARGET_INSTALL_DIR" \
        --static \
        "$CONFIGURE_EXTRA_FLAGS" \
        --cc=$CC \
        --cxx=$CXX \
        --ar=$AR \
        --ld=$LD \
        --randlib=$RANLIB &&
    makew clean &&
    makew &&
    makew install
}
