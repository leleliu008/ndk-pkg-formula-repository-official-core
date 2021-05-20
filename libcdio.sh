package set summary "Compact Disc Input and Control Library"
package set webpage "https://www.gnu.org/software/libcdio"
package set src.url "https://ftp.gnu.org/gnu/libcdio/libcdio-2.1.0.tar.bz2"
package set src.sum "8550e9589dbd594bfac93b81ecf129b1dc9d0d51e90f9696f1b2f9b2af32712b"
package set license "GPL-3.0"
package set bsystem "configure"
package set dep.pkg "libiconv"

build() {
    configure ac_cv_header_glob_h=no
}
