pkg_set summary "JSON parser for C"
pkg_set git.url "https://github.com/json-c/json-c.git"
pkg_set src.url "https://github.com/json-c/json-c/archive/json-c-0.16.tar.gz"
pkg_set src.sha "c169436bd63a30fce4f9560befccb6bad3d375c8c7e9905ceb4e1f28f2cb24f7"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_STATIC_LIBS=ON \
        -DBUILD_TESTING=OFF \
        -DDISABLE_BSYMBOLIC=OFF \
        -DDISABLE_THREAD_LOCAL_STORAGE=OFF \
        -DDISABLE_WERROR=ON \
        -DENABLE_RDRAND=ON \
        -DENABLE_THREADING=ON
}
