package set summary "Graph visualization software from AT&T and Bell Labs"
package set webpage "https://www.graphviz.org"
package set src.git "https://gitlab.com/graphviz/graphviz.git"
package set src.url "https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/2.49.3/graphviz-2.49.3.tar.xz"
package set src.sum "512b02bfad8e0148f50c1cd0d3a92a46e8ba61b32e4911ec10f008afc0e1cf7e"
package set license "EPL-1.0"
package set dep.cmd "pkg-config glibtoolize:libtoolize python3 flex bison>=3.0 git awk"
package set dep.pkg "fontconfig libpng expat libglob"
package set ldflags "-lglob"
package set bsystem "autotools"

prepare() {
    sed_in_place 's|install-exec-hook|xxxxxxxxxxxx|' cmd/dot/Makefile.am &&
    autoreconf -ivf
}

build() {
    export HOSTCC="$CC_FOR_BUILD"
    configure --enable-swig=no
}
