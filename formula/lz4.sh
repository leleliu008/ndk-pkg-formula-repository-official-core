package set summary "Extremely Fast Compression algorithm"
package set webpage "https://lz4.org"
package set src.git "https://github.com/lz4/lz4.git"
package set src.url "https://github.com/lz4/lz4/archive/v1.9.2.tar.gz"
package set src.sum "658ba6191fa44c92280d4aa2c271b0f4fbc0e34d249578dd05e50e76d0e5efcc"
package set license "BSD-2-Clause"
package set bsystem "make"

build() {
    makew -C "$SOURCE_DIR" clean   TARGET_OS=Linux &&
    makew -C "$SOURCE_DIR" install TARGET_OS=Linux \
        PREFIX="$ABI_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="\"$CFLAGS\"" \
        LDFLAGS="\"$LDFLAGS\"" \
        AR="$AR" \
        BUILD_STATIC=yes \
        BUILD_SHARED=yes
}
