summary "HTTP/3 library written in C"
webpage "https://github.com/ngtcp2/nghttp3"
src_url "https://github.com/ngtcp2/nghttp3.git"
require "cmake"

build() {
    cmake \
        -DENABLE_WERROR=OFF \
        -DENABLE_DEBUG=OFF \
        -DENABLE_ASAN=ON \
        -DENABLE_LIB_ONLY=OFF
}
