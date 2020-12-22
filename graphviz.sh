summary  "Graph visualization software from AT&T and Bell Labs"
homepage "https://www.graphviz.org"
url      "https://www2.graphviz.org/Packages/stable/portable_source/graphviz-2.44.1.tar.gz"
sha256   "8e1b34763254935243ccdb83c6ce108f531876d7a5dfd443f255e6418b8ea313"
license  "EPL-1.0"
requirements "pkg-config"
dependencies "libpng libglob"

prepare() {
    sed_in_place 's|install-exec-hook|xxxxxxxxxxxx|' cmd/dot/Makefile.am &&
    autoreconf -ivf
}

build() {
    export LDFLAGS="$LDFLAGS -lglob"
    MAKE="$MAKE HOSTCC=$CC_FOR_BUILD"
    configure
}
