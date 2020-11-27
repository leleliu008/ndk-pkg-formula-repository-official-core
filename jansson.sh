summary  "C library for encoding, decoding, and manipulating JSON"
homepage "https://digip.org/jansson"
url      "https://digip.org/jansson/releases/jansson-2.13.1.tar.gz"
sha256   "f4f377da17b10201a60c1108613e78ee15df6b12016b116b6de42209f47a474f"

build() {
    cmake \
        -DJANSSON_BUILD_SHARED_LIBS=OFF \
        -DJANSSON_BUILD_DOCS=OFF \
        -DJANSSON_COVERAGE=OFF \
        -DJANSSON_EXAMPLES=OFF \
        -DJANSSON_WITHOUT_TESTS=ON
}
