package set summary "Popular GNU data compression program"
package set webpage "https://www.gnu.org/software/gzip"
package set src.url "https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.gz"
package set src.sum "5b4fb14d38314e09f2fc8a1c510e7cd540a3ea0e3eb9b0420046b82c3bf41085"
package set license "GPL-3.0-or-later"
package set bsystem "configure"

build() {
    configure --disable-year2038
}
