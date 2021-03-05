summary "Compact Disc Input and Control Library"
webpage "https://www.gnu.org/software/libcdio"
src_url "https://ftp.gnu.org/gnu/libcdio/libcdio-2.1.0.tar.bz2"
src_sum "8550e9589dbd594bfac93b81ecf129b1dc9d0d51e90f9696f1b2f9b2af32712b"
license "GPL-3.0"
bsystem "configure"
depends "libiconv"

build() {
    configure ac_cv_header_glob_h=no
}
