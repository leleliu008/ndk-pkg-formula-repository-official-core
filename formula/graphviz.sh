pkg_set summary "Graph visualization software from AT&T and Bell Labs"
pkg_set webpage "https://www.graphviz.org"
pkg_set git.url "https://gitlab.com/graphviz/graphviz.git"
pkg_set src.url "https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/3.0.0/graphviz-3.0.0.tar.xz"
pkg_set src.sha "ddda3cd0e9bc60c9fb56b4bf4a02eb60ecbfb4405c6758553f7d2668633b4262"
pkg_set license "EPL-1.0"
pkg_set dep.cmd "pkg-config glibtoolize:libtoolize python3 flex bison>=3.0 git awk"
pkg_set dep.pkg "fontconfig libpng expat libglob"
pkg_set bsystem "autotools"

prepare() {
    sed_in_place 's|install-exec-hook|xxxxxxxxxxxx|' cmd/dot/Makefile.am &&
    autoreconf -ivf
}

build() {
    export HOSTCC="$CC_FOR_BUILD"
    configure --enable-swig=no
}
