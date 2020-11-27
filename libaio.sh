summary  "Linux-native asynchronous I/O access library"
homepage "https://pagure.io/libaio"
url      "https://pagure.io/libaio/archive/libaio-0.3.111/libaio-libaio-0.3.111.tar.gz"
sha256   "e6bc17cba66e59085e670fea238ad095766b412561f90b354eb4012d851730ba"
license  "LGPL-2.1-or-later"

prepare() {
    # on macOS, some fs is non-case-sensitive. In this case, make install will always say make: 'install' is up to date.
    mv INSTALL INSTALL.txt &&
    sed_in_place 's|install -D|install|g' src/Makefile
}

build() {
    $MAKE -C "$SOURCE_DIR" clean &&
    $MAKE -C "$SOURCE_DIR" default CFLAGS="$CFLAGS $CPPFLAGS $LDFLAGS -I$SOURCE_DIR/src" AR="$AR" RANLIB="$RANLIB" &&
    install -d "$ABI_INCLUDE_DIR" &&
    install -d "$ABI_LIBRARY_DIR" &&
    $MAKE -C "$SOURCE_DIR" install prefix="$ABI_INSTALL_DIR"
}
