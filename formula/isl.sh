pkg_set summary "Integer Set Library for the polyhedral model"
pkg_set webpage "https://isl.gforge.inria.fr"
pkg_set git.url "https://github.com/Meinersbur/isl.git"
pkg_set src.url "https://downloads.sourceforge.net/project/libisl/isl-0.24.tar.bz2"
pkg_set src.sha "fcf78dd9656c10eb8cf9fbd5f59a0b6b01386205fe1934b3b287a0a1898145c0"
pkg_set license "MIT"
pkg_set dep.pkg "gmp"
pkg_set bsystem "configure"
pkg_set ldflags "-lgmp"

build() {
    configure \
        --with-int=gmp \
        --with-gmp=system \
        --with-gmp-prefix="$gmp_INSTALL_DIR"
}
