summary "Simple Realtime Server"
webpage "https://ossrs.net"
src_git "https://github.com/ossrs/srs.git"
version "3.0-r3"
src_url "https://github.com/ossrs/srs/archive/v$(version).tar.gz"
src_sum "a28a3b152dd51e58ad96caefa71c4310d29adbb0d1623581c13a5521afe04724"
license "MIT"
bsystem "make"
sourced "trunk"
build_in_sourced

build() {
    export SRS_EXTRA_FLAGS="$CFLAGS $CPPFLAGS"

    case $BUILD_FOR_ARCH in
        armv7a)  CONFIGURE_EXTRA_FLAGS=--arm ;;
        aarch64) CONFIGURE_EXTRA_FLAGS=--arm ;;
        i686)    CONFIGURE_EXTRA_FLAGS=--x86-64  ;;
        x86_64)  CONFIGURE_EXTRA_FLAGS=--x86-x64 ;;
    esac
    
    run ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --static \
        "$CONFIGURE_EXTRA_FLAGS" \
        --cc=$CC \
        --cxx=$CXX \
        --ar=$AR \
        --ld=$LD \
        --randlib=$RANLIB &&
    make clean &&
    make &&
    make install
}
