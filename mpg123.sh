summary  "MP3 player"
homepage "https://www.mpg123.de"
url      "https://www.mpg123.de/download/mpg123-1.26.3.tar.bz2"
sha256   "30c998785a898f2846deefc4d17d6e4683a5a550b7eacf6ea506e30a7a736c6e"
requirements "pkg-config"
dependencies "sdl2"

build() {
    configure \
        --enable-debug=no \
        --enable-ipv6=yes \
        --with-module-suffix=.so \
        --with-cpu="$(cpu)"
}

cpu() {
    case $BUILD_FOR_ABI in
        armeabi-v7a) echo neon   ;;
        arm64-v8a)   echo neon64 ;;
        x86)         echo x86    ;;
        x86_64)      echo x86-64 ;;
        *)           echo "$BUILD_FOR_ABI"
    esac
}
