summary "C XSLT library for GNOME"
webpage "http://xmlsoft.org/XSLT"
src_url "http://xmlsoft.org/sources/libxslt-1.1.34.tar.gz"
src_sum "98b1bd46d6792925ad2dfe9a87452ea2adebf69dcb9919ffd55bf926a7f93f7f"
license "X11"
bsystem "configure"
depends "libxml2"

prepare() {
    sed_in_place 's|$(XSLTPROC) --nonet $(srcdir)/xsltproc.xml|touch xsltproc.1|' doc/Makefile.am &&
    sed_in_place 's|$(XSLTPROC) --nonet $(srcdir)/xsltproc.xml|touch xsltproc.1|' doc/Makefile.in
}

build() {
    configure \
        --without-debug \
        --without-mem-debug \
        --without-debugger \
        --without-crypto \
        --without-python \
        --with-profiler \
        --with-plugins
}
