pkg_set summary "Z Shell"
pkg_set webpage "https://www.zsh.org"
pkg_set git.url "https://github.com/zsh-users/zsh.git"
pkg_set src.url "https://downloads.sourceforge.net/project/zsh/zsh/5.8.1/zsh-5.8.1.tar.xz"
pkg_set src.sha "b6973520bace600b4779200269b1e5d79e5f505ac4952058c11ad5bbf0dd9919"
pkg_set license "|LICENCE|https://raw.githubusercontent.com/zsh-users/zsh/master/LICENCE"
pkg_set dep.pkg "ncurses pcre"
pkg_set bsystem "configure"

build() {
    install -d "$TARGET_BUILD_DIR/Doc" &&
    cp "$PACKAGE_BSCRIPT_DIR"/Doc/*.1 "$TARGET_BUILD_DIR/Doc" &&
    configure \
        --enable-multibyte \
        --enable-cap \
        --enable-pcre \
        --enable-unicode9 \
        --enable-zsh-secure-free
}
