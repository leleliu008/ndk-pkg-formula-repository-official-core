package set summary "High quality, portable, open source libm implementation"
package set webpage "https://openlibm.org"
package set git.url "https://github.com/JuliaMath/openlibm.git"
package set src.url "https://github.com/JuliaMath/openlibm/archive/v0.8.0.tar.gz"
package set src.sum "03620768df4ca526a63dd675c6de95a5c9d167ff59555ce57a61c6bf49e400ee"
package set bsystem "make"

prepare() {
    sed_in_place 's|-mhard-float||g' Make.inc
}

build() {
    if [ "$TARGET_OS_ARCH" = 'x86_64' ] ; then
        LONG_DOUBLE_NOT_DOUBLE=1
    else
        LONG_DOUBLE_NOT_DOUBLE=0
    fi
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" install \
        prefix="$ABI_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="'$CFLAGS'" \
        CPPFLAGS="'$CPPFLAGS'" \
        LDFLAGS="'$LDFLAGS'" \
        AR="$AR" \
        OS=Linux \
        ARCH="$TARGET_OS_ARCH" \
        LONG_DOUBLE_NOT_DOUBLE="$LONG_DOUBLE_NOT_DOUBLE"
}
