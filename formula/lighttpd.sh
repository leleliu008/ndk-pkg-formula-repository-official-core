package set summary "Small memory footprint, flexible web-server"
package set webpage "https://www.lighttpd.net/"
package set src.url "https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.63.tar.xz"
package set src.sum "2aef7f0102ebf54a1241a1c3ea8976892f8684bfb21697c9fffb8de0e2d6eab9"
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
