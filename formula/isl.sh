package set summary "Integer Set Library for the polyhedral model"
package set webpage "https://isl.gforge.inria.fr"
package set git.url "https://github.com/Meinersbur/isl.git"
package set src.url "https://downloads.sourceforge.net/project/libisl/isl-0.24.tar.bz2"
package set src.sum "fcf78dd9656c10eb8cf9fbd5f59a0b6b01386205fe1934b3b287a0a1898145c0"
package set bsystem "configure"
package set dep.pkg "gmp"
package set ldflags "-lgmp"

build() {
    configure \
        --with-int=gmp \
        --with-gmp=system \
        --with-gmp-prefix="$gmp_INSTALL_DIR"
}
