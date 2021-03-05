summary "QUIC library written in C"
webpage "https://github.com/ngtcp2/ngtcp2"
src_url "https://github.com/ngtcp2/ngtcp2.git"
bsystem "cmake"
depends "libev nghttp3"

build() {
    cmake \
        -DENABLE_ASAN=ON \
        -DENABLE_DEBUG=OFF \
        -DENABLE_WERROR=OFF \
        -DENABLE_GNUTLS=OFF \
        -DENABLE_OPENSSL=OFF \
        -DENABLE_LIB_ONLY=OFF \
        -DLIBEV_INCLUDE_DIR="$libev_INCLUDE_DIR" \
        -DLIBEV_LIBRARY="$libev_LIBRARY_DIR/libev.so"
}
