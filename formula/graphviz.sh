package set summary "Graph visualization software from AT&T and Bell Labs"
package set webpage "https://www.graphviz.org"
package set src.git "https://gitlab.com/graphviz/graphviz.git"
package set src.url "https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/2.50.0/graphviz-2.50.0.tar.xz"
package set src.sum "6b16bf990df114195be669773a1dae975dbbffada45e1de2849ddeb5851bb9a8"
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
