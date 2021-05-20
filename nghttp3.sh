package set summary "HTTP/3 library written in C"
package set src.git "https://github.com/ngtcp2/nghttp3.git"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_WERROR=OFF \
        -DENABLE_DEBUG=OFF \
        -DENABLE_ASAN=ON \
        -DENABLE_LIB_ONLY=OFF
}
