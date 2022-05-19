pkg_set summary "Small and embeddable JavaScript engine"
pkg_set webpage "https://bellard.org/quickjs"
pkg_set version "2021-03-27"
pkg_set git.url "https://github.com/bellard/quickjs.git"
pkg_set src.url "https://bellard.org/quickjs/quickjs-${PACKAGE_VERSION}.tar.xz"
pkg_set src.sha "a45bface4c3379538dea8533878d694e289330488ea7028b105f72572fe7fe1a"
pkg_set license "MIT"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|-g||' Makefile &&
    sed_in_place 's|LIBS+=-ldl -lpthread|LIBS+=-ldl|' Makefile &&
    sed_in_place 's|lib/quickjs|lib|g'         Makefile &&
    sed_in_place 's|include/quickjs|include|g' Makefile &&
    sed_in_place 's|$(HOST_CC) $(LDFLAGS)|$(HOST_CC) -B/usr/bin $(LDFLAGS)|' Makefile
    # https://newbedev.com/how-to-specify-alternate-linker-command-when-linking-with-cc
}

build() {
    gmakew clean &&
    gmakew install HOST_CC=$CC_FOR_BUILD CC=$CC AR=$AR STRIP=$STRIP LDFLAGS="'-Wl,-v'" CROSS_PREFIX=xxx prefix="$TARGET_INSTALL_DIR"
}
