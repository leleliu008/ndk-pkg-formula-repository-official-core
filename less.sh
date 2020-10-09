summary="Pager program similar to more"
homepage="http://www.greenwoodsoftware.com/less/index.html"
url="http://www.greenwoodsoftware.com/less/less-551.tar.gz"
sha256="ff165275859381a63f19135a8f1f6c5a194d53ec3187f94121ecd8ef0795fe3d"
license="GPL-3.0-or-later"
dependencies="ncurses pcre2"

# char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
prepare() {
    if [ "$TARGET_API" -lt 26 ] ; then
        sed_in_place 's/nl_langinfo(CODESET)/\"UTF-8\"/' charset.c
    fi
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-regex='pcre2' \
        --with-secure \
        --enable-largefile \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
