pkg_set summary "C library for encoding, decoding, and manipulating JSON"
pkg_set webpage "https://digip.org/jansson"
pkg_set git.url "https://github.com/akheron/jansson.git"
pkg_set src.url "https://github.com/akheron/jansson/releases/download/v2.14/jansson-2.14.tar.gz"
pkg_set src.sha "5798d010e41cf8d76b66236cfb2f2543c8d082181d16bc3085ab49538d4b9929"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DJANSSON_BUILD_SHARED_LIBS=OFF \
        -DJANSSON_BUILD_DOCS=OFF \
        -DJANSSON_COVERAGE=OFF \
        -DJANSSON_EXAMPLES=OFF \
        -DJANSSON_WITHOUT_TESTS=ON
}
