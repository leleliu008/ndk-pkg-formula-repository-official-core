pkg_set summary "Small memory footprint, flexible web-server"
pkg_set webpage "https://www.lighttpd.net/"
pkg_set src.url "https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.65.tar.xz"
pkg_set src.sha "bf0fa68a629fbc404023a912b377e70049331d6797bcbb4b3e8df4c3b42328be"
pkg_set license "BSD-3-Clause"
pkg_set dep.cmd "pkg-config"
pkg_set dep.pkg "openssl zlib bzip2 pcre libglob"
pkg_set bsystem "autogen"

build() {
    configure \
        --with-openssl \
        --with-pcre="$pcre_INSTALL_DIR" \
        --with-zlib \
        --with-bzip2
}
