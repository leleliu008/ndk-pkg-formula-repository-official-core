pkg_set summary "C library to parse Metalink XML files"
pkg_set webpage "https://launchpad.net/libmetalink"
pkg_set src.url "https://launchpad.net/libmetalink/trunk/libmetalink-0.1.3/+download/libmetalink-0.1.3.tar.xz"
pkg_set src.sha "86312620c5b64c694b91f9cc355eabbd358fa92195b3e99517504076bf9fe33a"
pkg_set license "MIT"
pkg_set bsystem "configure"
pkg_set dep.pkg "expat"
pkg_set ldflags "-lexpat"

build() {
    configure \
        --with-libexpat=yes \
        --with-libxml2=no \
        --with-xml-prefix="$expat_INSTALL_DIR" \
        --disable-xmltest
}
