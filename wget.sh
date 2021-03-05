summary "Internet file retriever"
webpage "https://www.gnu.org/software/wget"
src_git "https://git.savannah.gnu.org/git/wget.git"
src_url "https://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz"
src_sum "59ba0bdade9ad135eda581ae4e59a7a9f25e3a4bde6a5419632b31906120e26e"
license "GPL-3.0-or-later"
bsystem "configure"
require "pkg-config"
depends "openssl libidn2 util-linux"

build() {
    configure \
        --disable-pcre \
        --disable-pcre2 \
        --enable-threads=posix \
        --with-ssl=openssl \
        --with-libidn="$libidn2_INSTALL_DIR"
}
