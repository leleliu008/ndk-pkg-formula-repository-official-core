pkg_set summary "Internet file retriever"
pkg_set webpage "https://www.gnu.org/software/wget"
pkg_set git.url "https://git.savannah.gnu.org/git/wget.git"
pkg_set src.url "https://ftp.gnu.org/gnu/wget/wget-1.21.3.tar.gz"
pkg_set src.sha "5726bb8bc5ca0f6dc7110f6416e4bb7019e2d2ff5bf93d1ca2ffcc6656f220e5"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "openssl libidn2 util-linux"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-pcre \
        --disable-pcre2 \
        --enable-threads=posix \
        --with-ssl=openssl \
        --with-libidn="$libidn2_INSTALL_DIR"
}
