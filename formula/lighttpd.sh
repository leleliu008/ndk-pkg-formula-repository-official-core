package set summary "Small memory footprint, flexible web-server"
package set webpage "https://www.lighttpd.net/"
package set src.url "https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.64.tar.xz"
package set src.sum "e1489d9fa7496fbf2e071c338b593b2300d38c23f1e5967e52c9ef482e1b0e26"
package set license "BSD-3-Clause"
package set dep.cmd "pkg-config"
package set dep.pkg "openssl zlib bzip2 pcre libglob"
package set ldflags "-lglob"
package set bsystem "autogen"

build() {
    configure \
        --with-openssl \
        --with-pcre="$pcre_INSTALL_DIR" \
        --with-zlib \
        --with-bzip2
}
