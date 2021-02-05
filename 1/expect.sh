summary "Program that can automate interactive applications"
webpage "https://expect.sourceforge.io"
version "5.45.4"
src_url "https://downloads.sourceforge.net/project/expect/Expect/$(version)/expect$(version).tar.gz"
src_sum "49a7da83b0bdd9f46d04a04deec19c7767bb9a323e40c4781f89caf760b92c34"
require "make"
depends "tcl-core"

build() {
    configure \
        --with-tclinclude="$tcl_core_INCLUDE_DIR" \
        --with-tcl="$tcl_core_LIBRARY_DIR"
}
