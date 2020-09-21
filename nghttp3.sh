summary="HTTP/3 library written in C"
homepage="https://github.com/ngtcp2/nghttp3"
url="https://github.com/ngtcp2/nghttp3.git"

build() {
    cmake \
    -DENABLE_WERROR=OFF \
    -DENABLE_DEBUG=OFF \
    -DENABLE_ASAN=ON \
    -DENABLE_LIB_ONLY=OFF
}
