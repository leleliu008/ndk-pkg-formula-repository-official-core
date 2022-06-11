pkg_set summary "Library to create an ISO-9660 filesystem with extensions like RockRidge or Joliet"
pkg_set git.url "https://dev.lovelyhq.com/libburnia/libisofs.git"
pkg_set src.url "http://files.libburnia-project.org/releases/libisofs-1.5.2.tar.gz"
pkg_set src.sha "ef5a139600b3e688357450e52381e40ec26a447d35eb8d21524598c7b1675500"
pkg_set license "LGPL-2.0-or-later|COPYING|https://dev.lovelyhq.com/libburnia/libisofs/raw/branch/master/COPYING"
pkg_set dep.pkg "libiconv liblanginfo"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-xattr \
        --enable-zlib \
        --disable-libacl \
        --disable-verbose-debug
}
