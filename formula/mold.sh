pkg_set summary "Modern Linker"
pkg_set git.url "https://github.com/rui314/mold.git"
pkg_set src.url "https://github.com/rui314/mold/archive/v1.3.0.tar.gz"
pkg_set src.sha "02132ae717d7f22f8bc7e5c22642ad41541ec4c535fa85f095c60ecc81465a3d"
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
