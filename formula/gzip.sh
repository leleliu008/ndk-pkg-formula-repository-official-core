pkg_set summary "Popular GNU data compression program"
pkg_set webpage "https://www.gnu.org/software/gzip"
pkg_set src.url "https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.gz"
pkg_set src.sha "5b4fb14d38314e09f2fc8a1c510e7cd540a3ea0e3eb9b0420046b82c3bf41085"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"

build() {
    configure --disable-year2038
}
