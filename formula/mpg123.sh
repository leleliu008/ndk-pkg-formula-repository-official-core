package set summary "MP3 player"
package set webpage "https://www.mpg123.de"
package set src.url "https://www.mpg123.de/download/mpg123-1.29.2.tar.bz2"
package set src.sum "9071214ebdfc1b6ed0c0a85d530010bbb8ebc044cfe5ae5930e83f7e6b7937e6"
package set dep.pkg "sdl2"
package set dep.cmd "pkg-config"
package set bsystem "configure"

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
