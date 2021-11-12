package set summary "File comparison utilities"
package set webpage "https://www.gnu.org/software/diffutils"
package set src.url "https://ftp.gnu.org/gnu/diffutils/diffutils-3.8.tar.xz"
package set src.sum "a6bdd7d1b31266d11c4f4de6c1b748d4607ab0231af5188fc2533d0ae2438fec"
package set license "GPL-3.0"
package set bsystem "configure"

build() {
    configure \
        --with-included-regex \
        --disable-gcc-warnings
}
