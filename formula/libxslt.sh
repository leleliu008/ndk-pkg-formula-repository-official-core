package set summary "C XSLT library for GNOME"
package set webpage "http://xmlsoft.org/XSLT"
package set src.url "http://xmlsoft.org/sources/libxslt-1.1.34.tar.gz"
package set src.sum "98b1bd46d6792925ad2dfe9a87452ea2adebf69dcb9919ffd55bf926a7f93f7f"
package set license "X11"
package set bsystem "configure"
package set dep.pkg "libxml2"

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
