package set summary "International domain name library (IDNA2008, Punycode and TR46)"
package set webpage "https://www.gnu.org/software/libidn/#libidn2"
package set src.url "https://ftp.gnu.org/gnu/libidn/libidn2-2.3.2.tar.gz"
package set src.sum "76940cd4e778e8093579a9d195b25fff5e936e9dc6242068528b437a76764f91"
package set license "GPL-2.0-or-later LGPL-3.0-or-later"
package set dep.pkg "libunistring"
package set bsystem "configure"

build() {
    export CFLAGS="$CFLAGS -liconv"
    configure \
        --with-libunistring-prefix="$libunistring_INSTALL_DIR" \
        --disable-valgrind-tests \
        --disable-code-coverage \
        --enable-doc \
        --enable-gcc-warnings
}
