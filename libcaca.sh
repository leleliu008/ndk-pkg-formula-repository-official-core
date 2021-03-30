summary "Convert pixel information into colored ASCII art"
webpage "http://caca.zoy.org/wiki/libcaca"
src_git "https://github.com/cacalabs/libcaca.git"
src_url "https://fossies.org/linux/privat/libcaca-0.99.beta19.tar.gz"
src_sum "128b467c4ed03264c187405172a4e83049342cc8cc2f655f53a2d0ee9d3772f4"
license "WTFPL"
bsystem "configure"
require "pkg-config"
depends "imlib2"
cdefine "X_DISPLAY_MISSING"
ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lfreetype"

build() {
    if [ "$TARGET_OS_ARCH" = 'x86_64' ] ; then
        sed_in_place '/HAVE_FLDLN2/d' "$SOURCE_DIR/configure" || return 1
    fi

    configure \
        --disable-csharp \
        --disable-python \
        --disable-slang \
        --disable-java \
        --disable-ruby \
        --disable-x11 \
        --disable-doc
}
