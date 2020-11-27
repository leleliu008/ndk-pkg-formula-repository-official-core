summary  "a quick-n-dirty BSD licensed clone of backtrace facility found in the GNU libc"
homepage "https://github.com/resslinux/libexecinfo"
url      "https://github.com/leleliu008/libexecinfo.git"

build() {
    $MAKE -C "$SOURCE_DIR" clean &&
    $MAKE -C "$SOURCE_DIR" install \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        PREFIX="$ABI_INSTALL_DIR"
}
