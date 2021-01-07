summary "Text-based UI library"
webpage "https://www.gnu.org/software/ncurses"
src_url "https://ftp.gnu.org/gnu/ncurses/ncurses-6.2.tar.gz"
src_sum "30306e0c76e0f9f1f0de987cf1c82a5c21e1ce6568b9227f7da5b71cbea86c9d"
require "sed grep make"

need_native_build() {
    # https://github.com/termux/termux-packages/issues/4487
    if command -v tic > /dev/null ; then
        echo "$(tic -V)"
        [ '6.2.20200212' != "$(list 6.2.20200212 $(tic -V | cut -d' ' -f2) | sort -V | head -n 1)" ]
    else
        echo 'tic command not found.'
        true
    fi
}

prepare() {
    if need_native_build ; then
        echo "Native building..." &&
        cd $BUILD_DIR &&
        $SOURCE_DIR/configure --prefix=$PWD/output &&
        $MAKE clean &&
        $MAKE &&
        $MAKE install &&
        export PATH=$PWD/output/bin:$PATH
    fi
}

build() {
    configure \
        --with-pkg-config-libdir="$ABI_PKGCONF_DIR" \
        --with-shared \
        --without-ada \
        --without-tests \
        --without-debug \
        --without-valgrind \
        --enable-const \
        --enable-widec \
        --enable-termcap \
        --enable-warnings \
        --enable-pc-files \
        --enable-ext-mouse \
        --enable-ext-colors \
        --disable-stripping \
        --disable-assertions \
        --disable-gnat-projects \
        --disable-echo &&
    install_links
}

install_links() {
    cd "$ABI_INCLUDE_DIR" || return 1
    for item in curses.h ncurses.h form.h menu.h panel.h term.h termcap.h
    do
        ln -s "ncursesw/$item" "$item" || return 1
    done
}
