summary "Library to create an ISO-9660 filesystem with extensions like RockRidge or Joliet"
webpage "https://www.libburnia-project.org"
src_url "http://files.libburnia-project.org/releases/libisofs-1.5.2.tar.gz"
src_sum "ef5a139600b3e688357450e52381e40ec26a447d35eb8d21524598c7b1675500"
bsystem "configure"
depends "libiconv"

prepare() {
    sed_in_place 's/-lpthread//g' configure
}

build() {
    configure \
        --enable-xattr \
        --enable-zlib \
        --disable-libacl \
        --disable-verbose-debug
}
