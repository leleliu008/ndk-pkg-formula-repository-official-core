package set summary "Internet file retriever"
package set webpage "https://www.gnu.org/software/wget"
package set src.git "https://git.savannah.gnu.org/git/wget.git"
package set src.url "https://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz"
package set src.sum "59ba0bdade9ad135eda581ae4e59a7a9f25e3a4bde6a5419632b31906120e26e"
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
