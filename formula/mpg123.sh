pkg_set summary "MP3 player"
pkg_set webpage "https://www.mpg123.de"
pkg_set git.url "https://github.com/madebr/mpg123.git"
pkg_set src.url "https://www.mpg123.de/download/mpg123-1.30.0.tar.bz2"
pkg_set src.sha "397ead52f0299475f2cefd38c3835977193fd9b1db6593680346c4e9109ed61c"
pkg_set license "LGPL-2.1-only"
pkg_set dep.pkg "sdl2"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build() {
    unset CPU

    case $TARGET_OS_ARCH in
        armv7a)  CPU=neon   ;;
        aarch64) CPU=neon64 ;;
        i686)    CPU=x86    ;;
        x86_64)  CPU=x86-64 ;;
    esac

    configure \
        --enable-debug=no \
        --enable-ipv6=yes \
        --with-module-suffix=.so \
        --with-cpu="$CPU"
}
