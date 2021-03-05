summary "Integer Set Library for the polyhedral model"
webpage "https://isl.gforge.inria.fr"
src_url "http://isl.gforge.inria.fr/isl-0.22.1.tar.xz"
src_sum "28658ce0f0bdb95b51fd2eb15df24211c53284f6ca2ac5e897acc3169e55b60f"
bsystem "configure"
depends "gmp"
ldflags "-lgmp"

build() {
    configure \
        --with-int=gmp \
        --with-gmp=system \
        --with-gmp-prefix="$gmp_INSTALL_DIR"
}
