summary "High quality MPEG Audio Layer III (MP3) encoder"
webpage "https://lame.sourceforge.io"
src_url "https://downloads.sourceforge.net/sourceforge/lame/lame-3.100.tar.gz"
src_sum "ddfe36cab873794038ae2c1210557ad34857a4b6bdc515785d1da9e175b1da1e"
bsystem "configure"

build() {
    configure \
        --without-dmalloc \
        --disable-frontend \
        --enable-nasm
}
