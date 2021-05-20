package set summary "Object-file caching compiler wrapper"
package set webpage "https://ccache.dev"
package set src.url "https://github.com/ccache/ccache/releases/download/v4.0/ccache-4.0.tar.xz"
package set src.sum "ac1b82fe0a5e39905945c4d68fcb24bd0f32344869faf647a1b8d31e544dcb88"
package set license "GPL-3.0-or-later"
package set bsystem "cmake"
package set dep.pkg "zstd blake3"

prepare() {
    sed_in_place 's|ifdef HAVE_AVX2|if 0|g'    src/hashutil.cpp &&
    sed_in_place 's|third_party/blake3/||'     src/Hash.hpp &&
    sed_in_place '/add_subdirectory(blake3)/d' src/third_party/CMakeLists.txt
}

build() {
    cmakew \
        -DENABLE_COVERAGE=OFF \
        -DENABLE_CPPCHECK=OFF \
        -DENABLE_IPO=OFF \
        -DENABLE_TRACING=OFF \
        -DWARNINGS_AS_ERRORS=OFF \
        -DZSTD_FROM_INTERNET=OFF \
        -DZSTD_INCLUDE_DIR="$zstd_INCLUDE_DIR" \
        -DZSTD_LIBRARY="$zstd_LIBRARY_DIR/libzstd.so"
}
