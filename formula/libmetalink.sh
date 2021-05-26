package set summary "C library to parse Metalink XML files"
package set webpage "https://launchpad.net/libmetalink"
package set src.url "https://launchpad.net/libmetalink/trunk/libmetalink-0.1.3/+download/libmetalink-0.1.3.tar.xz"
package set src.sum "86312620c5b64c694b91f9cc355eabbd358fa92195b3e99517504076bf9fe33a"
package set bsystem "configure"
package set dep.pkg "expat"
package set ldflags "-lexpat"

build() {
    configure \
        --with-libexpat=yes \
        --with-libxml2=no \
        --with-xml-prefix="$expat_INSTALL_DIR" \
        --disable-xmltest
}
