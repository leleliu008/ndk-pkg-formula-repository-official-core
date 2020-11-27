summary  "Library to create an ISO-9660 filesystem with extensions like RockRidge or Joliet"
homepage "https://www.libburnia-project.org"
url      "http://files.libburnia-project.org/releases/libisofs-1.5.2.tar.gz"
sha256   "ef5a139600b3e688357450e52381e40ec26a447d35eb8d21524598c7b1675500"
dependencies "libiconv"

prepare() {
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
    if [ "$MIN_SDK_API_LEVEL" -lt 26 ] ; then
        sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' libisofs/util.c || return 1
    fi
    sed_in_place 's/-lpthread//g' configure
}

build() {
    configure \
        --enable-xattr \
        --enable-zlib \
        --disable-libacl \
        --disable-verbose-debug
}
