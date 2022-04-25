pkg_set summary "C XSLT library for GNOME"
pkg_set webpage "http://xmlsoft.org/XSLT"
pkg_set git.url "https://github.com/GNOME/libxslt.git"
pkg_set src.url "https://download.gnome.org/sources/libxslt/1.1/libxslt-1.1.35.tar.xz"
pkg_set src.sha "8247f33e9a872c6ac859aa45018bc4c4d00b97e2feac9eebc10c93ce1f34dd79"
pkg_set license "X11"
pkg_set dep.pkg "libxml2"
pkg_set bsystem "configure"

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
