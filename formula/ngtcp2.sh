package set summary "QUIC library written in C"
package set git.url "https://github.com/ngtcp2/ngtcp2.git"
package set license "MIT"
package set dep.pkg "libev nghttp3"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_ASAN=ON \
        -DENABLE_DEBUG=OFF \
        -DENABLE_WERROR=OFF \
        -DENABLE_GNUTLS=OFF \
        -DENABLE_OPENSSL=OFF \
        -DENABLE_LIB_ONLY=OFF
}
