package set summary "Program that can automate interactive applications"
package set webpage "https://expect.sourceforge.io"
package set version "5.45.4"
package set src.url "https://downloads.sourceforge.net/project/expect/Expect/${PACKAGE_VERSION}/expect${PACKAGE_VERSION}.tar.gz"
package set src.sum "49a7da83b0bdd9f46d04a04deec19c7767bb9a323e40c4781f89caf760b92c34"
package set dep.cmd "make"
package set dep.pkg "tcl-core"

build() {
    configure \
        --with-tclinclude="$tcl_core_INCLUDE_DIR" \
        --with-tcl="$tcl_core_LIBRARY_DIR"
}
