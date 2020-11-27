summary  "Integer Set Library for the polyhedral model"
homepage "https://isl.gforge.inria.fr"
url      "http://isl.gforge.inria.fr/isl-0.22.1.tar.xz"
sha256   "28658ce0f0bdb95b51fd2eb15df24211c53284f6ca2ac5e897acc3169e55b60f"
dependencies "gmp"

build() {
    export LDFLAGS="$LDFLAGS -lgmp"
    configure \
        --with-int=gmp \
        --with-gmp=system \
        --with-gmp-prefix="$gmp_INSTALL_DIR"
}
