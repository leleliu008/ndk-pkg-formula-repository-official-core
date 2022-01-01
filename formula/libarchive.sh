package set summary "Multi-format archive and compression library"
package set webpage "https://www.libarchive.org"
package set git.url "https://github.com/libarchive/libarchive.git"
package set src.url "https://www.libarchive.org/downloads/libarchive-3.5.2.tar.xz"
package set src.sum "f0b19ff39c3c9a5898a219497ababbadab99d8178acc980155c7e1271089b5a0"
package set license "BSD-2-Clause"
package set dep.pkg "libiconv expat openssl bzip2 lz4 lzo zstd"
package set bsystem "configure"

build() {
    export ac_cv_sizeof_wchar_t=$($CC -E -dM - < /dev/null | sed -n '/__SIZEOF_WCHAR_T__/p' | cut -d ' ' -f3)
    export CPPFLAGS="$CPPFLAGS -I$SOURCE_DIR/contrib/android/include"
    configure \
        --enable-xattr \
        --enable-acl \
        --enable-bsdtar=static \
        --enable-bsdcat=static \
        --enable-bsdcpio=static \
        --without-xml2 \
        --with-expat \
        --with-openssl \
        --without-mbedtls \
        --without-nettle \
        --without-cng \
        --with-zlib \
        --with-lzma \
        --with-bz2lib \
        --with-lz4 \
        --with-lzo2 \
        --with-zstd \
        --without-libb2 \
        --with-iconv
}
