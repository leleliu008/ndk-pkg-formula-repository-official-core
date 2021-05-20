package set summary "Integer Set Library for the polyhedral model"
package set webpage "https://isl.gforge.inria.fr"
package set src.url "http://isl.gforge.inria.fr/isl-0.22.1.tar.xz"
package set src.sum "28658ce0f0bdb95b51fd2eb15df24211c53284f6ca2ac5e897acc3169e55b60f"
package set bsystem "configure"
package set dep.pkg "gmp"
package set ldflags "-lgmp"

build() {
    configure \
        --with-int=gmp \
        --with-gmp=system \
        --with-gmp-prefix="$gmp_INSTALL_DIR"
}
