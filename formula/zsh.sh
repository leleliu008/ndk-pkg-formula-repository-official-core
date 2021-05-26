package set summary "Z Shell"
package set webpage "https://www.zsh.org"
package set src.url "https://downloads.sourceforge.net/project/zsh/zsh/5.8/zsh-5.8.tar.xz"
package set src.sum "dcc4b54cc5565670a65581760261c163d720991f0d06486da61f8d839b52de27"
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
