pkg_set summary "Small memory footprint, flexible web-server"
pkg_set webpage "https://www.lighttpd.net/"
pkg_set src.url "https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.64.tar.xz"
pkg_set src.sha "e1489d9fa7496fbf2e071c338b593b2300d38c23f1e5967e52c9ef482e1b0e26"
pkg_set license "BSD-3-Clause"
pkg_set dep.cmd "pkg-config"
pkg_set dep.pkg "openssl zlib bzip2 pcre libglob"
pkg_set ldflags "-lglob"
pkg_set bsystem "autogen"

build() {
    configure \
        --with-openssl \
        --with-pcre="$pcre_INSTALL_DIR" \
        --with-zlib \
        --with-bzip2
}
