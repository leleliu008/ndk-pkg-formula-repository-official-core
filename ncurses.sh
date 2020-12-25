summary "Text-based UI library"
webpage "https://www.gnu.org/software/ncurses"
src_url "https://ftp.gnu.org/gnu/ncurses/ncurses-6.2.tar.gz"
src_sum "30306e0c76e0f9f1f0de987cf1c82a5c21e1ce6568b9227f7da5b71cbea86c9d"

build() {
    configure \
        --without-pkg-config \
        --without-tests \
        --without-ada \
        --without-debug \
        --without-valgrind \
        --with-shared \
        --enable-warnings \
        --enable-pc-files \
        --with-pkg-config-libdir="$ABI_PKGCONF_DIR" \
        --enable-stripping \
        --disable-assertions \
        --disable-gnat-projects \
        --disable-echo &&
    install_links
}

install_links() {
    cd "$ABI_INCLUDE_DIR" || return 1
    for item in curses.h ncurses.h form.h menu.h panel.h term.h termcap.h
    do
        ln -s "ncurses/$item" "$item" || return 1
    done
}
