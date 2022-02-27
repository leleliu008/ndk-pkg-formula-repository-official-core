package set summary "Z Shell"
package set webpage "https://www.zsh.org"
package set git.url "https://github.com/zsh-users/zsh.git"
package set src.url "https://downloads.sourceforge.net/project/zsh/zsh/5.8.1/zsh-5.8.1.tar.xz"
package set src.sum "b6973520bace600b4779200269b1e5d79e5f505ac4952058c11ad5bbf0dd9919"
package set dep.pkg "ncurses pcre"
package set bsystem "configure"

build() {
    install -d "$BUILD_DIR/Doc" &&
    cp "$SOURCE_DIR"/Doc/*.1 "$BUILD_DIR/Doc" &&
    configure \
        --enable-multibyte \
        --enable-cap \
        --enable-pcre \
        --enable-unicode9 \
        --enable-zsh-secure-free
}
