pkg_set summary "Modern Linker"
pkg_set git.url "https://github.com/rui314/mold.git"
pkg_set src.url "https://github.com/rui314/mold/archive/v1.2.1.tar.gz"
pkg_set src.sha "41868663ff18afee3fa35e5e3fdf3d9575eb2e4ff49967b8f42f479c61c1ec34"
pkg_set license "AGPL-3.0-only"
pkg_set dep.pkg "tbb xxhash zlib openssl"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

build() {
    gmakew clean &&
    gmakew install \
        PREFIX=$TARGET_INSTALL_DIR \
        STRIP=true \
        LTO=1 \
        OS=Linux \
        USE_MIMALLOC=0 \
        SYSTEM_TBB=1 \
        SYSTEM_XXHASH=1 \
        CFLAGS="'$CFLAGS $CPPFLAGS'" \
        CXXFLAGS="'$CXXFLAGS $CPPFLAGS'"
}
