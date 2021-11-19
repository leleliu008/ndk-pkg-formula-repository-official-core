package set summary "Small memory footprint, flexible web-server"
package set webpage "https://www.lighttpd.net/"
package set src.url "https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.61.tar.xz"
package set src.sum "43f0d63d04a1b7c5b8aab07e0612e44ccad0afc0614bab784c5b019872363432"
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
