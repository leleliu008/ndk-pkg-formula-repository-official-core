summary="Bourne-Again SHell, a UNIX command interpreter"
homepage="https://www.gnu.org/software/bash"
url="https://mirrors.tuna.tsinghua.edu.cn/gnu/bash/bash-5.0.tar.gz"
sha256="b4a80f2ac66170b2913efbfb9f2594f1f76c7b1afd11f799e22035d63077fb4d"
version="5.0.18"
head="https://git.savannah.gnu.org/git/bash.git"
license="GPL-3.0-or-later"
dependencies="ncurses"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-curses \
        --without-bash-malloc \
        --disable-profiling \
        --disable-rpath \
        --disable-nls \
        --enable-readline \
        --enable-select \
        --enable-history \
        --enable-largefile \
        --enable-static-link \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        CC_FOR_BUILD=/usr/bin/cc &&
    make clean &&
    make install
}
