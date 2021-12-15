package set summary "Portable ASCII art graphics library"
package set webpage "https://aa-project.sourceforge.io/aalib/"
package set src.url "https://downloads.sourceforge.net/project/aa-project/aa-lib/1.4rc5/aalib-1.4rc5.tar.gz"
package set src.sum "fbddda9230cf6ee2a4f5706b4b11e2190ae45f5eda1f0409dc4f99b35e0a70ee"
package set license "GPL-2.0-or-later"
package set dep.pkg "ncurses"
package set dep.cmd "libtoolize"
package set bsystem "autotools"

prepare() {
    run autoreconf -ivf &&
    sed_in_place '203c return 0;'         src/aalinuxkbd.c &&
    sed_in_place '1i #include <stdlib.h>' src/aalinuxkbd.c &&
    sed_in_place 's|exit(1)|return 1|'    src/aasavefont.c
}

build() {
    configure --without-x --with-ncurses="$ncurses_INSTALL_DIR"
}
