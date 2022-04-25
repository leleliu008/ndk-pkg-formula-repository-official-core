pkg_set summary "MP3 player"
pkg_set webpage "https://www.mpg123.de"
pkg_set git.url "https://github.com/madebr/mpg123.git"
pkg_set src.url "https://www.mpg123.de/download/mpg123-1.29.3.tar.bz2"
pkg_set src.sha "963885d8cc77262f28b77187c7d189e32195e64244de2530b798ddf32183e847"
pkg_set license "LGPL-2.1-only"
pkg_set dep.pkg "sdl2"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-debug=no \
        --enable-ipv6=yes \
        --with-module-suffix=.so \
        --with-cpu="$(cpu)"
}

cpu() {
    case $TARGET_OS_ARCH in
        armv7a)  echo neon   ;;
        aarch64) echo neon64 ;;
        i686)    echo x86    ;;
        x86_64)  echo x86-64 ;;
        *)       echo "$TARGET_OS_ARCH"
    esac
}
