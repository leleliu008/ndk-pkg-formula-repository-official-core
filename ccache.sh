summary  "Object-file caching compiler wrapper"
homepage "https://ccache.dev"
url      "https://github.com/ccache/ccache/releases/download/v4.0/ccache-4.0.tar.xz"
sha256   "ac1b82fe0a5e39905945c4d68fcb24bd0f32344869faf647a1b8d31e544dcb88"
license  "GPL-3.0-or-later"
dependencies "zstd"

build() {
    cmake \
        -DENABLE_COVERAGE=OFF \
        -DENABLE_CPPCHECK=OFF \
        -DENABLE_IPO=ON \
        -DENABLE_TRACING=OFF \
        -DWARNINGS_AS_ERRORS=OFF \
        -DZSTD_FROM_INTERNET=OFF \
        -DZSTD_INCLUDE_DIR="$zstd_INCLUDE_DIR" \
        -DZSTD_LIBRARY="$zstd_LIBRARY_DIR"
}
