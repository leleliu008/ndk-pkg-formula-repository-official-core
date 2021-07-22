package set summary "Small memory footprint, flexible web-server"
package set webpage "https://www.lighttpd.net/"
package set src.url "https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.59.tar.xz"
package set src.sum "fb953db273daef08edb6e202556cae8a3d07eed6081c96bd9903db957d1084d5"
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
