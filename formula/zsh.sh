pkg_set summary "Z Shell"
pkg_set webpage "https://www.zsh.org"
pkg_set git.url "https://github.com/zsh-users/zsh.git"
pkg_set src.url "https://downloads.sourceforge.net/project/zsh/zsh/5.9/zsh-5.9.tar.xz"
pkg_set src.sha "9b8d1ecedd5b5e81fbf1918e876752a7dd948e05c1a0dba10ab863842d45acd5"
pkg_set license "|LICENCE|https://raw.githubusercontent.com/zsh-users/zsh/master/LICENCE"
pkg_set dep.pkg "ncurses pcre"
pkg_set bsystem "configure"

build() {
    install -d "$TARGET_BUILDIN_DIR/Doc" &&
    cp "$PACKAGE_BSCRIPT_DIR"/Doc/*.1 "$TARGET_BUILDIN_DIR/Doc" &&
    configure \
        --enable-multibyte \
        --enable-cap \
        --enable-pcre \
        --enable-unicode9 \
        --enable-zsh-secure-free
}
