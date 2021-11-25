package set summary "Small and embeddable JavaScript engine"
package set webpage "https://bellard.org/quickjs"
package set version "2021-03-27"
package set src.git "https://github.com/bellard/quickjs.git"
package set src.url "https://bellard.org/quickjs/quickjs-${PACKAGE_VERSION}.tar.xz"
package set src.sum "a45bface4c3379538dea8533878d694e289330488ea7028b105f72572fe7fe1a"
package set license "MIT"
package set bsystem "make"
package set binsrcd 'yes'

prepare() {
    sed_in_place 's|-g||' Makefile &&
    sed_in_place 's|LIBS+=-ldl -lpthread|LIBS+=-ldl|' Makefile &&
    sed_in_place 's|lib/quickjs|lib|g'         Makefile &&
    sed_in_place 's|include/quickjs|include|g' Makefile &&
    sed_in_place 's|$(HOST_CC) $(LDFLAGS)|$(HOST_CC) -B/usr/bin $(LDFLAGS)|' Makefile
    # https://newbedev.com/how-to-specify-alternate-linker-command-when-linking-with-cc
}

build() {
    makew clean &&
    makew install HOST_CC=$CC_FOR_BUILD CC=$CC AR=$AR STRIP=$STRIP LDFLAGS="'-Wl,-v'" CROSS_PREFIX=xxx prefix="$ABI_INSTALL_DIR"
}
