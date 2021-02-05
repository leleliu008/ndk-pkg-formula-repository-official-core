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

        # /usr/bin/cc -DHAVE_CONFIG_H -I../ncurses -I. -I/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/tmp.8sFnLL5q/ncurses -I../include -I/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/tmp.8sFnLL5q/ncurses/../include -D_DARWIN_C_SOURCE -DNDEBUG -Qunused-arguments -no-cpp-precomp -c /var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/tmp.8sFnLL5q/ncurses/base/lib_getch.c -o ../objects/lib_getch.o
        # /var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/tmp.8sFnLL5q/ncurses/base/lib_getch.c:312:12: error: implicit declaration of function 'read' is invalid in C99 [-Werror,-Wimplicit-function-declaration]
        # n = (int) read(sp->_ifd, &c2, (size_t) 1);
        #           ^
        # /var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/tmp.8sFnLL5q/ncurses/base/lib_getch.c:312:12: note: did you mean 'fread'?
        # /Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/include/stdio.h:158:9: note: 'fread' declared here
        # size_t   fread(void * __restrict __ptr, size_t __size, size_t __nitems, FILE * __restrict __stream);
        #          ^
        # 1 error generated.
        # gmake[1]: *** [Makefile:1004: ../objects/lib_getch.o] Error 1
        # gmake[1]: Leaving directory '/private/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/tmp.8sFnLL5q/1612536982/native/ncurses'
        # gmake: *** [Makefile:120: all] Error 2

        sed_in_place '1i #include<unistd.h>' ncurses/base/lib_getch.c

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
    
    cd "$ABI_LIBRARY_DIR" || return 1
    for item in libncurses libpanel libmenu libform
    do
        ln -s "${item}w.a"  "${item}.a"  || return 1
        ln -s "${item}w.so" "${item}.so" || return 1
    done
    ln -s libncurses++w.a libncurses++.a || return 1
}
