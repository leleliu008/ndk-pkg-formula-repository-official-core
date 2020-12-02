summary  "QUIC library written in C"
homepage "https://github.com/ngtcp2/ngtcp2"
url      "https://github.com/ngtcp2/ngtcp2.git"
dependencies "libev nghttp3"

build() {
    cmake \
        -DENABLE_WERROR=OFF \
        -DENABLE_DEBUG=OFF \
        -DENABLE_ASAN=ON \
        -DENABLE_LIB_ONLY=OFF \
        -DLIBEV_INCLUDE_DIR="$libev_INCLUDE_DIR" \
        -DLIBEV_LIBRARY="$libev_LIBRARY_DIR/libev.so"
}
