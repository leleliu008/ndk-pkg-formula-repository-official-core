package set summary "Modern Linker"
package set git.url "https://github.com/rui314/mold.git"
package set src.url "https://github.com/rui314/mold/archive/v1.0.1.tar.gz"
package set src.sum "b0d54602d1229c26583ee8a0132e53463c4d755f9dbc456475f388fd8a1aa3e4"
package set license "AGPL-3.0-only"
package set dep.pkg "tbb xxhash zlib openssl"
package set bsystem "make"

build() {
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" install \
        PREFIX=$ABI_INSTALL_DIR \
        LTO=1
        OS=Linux \
        SYSTEM_TBB=0 \
        SYSTEM_XXHASH=0 \
        SYSTEM_MIMALLOC=0
}
