summary="Distributed revision control system"
homepage="https://git-scm.com"
url="https://www.kernel.org/pub/software/scm/git/git-2.27.0.tar.xz"
sha256="73ca9774d7fa226e1d87c1909401623f96dca6a044e583b9a762e84d7d1a73f9"
dependencies="libiconv expat curl openssl pcre2"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-iconv="$libiconv_DIR_INSTALL_PREFIX" \
        --with-expat \
        --with-curl \
        --with-openssl \
        --with-libpcre2 \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
