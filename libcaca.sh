summary "Convert pixel information into colored ASCII art"
webpage "http://caca.zoy.org/wiki/libcaca"
src_git "https://github.com/cacalabs/libcaca.git"
src_url "http://caca.zoy.org/files/libcaca/libcaca-0.99.beta19.tar.gz"
src_sum "128b467c4ed03264c187405172a4e83049342cc8cc2f655f53a2d0ee9d3772f4"
license "WTFPL"
require "pkg-config"
depends "imlib2"

build() {
    if [ "$BUILD_FOR_ARCH" = 'x86_64' ] ; then
        sed_in_place '/HAVE_FLDLN2/d' "$SOURCE_DIR/configure" || return 1
    fi

    export CPPFLAGS="$CPPFLAGS -DX_DISPLAY_MISSING"
    export LDFLAGS="$LDFLAGS -lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lfreetype"

    configure \
        --disable-csharp \
        --disable-python \
        --disable-slang \
        --disable-java \
        --disable-ruby \
        --disable-x11 \
        --disable-doc
}
