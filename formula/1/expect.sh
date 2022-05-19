pkg_set summary "Program that can automate interactive applications"
pkg_set webpage "https://expect.sourceforge.io"
pkg_set version "5.45.4"
pkg_set src.url "https://downloads.sourceforge.net/project/expect/Expect/${PACKAGE_VERSION}/expect${PACKAGE_VERSION}.tar.gz"
pkg_set src.sha "49a7da83b0bdd9f46d04a04deec19c7767bb9a323e40c4781f89caf760b92c34"
pkg_set dep.pkg "tcl-core"
pkg_set bsystem "configure"

build() {
    configure \
        --with-tclinclude="$tcl_core_INCLUDE_DIR" \
        --with-tcl="$tcl_core_LIBRARY_DIR"
}
