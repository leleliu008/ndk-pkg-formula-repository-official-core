summary="Bourne-Again SHell, a UNIX command interpreter"
homepage="https://www.gnu.org/software/bash"
url="https://mirrors.tuna.tsinghua.edu.cn/gnu/bash/bash-5.0.tar.gz"
sha256="b4a80f2ac66170b2913efbfb9f2594f1f76c7b1afd11f799e22035d63077fb4d"
version="5.0.18"
head="https://git.savannah.gnu.org/git/bash.git"
license="GPL-3.0-or-later"
dependencies="ncurses"

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
