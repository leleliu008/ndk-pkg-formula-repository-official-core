package set summary "Multi-format archive and compression library"
package set webpage "https://www.libarchive.org"
package set git.url "https://github.com/libarchive/libarchive.git"
package set src.url "https://www.libarchive.org/downloads/libarchive-3.6.1.tar.xz"
package set src.sum "5a411aceb978f43e626f0c2d1812ddd8807b645ed892453acabd532376c148e6"
package set license "BSD-2-Clause"
package set dep.pkg "libiconv expat openssl bzip2 lz4 lzo zstd"
package set bsystem "configure"

build() {
    export ac_cv_sizeof_wchar_t=$($CC -E -dM - < /dev/null | sed -n '/__SIZEOF_WCHAR_T__/p' | cut -d ' ' -f3)
    export CPPFLAGS="$CPPFLAGS -I$PACKAGE_BSCRIPT_DIR/contrib/android/include"
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
