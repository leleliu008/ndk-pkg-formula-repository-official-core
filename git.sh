summary="Distributed revision control system"
homepage="https://git-scm.com"
url="https://www.kernel.org/pub/software/scm/git/git-2.27.0.tar.xz"
sha256="73ca9774d7fa226e1d87c1909401623f96dca6a044e583b9a762e84d7d1a73f9"
dependencies="libiconv expat curl openssl pcre2"

prepare() {
    {
        if [ "$XTRACE" = 'true' ] ; then
            sed_in_place '1a set -x' configure
        fi
    } &&
    sed_in_place 's/test "$cross_compiling" = yes/false/g' configure &&
    sed_in_place 's/ac_fn_c_try_run "$LINENO"/true/g' configure &&
    sed_in_place '/uname_S :=/c uname_S := Linux' config.mak.uname &&
    sed_in_place '/NEEDS_LIBRT = YesPlease/d' config.mak.uname
}

build() {
    configure \
        --with-iconv="$libiconv_INSTALL_DIR" \
        --with-expat="$expat_INSTALL_DIR" \
        --with-curl="$curl_INSTALL_DIR" \
        --with-openssl="$openssl_INSTALL_DIR" \
        --with-libpcre2="$pcre2_INSTALL_DIR" \
        --with-zlib \
        --disable-pthreads
}
