package set summary "Extract, view, and test RAR archives"
package set webpage "https://www.rarlab.com"
package set src.url "https://www.rarlab.com/rar/unrarsrc-6.0.2.tar.gz"
package set src.sum "81bf188333f89c976780a477af27f651f54aa7da9312303d8d1a804696d3edd3"
package set bsystem "make"
package set binsrcd 'yes'
package set build_in_parallel no

# int lutimes(const char* __path, const struct timeval __times[2]) __INTRODUCED_IN(26);
package set sdk.api 26

prepare() {
    sed_in_place 's|getpass("")|""|g' consio.cpp &&
    sed_in_place 's|install -D|install|g' makefile
}

build() {
    makew -f makefile unrar CXX="$CXX" AR="$AR" STRIP="$STRIP" CXXFLAGS="'$CXXFLAGS'" CPPFLAGS="'$CPPFLAGS'" LDFLAGS="'$LDFLAGS'" &&
    install -d "$TARGET_BINARY__DIR" &&
    makew -f makefile install-unrar DESTDIR="$TARGET_INSTALL_DIR" &&
    makew -f makefile lib   CXX="$CXX" AR="$AR" STRIP="$STRIP" CXXFLAGS="'$CXXFLAGS'" CPPFLAGS="'$CPPFLAGS'" LDFLAGS="'$LDFLAGS'" &&
    install -d "$TARGET_LIBRARY_DIR"
    makew -f makefile install-lib   DESTDIR="$TARGET_INSTALL_DIR"
}
