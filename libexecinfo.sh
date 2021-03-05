summary "a quick-n-dirty BSD licensed clone of backtrace facility found in the GNU libc"
webpage "https://github.com/resslinux/libexecinfo"
src_url "https://github.com/leleliu008/libexecinfo.git"
bsystem "make"

build() {
    make -C "$SOURCE_DIR" clean &&
    make -C "$SOURCE_DIR" install \
        CC="$CC" \
        CFLAGS="\"$CFLAGS\"" \
        CPPFLAGS="\"$CPPFLAGS\"" \
        LDFLAGS="\"$LDFLAGS\"" \
        PREFIX="$ABI_INSTALL_DIR"
}
