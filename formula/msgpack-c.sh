pkg_set summary "Library for a binary-based efficient data interchange format"
pkg_set webpage "https://msgpack.org/"
pkg_set git.url "https://github.com/msgpack/msgpack-c.git"
pkg_set src.url "https://github.com/msgpack/msgpack-c/releases/download/c-4.0.0/msgpack-c-4.0.0.tar.gz"
pkg_set src.sha "420fe35e7572f2a168d17e660ef981a589c9cbe77faa25eb34a520e1fcc032c8"
pkg_set license "BSL-1.0"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DMSGPACK_BUILD_TESTS=OFF \
        -DMSGPACK_BUILD_EXAMPLES=OFF
}
