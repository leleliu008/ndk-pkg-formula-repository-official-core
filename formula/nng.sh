pkg_set summary "Nanomsg-next-generation -- light-weight brokerless messaging"
pkg_set webpage "https://nng.nanomsg.org"
pkg_set git.url "https://github.com/nanomsg/nng.git"
pkg_set src.url "https://github.com/nanomsg/nng/archive/v1.5.2.tar.gz"
pkg_set src.sha "f8b25ab86738864b1f2e3128e8badab581510fa8085ff5ca9bb980d317334c46"
pkg_set license "MIT"
pkg_set dep.pkg "mbedtls"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DNNG_TESTS=OFF \
        -DNNG_ENABLE_TLS=ON \
        -DNNG_ENABLE_HTTP=ON
}
