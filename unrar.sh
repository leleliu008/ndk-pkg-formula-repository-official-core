summary  "Extract, view, and test RAR archives"
homepage "https://www.rarlab.com/"
url      "https://www.rarlab.com/rar/unrarsrc-6.0.2.tar.gz"
sha256   "81bf188333f89c976780a477af27f651f54aa7da9312303d8d1a804696d3edd3"

# int lutimes(const char* __path, const struct timeval __times[2]) __INTRODUCED_IN(26);

prepare() {
    sed_in_place 's|getpass("")|""|g' consio.cpp &&
    sed_in_place 's|install -D|install|g' makefile
}

build() {
    cd "$SOURCE_DIR"  &&
    $MAKE -f makefile unrar CXX="$CXX" AR="$AR" STRIP="$STRIP" CXXFLAGS="$CXXFLAGS" CPPFLAGS="$CPPFLAGS" LDFLAGS="$LDFLAGS" &&
    install -d "$ABI_BINARY_DIR" &&
    $MAKE -f makefile install-unrar DESTDIR="$ABI_INSTALL_DIR" &&
    $MAKE -f makefile lib   CXX="$CXX" AR="$AR" STRIP="$STRIP" CXXFLAGS="$CXXFLAGS" CPPFLAGS="$CPPFLAGS" LDFLAGS="$LDFLAGS" &&
    install -d "$ABI_LIBRARY_DIR"
    $MAKE -f makefile install-lib   DESTDIR="$ABI_INSTALL_DIR"
}
