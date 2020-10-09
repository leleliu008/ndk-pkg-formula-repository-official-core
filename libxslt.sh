summary="C XSLT library for GNOME"
homepage="http://xmlsoft.org/XSLT"
url="http://xmlsoft.org/sources/libxslt-1.1.34.tar.gz"
sha256="98b1bd46d6792925ad2dfe9a87452ea2adebf69dcb9919ffd55bf926a7f93f7f"
dependencies="libxml2"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --without-python \
        --without-debug \
        --without-mem-debug \
        --without-debugger \
        --without-crypto \
        --with-profiler \
        --with-plugins \
        --enable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    sed_in_place 's|$(XSLTPROC) --nonet $(srcdir)/xsltproc.xml|touch xsltproc.1|' doc/Makefile &&
    make clean &&
    make install
}
