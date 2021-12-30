package set summary "Library for a binary-based efficient data interchange format"
package set webpage "https://msgpack.org/"
package set src.git "https://github.com/msgpack/msgpack-c.git"
package set src.url "https://github.com/msgpack/msgpack-c/releases/download/c-4.0.0/msgpack-c-4.0.0.tar.gz"
package set src.sum "420fe35e7572f2a168d17e660ef981a589c9cbe77faa25eb34a520e1fcc032c8"
package set license "BSL-1.0"
package set bsystem "cmake"

build() {
    cmakew \
        -DMSGPACK_BUILD_TESTS=OFF \
        -DMSGPACK_BUILD_EXAMPLES=OFF
}
