package set summary "Internet file retriever"
package set webpage "https://www.gnu.org/software/wget"
package set git.url "https://git.savannah.gnu.org/git/wget.git"
package set src.url "https://ftp.gnu.org/gnu/wget/wget-1.21.3.tar.gz"
package set src.sum "5726bb8bc5ca0f6dc7110f6416e4bb7019e2d2ff5bf93d1ca2ffcc6656f220e5"
package set license "GPL-3.0-or-later"
package set dep.pkg "openssl libidn2 util-linux"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build() {
    configure \
        --disable-pcre \
        --disable-pcre2 \
        --enable-threads=posix \
        --with-ssl=openssl \
        --with-libidn="$libidn2_INSTALL_DIR"
}
