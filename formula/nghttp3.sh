pkg_set summary "HTTP/3 library written in C"
pkg_set git.url "https://github.com/ngtcp2/nghttp3.git"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_WERROR=OFF \
        -DENABLE_DEBUG=OFF \
        -DENABLE_ASAN=ON \
        -DENABLE_LIB_ONLY=OFF
}
