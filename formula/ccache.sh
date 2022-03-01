package set summary "Object-file caching compiler wrapper"
package set webpage "https://ccache.dev"
package set src.url "https://github.com/ccache/ccache/releases/download/v4.6/ccache-4.6.tar.xz"
package set src.sum "3d2bb860f4359169e640f60cf7cc11da5fab5fb9aed55230d78141e49c3945e9"
package set license "GPL-3.0-or-later"
package set dep.pkg "hiredis zstd blake3"
package set bsystem "cmake"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
package set sdk.api 24

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
        -DZSTD_FROM_INTERNET=OFF
}
