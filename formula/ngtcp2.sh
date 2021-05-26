package set summary "QUIC library written in C"
package set src.git "https://github.com/ngtcp2/ngtcp2.git"
package set bsystem "cmake"
package set dep.pkg "libev nghttp3"

build() {
    cmakew \
        -DENABLE_ASAN=ON \
        -DENABLE_DEBUG=OFF \
        -DENABLE_WERROR=OFF \
        -DENABLE_GNUTLS=OFF \
        -DENABLE_OPENSSL=OFF \
        -DENABLE_LIB_ONLY=OFF \
        -DLIBEV_INCLUDE_DIR="$libev_INCLUDE_DIR" \
        -DLIBEV_LIBRARY="$libev_LIBRARY_DIR/libev.so"
}
