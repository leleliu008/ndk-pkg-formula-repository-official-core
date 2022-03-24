package set summary "Convert pixel information into colored ASCII art"
package set webpage "http://caca.zoy.org/wiki/libcaca"
package set git.url "https://github.com/cacalabs/libcaca.git"
package set src.url "https://fossies.org/linux/privat/libcaca-0.99.beta20.tar.bz2"
package set src.sum "ff9aa641af180a59acedc7fc9e663543fb397ff758b5122093158fd628125ac1"
package set license "WTFPL"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "imlib2"
package set cdefine "X_DISPLAY_MISSING"
package set ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lfreetype"

build() {
    if [ "$TARGET_OS_ARCH" = 'x86_64' ] ; then
        sed_in_place '/HAVE_FLDLN2/d' "$PACKAGE_BSCRIPT_DIR/configure" || return 1
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
