package set summary "High quality, portable, open source libm implementation"
package set webpage "https://openlibm.org"
package set git.url "https://github.com/JuliaMath/openlibm.git"
package set src.url "https://github.com/JuliaMath/openlibm/archive/v0.8.1.tar.gz"
package set src.sum "ba8a282ecd92d0033f5656bb20dfc6ea3fb83f90ba69291ac8f7beba42dcffcf"
package set license "MIT ISC BSD-2-Clause"
package set bsystem "make"
package set binbstd "yes"

prepare() {
    sed_in_place 's|-mhard-float||g' Make.inc
}

build() {
    if [ "$TARGET_OS_ARCH" = 'x86_64' ] ; then
        LONG_DOUBLE_NOT_DOUBLE=1
    else
        LONG_DOUBLE_NOT_DOUBLE=0
    fi

    makew clean &&
    makew install \
        prefix="$TARGET_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="'$CFLAGS'" \
        CPPFLAGS="'$CPPFLAGS'" \
        LDFLAGS="'$LDFLAGS'" \
        AR="$AR" \
        OS=Linux \
        ARCH="$TARGET_OS_ARCH" \
        LONG_DOUBLE_NOT_DOUBLE="$LONG_DOUBLE_NOT_DOUBLE"
}
