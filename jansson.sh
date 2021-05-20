package set summary "C library for encoding, decoding, and manipulating JSON"
package set webpage "https://digip.org/jansson"
package set src.url "https://digip.org/jansson/releases/jansson-2.13.1.tar.gz"
package set src.sum "f4f377da17b10201a60c1108613e78ee15df6b12016b116b6de42209f47a474f"
package set bsystem "cmake"

build() {
    cmakew \
        -DJANSSON_BUILD_SHARED_LIBS=OFF \
        -DJANSSON_BUILD_DOCS=OFF \
        -DJANSSON_COVERAGE=OFF \
        -DJANSSON_EXAMPLES=OFF \
        -DJANSSON_WITHOUT_TESTS=ON
}
