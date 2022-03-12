package set summary "Modern Linker"
package set git.url "https://github.com/rui314/mold.git"
package set src.url "https://github.com/rui314/mold/archive/v1.1.1.tar.gz"
package set src.sum "47c5ddfe60beffc01da954191c819d78924e4d1eb96aeebfa24e1862cb3a33f9"
package set license "AGPL-3.0-only"
package set dep.pkg "tbb xxhash zlib openssl"
package set bsystem "make"

build() {
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" install \
        PREFIX=$ABI_INSTALL_DIR \
        STRIP=true \
        LTO=1 \
        OS=Linux \
        USE_MIMALLOC=0 \
        SYSTEM_TBB=1 \
        SYSTEM_XXHASH=1 \
        CFLAGS="'$CFLAGS $CPPFLAGS'" \
        CXXFLAGS="'$CXXFLAGS $CPPFLAGS'"
}
