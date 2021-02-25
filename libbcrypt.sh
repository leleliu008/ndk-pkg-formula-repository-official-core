summary "a simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm implementation as provided by Solar Designer at http://www.openwall.com/crypt"
webpage "https://github.com/leleliu008/libbcrypt"
src_url "https://github.com/leleliu008/libbcrypt.git"
require "make"

build() {
    make $MAKEFLAGS -C "$SOURCE_DIR" clean &&
    make $MAKEFLAGS -C "$SOURCE_DIR" install \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        PREFIX="$ABI_INSTALL_DIR" \
        TARGET_ARCH="$BUILD_FOR_ARCH"
}
