summary "Graph visualization software from AT&T and Bell Labs"
webpage "https://www.graphviz.org"
src_url "https://www2.graphviz.org/Packages/stable/portable_source/graphviz-2.44.1.tar.gz"
src_sum "8e1b34763254935243ccdb83c6ce108f531876d7a5dfd443f255e6418b8ea313"
license "EPL-1.0"
require "pkg-config groff ps2pdf"
depends "fontconfig libpng expat libglob"
ldflags "-lglob"

prepare() {
    sed_in_place 's|install-exec-hook|xxxxxxxxxxxx|' cmd/dot/Makefile.am &&
    autoreconf -ivf
}

build() {
    MAKEFLAGS="$MAKEFLAGS HOSTCC=$CC_FOR_BUILD"
    configure --enable-swig=no
}
