pkg_set summary "File comparison utilities"
pkg_set webpage "https://www.gnu.org/software/diffutils"
pkg_set src.url "https://ftp.gnu.org/gnu/diffutils/diffutils-3.8.tar.xz"
pkg_set src.sha "a6bdd7d1b31266d11c4f4de6c1b748d4607ab0231af5188fc2533d0ae2438fec"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"

build() {
    configure \
        --with-included-regex \
        --disable-gcc-warnings
}
