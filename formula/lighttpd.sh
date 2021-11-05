package set summary "Small memory footprint, flexible web-server"
package set webpage "https://www.lighttpd.net/"
package set src.url "https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.60.tar.xz"
package set src.sum "4bb1dd859e541a3131e5be101557d2e1195b4129d3a849a3a6fbd21fe1c946f0"
package set license "BSD-3-Clause"
package set dep.cmd "pkg-config libtool"
package set dep.pkg "openssl zlib bzip2 pcre libglob"
package set ldflags "-lglob"
package set bsystem "autogen"

build() {
    configure \
        --with-openssl \
        --with-pcre \
        --with-zlib \
        --with-bzip2
}
