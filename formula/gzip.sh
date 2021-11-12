package set summary "Popular GNU data compression program"
package set webpage "https://www.gnu.org/software/gzip"
package set src.url "https://ftp.gnu.org/gnu/gzip/gzip-1.11.tar.gz"
package set src.sum "3e8a0e0c45bad3009341dce17d71536c4c655d9313039021ce7554a26cd50ed9"
package set bsystem "configure"

build() {
    configure --disable-year2038
}
