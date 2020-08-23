summary="Debug versions of system memory management routines"
homepage="https://dmalloc.com"
url="https://dmalloc.com/releases/dmalloc-5.5.2.tgz"
sha256="d3be5c6eec24950cb3bd67dbfbcdf036f1278fae5fd78655ef8cdf9e911e428a"

prepare() {
    sed_in_place 's/ac_cv_page_size=0/ac_cv_page_size=1/' configure
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-shlib \
        --enable-threads \
        --enable-cxx \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
