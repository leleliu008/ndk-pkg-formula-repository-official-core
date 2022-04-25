pkg_set summary "QUIC library written in C"
pkg_set git.url "https://github.com/ngtcp2/ngtcp2.git"
pkg_set license "MIT"
pkg_set dep.pkg "libev nghttp3"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_ASAN=ON \
        -DENABLE_DEBUG=OFF \
        -DENABLE_WERROR=OFF \
        -DENABLE_GNUTLS=OFF \
        -DENABLE_OPENSSL=OFF \
        -DENABLE_LIB_ONLY=OFF
}
