package set summary "Internet file retriever"
package set webpage "https://www.gnu.org/software/wget"
package set git.url "https://git.savannah.gnu.org/git/wget.git"
package set src.url "https://ftp.gnu.org/gnu/wget/wget-1.21.2.tar.gz"
package set src.sum "e6d4c76be82c676dd7e8c61a29b2ac8510ae108a810b5d1d18fc9a1d2c9a2497"
package set license "GPL-3.0-or-later"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "openssl libidn2 util-linux"

build() {
    configure \
        --disable-pcre \
        --disable-pcre2 \
        --enable-threads=posix \
        --with-ssl=openssl \
        --with-libidn="$libidn2_INSTALL_DIR"
}
