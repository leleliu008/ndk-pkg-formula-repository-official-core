summary "Bourne-Again SHell, a UNIX command interpreter"
webpage "https://www.gnu.org/software/bash"
src_git "https://git.savannah.gnu.org/git/bash.git"
src_url "https://mirrors.tuna.tsinghua.edu.cn/gnu/bash/bash-5.0.tar.gz"
src_sum "b4a80f2ac66170b2913efbfb9f2594f1f76c7b1afd11f799e22035d63077fb4d"
version "5.0.18"
license "GPL-3.0-or-later"
depends "readline ncurses"

prepare() {
    sed_in_place 's|TERMCAP_LIB=-lcurses|TERMCAP_LIB=-lncursesw|g' configure
}

build() {
    configure \
        --with-curses \
        --without-bash-malloc \
        --disable-profiling \
        --enable-readline \
        --enable-select \
        --enable-history \
        --enable-static-link
}
